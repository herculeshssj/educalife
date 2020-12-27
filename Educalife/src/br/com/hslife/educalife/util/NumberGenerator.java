package br.com.hslife.educalife.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Random generator of numbers.
 * 
 * Obtido em http://wormholebr.blogspot.com/2010/01/gerador-cpf-cnpj-cartao-de-credito.html no dia 15/11/2011
 */
public class NumberGenerator {

	static int[] generateArray(Random random, int length, int quantityOfZeros) {
		if (quantityOfZeros > length)
			throw new IllegalArgumentException("quantityOfZeros must be less or equal than length.");
		if (length <= 0)
			throw new IllegalArgumentException("length must be bigger than zero.");
		int[] digits = new int[length];
		int i;
		for (i = 0; i < quantityOfZeros; i++)
			digits[i] = random.nextInt(10);
		if (i < length)
			digits[i++] = 1 + random.nextInt(9); // != 0
		for (; i < length; i++)
			digits[i] = random.nextInt(10);
		return digits;
	}

	/**
	 * Return a random array[0..length-1] of digits [0-9].
	 *
	 * @param seed
	 *            seed to generate always the same array.
	 * @param quantityOfZeros
	 *            Quantity of zeros that can be the beginning of number.
	 *            quantityOfZeros must be <= length
	 * @param length
	 *            the length of the array returned.
	 * @return a random array of digits [0-9]
	 */
	public static int[] generateArray(long seed, int length, int quantityOfZeros) {
		return generateArray(new Random(seed), length, quantityOfZeros);
	}

	/**
	 * Return a random array[0..length-1] of digits [0-9].
	 *
	 * @param quantityOfZeros
	 *            Quantity of zeros that can be the beginning of number.
	 *            quantityOfZeros must be <= length
	 * @param length
	 *            the length of the array returned.
	 * @return a random array of digits [0-9]
	 */
	public static int[] generateRandomArray(int length, int quantityOfZeros) {
		return generateArray(new Random(), length, quantityOfZeros);
	}

	/**
	 * if the random number is bigger than Integer.MAX_VALUE, so
	 * Integer.MAX_VALUE is returned.
	 *
	 * @param maxLength
	 *            maybe the first digit is 0, so the number has maxLength-1
	 *            length. If the second digit is 0 too, so the number has
	 *            maxLength-2 length, and so on.
	 * @return return a random positive number with length <= maxLength
	 */
	public static int generateRandom(int maxLength) {
		long l = NumberGenerator.arrayToLong(generateRandomArray(maxLength, maxLength));
		if (l > Integer.MAX_VALUE)
			return Integer.MAX_VALUE;
		return (int) l;
	}

	/**
	 * if the random number is bigger than Integer.MAX_VALUE, so
	 * Integer.MAX_VALUE is returned.
	 *
	 * @param length
	 *            The number returned always has length digits.
	 * @return a random number with length digits.
	 */
	public static int generateRandomForce(int length) {
		long l = NumberGenerator.arrayToLong(generateRandomArray(length, 0));
		if (l > Integer.MAX_VALUE)
			return Integer.MAX_VALUE;
		return (int) l;
    }
    
     /**
	 * eg: number = 1234, returns { 1, 2, 3, 4 }
	 * 
	 * Obtido em http://wormholebr.blogspot.com/2010/01/gerador-cpf-cnpj-cartao-de-credito.html no dia 15/11/2011
	 *
	 * @param number
	 *            a long, see Long.MAX_VALUE and Long.MIN_VALUE
	 * @return one array of digits
	 */
	public static int[] longToArray(final long number) {
		long n = number;
		List<Long> list = new ArrayList<Long>(10);
		do {
			list.add(n % 10);
			n /= 10;
		} while (n != 0);
		int length = list.size();
		int[] digits = new int[length];
		for (int i = length - 1, j = 0; i >= 0; i--, j++)
			digits[j] = list.get(i).intValue();
		return digits;
	}

	/**
	 * eg: number = { 1, 2, 3, 4 }, returns a long = 1234 if the number
	 * correspondent of digits is bigger than Long.MAX_VALUE, so Long.MAX_VALUE
	 * is returned.
	 * 
	 * Obtido em http://wormholebr.blogspot.com/2010/01/gerador-cpf-cnpj-cartao-de-credito.html no dia 15/11/2011
	 *
	 * @param number
	 *            an array of digits [0-9]
	 * @return a long correspondent to the digits
	 */
	public static long arrayToLong(final int[] digits) {
		long result = 0;
		long pot = 1;
		for (int i = digits.length - 1; i >= 0; i--) {
			long partial = digits[i] * pot;
			if (Long.MAX_VALUE - result - partial > 0) {
				result += partial;
			} else
				return Long.MAX_VALUE;
			pot *= 10;
		}
		return result;
	}
}
