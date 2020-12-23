package br.com.hslife.educalife.util;

import java.util.Random;
import java.util.UUID;

public class Util {
    
    public static String getRandomString() {
        return UUID.randomUUID().toString().replace("-", " ");
    }
    
    public static int getRandomInt(int limit) {
        return new Random().nextInt(limit);
    }
}
