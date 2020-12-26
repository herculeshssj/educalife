package br.com.hslife.educalife.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.UUID;

public class Util {
    
    public static String getRandomString() {
        return UUID.randomUUID().toString().replace("-", " ");
    }
    
    public static int getRandomInt(int limit) {
        return new Random().nextInt(limit);
    }

    /*
	 * Retorna o texto criptografado em SHA-256
	 */
	private static String SHA256(String texto) {
        String sen = "";
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("SHA-256");
            BigInteger hash = new BigInteger(1, md.digest(texto.getBytes()));
            sen = hash.toString(16);
        } catch (NullPointerException e) {
        	e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        
        return sen;
    }
}
