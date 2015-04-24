// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io;

import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;

public class EndianUtils
{

    public EndianUtils()
    {
    }

    private static int read(InputStream inputstream)
    {
        int i = inputstream.read();
        if (-1 == i)
        {
            throw new EOFException("Unexpected EOF reached");
        } else
        {
            return i;
        }
    }

    public static double readSwappedDouble(InputStream inputstream)
    {
        return Double.longBitsToDouble(readSwappedLong(inputstream));
    }

    public static double readSwappedDouble(byte abyte0[], int i)
    {
        return Double.longBitsToDouble(readSwappedLong(abyte0, i));
    }

    public static float readSwappedFloat(InputStream inputstream)
    {
        return Float.intBitsToFloat(readSwappedInteger(inputstream));
    }

    public static float readSwappedFloat(byte abyte0[], int i)
    {
        return Float.intBitsToFloat(readSwappedInteger(abyte0, i));
    }

    public static int readSwappedInteger(InputStream inputstream)
    {
        int i = read(inputstream);
        int j = read(inputstream);
        int k = read(inputstream);
        int l = read(inputstream);
        return ((i & 0xff) << 0) + ((j & 0xff) << 8) + ((k & 0xff) << 16) + ((l & 0xff) << 24);
    }

    public static int readSwappedInteger(byte abyte0[], int i)
    {
        return ((0xff & abyte0[i + 0]) << 0) + ((0xff & abyte0[i + 1]) << 8) + ((0xff & abyte0[i + 2]) << 16) + ((0xff & abyte0[i + 3]) << 24);
    }

    public static long readSwappedLong(InputStream inputstream)
    {
        byte abyte0[] = new byte[8];
        for (int i = 0; i < 8; i++)
        {
            abyte0[i] = (byte)read(inputstream);
        }

        return readSwappedLong(abyte0, 0);
    }

    public static long readSwappedLong(byte abyte0[], int i)
    {
        long l = ((0xff & abyte0[i + 0]) << 0) + ((0xff & abyte0[i + 1]) << 8) + ((0xff & abyte0[i + 2]) << 16) + ((0xff & abyte0[i + 3]) << 24);
        return ((long)(((0xff & abyte0[i + 4]) << 0) + ((0xff & abyte0[i + 5]) << 8) + ((0xff & abyte0[i + 6]) << 16) + ((0xff & abyte0[i + 7]) << 24)) << 32) + (l & 0xffffffffL);
    }

    public static short readSwappedShort(InputStream inputstream)
    {
        return (short)(((0xff & read(inputstream)) << 0) + ((0xff & read(inputstream)) << 8));
    }

    public static short readSwappedShort(byte abyte0[], int i)
    {
        return (short)(((0xff & abyte0[i + 0]) << 0) + ((0xff & abyte0[i + 1]) << 8));
    }

    public static long readSwappedUnsignedInteger(InputStream inputstream)
    {
        int i = read(inputstream);
        int j = read(inputstream);
        int k = read(inputstream);
        int l = read(inputstream);
        long l1 = ((i & 0xff) << 0) + ((j & 0xff) << 8) + ((k & 0xff) << 16);
        return ((long)(l & 0xff) << 24) + (l1 & 0xffffffffL);
    }

    public static long readSwappedUnsignedInteger(byte abyte0[], int i)
    {
        long l = ((0xff & abyte0[i + 0]) << 0) + ((0xff & abyte0[i + 1]) << 8) + ((0xff & abyte0[i + 2]) << 16);
        return ((long)(0xff & abyte0[i + 3]) << 24) + (l & 0xffffffffL);
    }

    public static int readSwappedUnsignedShort(InputStream inputstream)
    {
        int i = read(inputstream);
        int j = read(inputstream);
        return ((i & 0xff) << 0) + ((j & 0xff) << 8);
    }

    public static int readSwappedUnsignedShort(byte abyte0[], int i)
    {
        return ((0xff & abyte0[i + 0]) << 0) + ((0xff & abyte0[i + 1]) << 8);
    }

    public static double swapDouble(double d)
    {
        return Double.longBitsToDouble(swapLong(Double.doubleToLongBits(d)));
    }

    public static float swapFloat(float f)
    {
        return Float.intBitsToFloat(swapInteger(Float.floatToIntBits(f)));
    }

    public static int swapInteger(int i)
    {
        return ((0xff & i >> 0) << 24) + ((0xff & i >> 8) << 16) + ((0xff & i >> 16) << 8) + ((0xff & i >> 24) << 0);
    }

    public static long swapLong(long l)
    {
        return ((255L & l >> 0) << 56) + ((255L & l >> 8) << 48) + ((255L & l >> 16) << 40) + ((255L & l >> 24) << 32) + ((255L & l >> 32) << 24) + ((255L & l >> 40) << 16) + ((255L & l >> 48) << 8) + ((255L & l >> 56) << 0);
    }

    public static short swapShort(short word0)
    {
        return (short)(((0xff & word0 >> 0) << 8) + ((0xff & word0 >> 8) << 0));
    }

    public static void writeSwappedDouble(OutputStream outputstream, double d)
    {
        writeSwappedLong(outputstream, Double.doubleToLongBits(d));
    }

    public static void writeSwappedDouble(byte abyte0[], int i, double d)
    {
        writeSwappedLong(abyte0, i, Double.doubleToLongBits(d));
    }

    public static void writeSwappedFloat(OutputStream outputstream, float f)
    {
        writeSwappedInteger(outputstream, Float.floatToIntBits(f));
    }

    public static void writeSwappedFloat(byte abyte0[], int i, float f)
    {
        writeSwappedInteger(abyte0, i, Float.floatToIntBits(f));
    }

    public static void writeSwappedInteger(OutputStream outputstream, int i)
    {
        outputstream.write((byte)(0xff & i >> 0));
        outputstream.write((byte)(0xff & i >> 8));
        outputstream.write((byte)(0xff & i >> 16));
        outputstream.write((byte)(0xff & i >> 24));
    }

    public static void writeSwappedInteger(byte abyte0[], int i, int j)
    {
        abyte0[i + 0] = (byte)(0xff & j >> 0);
        abyte0[i + 1] = (byte)(0xff & j >> 8);
        abyte0[i + 2] = (byte)(0xff & j >> 16);
        abyte0[i + 3] = (byte)(0xff & j >> 24);
    }

    public static void writeSwappedLong(OutputStream outputstream, long l)
    {
        outputstream.write((byte)(int)(255L & l >> 0));
        outputstream.write((byte)(int)(255L & l >> 8));
        outputstream.write((byte)(int)(255L & l >> 16));
        outputstream.write((byte)(int)(255L & l >> 24));
        outputstream.write((byte)(int)(255L & l >> 32));
        outputstream.write((byte)(int)(255L & l >> 40));
        outputstream.write((byte)(int)(255L & l >> 48));
        outputstream.write((byte)(int)(255L & l >> 56));
    }

    public static void writeSwappedLong(byte abyte0[], int i, long l)
    {
        abyte0[i + 0] = (byte)(int)(255L & l >> 0);
        abyte0[i + 1] = (byte)(int)(255L & l >> 8);
        abyte0[i + 2] = (byte)(int)(255L & l >> 16);
        abyte0[i + 3] = (byte)(int)(255L & l >> 24);
        abyte0[i + 4] = (byte)(int)(255L & l >> 32);
        abyte0[i + 5] = (byte)(int)(255L & l >> 40);
        abyte0[i + 6] = (byte)(int)(255L & l >> 48);
        abyte0[i + 7] = (byte)(int)(255L & l >> 56);
    }

    public static void writeSwappedShort(OutputStream outputstream, short word0)
    {
        outputstream.write((byte)(0xff & word0 >> 0));
        outputstream.write((byte)(0xff & word0 >> 8));
    }

    public static void writeSwappedShort(byte abyte0[], int i, short word0)
    {
        abyte0[i + 0] = (byte)(0xff & word0 >> 0);
        abyte0[i + 1] = (byte)(0xff & word0 >> 8);
    }
}
