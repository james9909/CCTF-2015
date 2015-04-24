// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;

public class Matrix
{

    public static final Matrix j = new Matrix(1.0D, 0.0D, 0.0D, 1.0D, 0.0D, 0.0D, 1.0D, 0.0D, 0.0D);
    public static final Matrix k = new Matrix(0.0D, 1.0D, -1D, 0.0D, 0.0D, 0.0D, 1.0D, 0.0D, 0.0D);
    public static final Matrix l = new Matrix(-1D, 0.0D, 0.0D, -1D, 0.0D, 0.0D, 1.0D, 0.0D, 0.0D);
    public static final Matrix m = new Matrix(0.0D, -1D, 1.0D, 0.0D, 0.0D, 0.0D, 1.0D, 0.0D, 0.0D);
    double a;
    double b;
    double c;
    double d;
    double e;
    double f;
    double g;
    double h;
    double i;

    public Matrix(double d1, double d2, double d3, double d4, double d5, double d6, double d7, 
            double d8, double d9)
    {
        a = d5;
        b = d6;
        c = d7;
        d = d1;
        e = d2;
        f = d3;
        g = d4;
        h = d8;
        i = d9;
    }

    public static Matrix a(double d1, double d2, double d3, double d4, 
            double d5, double d6, double d7, double d8, double d9)
    {
        return new Matrix(d1, d2, d4, d5, d3, d6, d9, d7, d8);
    }

    public static Matrix a(ByteBuffer bytebuffer)
    {
        return a(IsoTypeReader.i(bytebuffer), IsoTypeReader.i(bytebuffer), IsoTypeReader.j(bytebuffer), IsoTypeReader.i(bytebuffer), IsoTypeReader.i(bytebuffer), IsoTypeReader.j(bytebuffer), IsoTypeReader.i(bytebuffer), IsoTypeReader.i(bytebuffer), IsoTypeReader.j(bytebuffer));
    }

    public void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.a(bytebuffer, d);
        IsoTypeWriter.a(bytebuffer, e);
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.a(bytebuffer, f);
        IsoTypeWriter.a(bytebuffer, g);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.a(bytebuffer, h);
        IsoTypeWriter.a(bytebuffer, i);
        IsoTypeWriter.b(bytebuffer, c);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            Matrix matrix = (Matrix)obj;
            if (Double.compare(matrix.d, d) != 0)
            {
                return false;
            }
            if (Double.compare(matrix.e, e) != 0)
            {
                return false;
            }
            if (Double.compare(matrix.f, f) != 0)
            {
                return false;
            }
            if (Double.compare(matrix.g, g) != 0)
            {
                return false;
            }
            if (Double.compare(matrix.h, h) != 0)
            {
                return false;
            }
            if (Double.compare(matrix.i, i) != 0)
            {
                return false;
            }
            if (Double.compare(matrix.a, a) != 0)
            {
                return false;
            }
            if (Double.compare(matrix.b, b) != 0)
            {
                return false;
            }
            if (Double.compare(matrix.c, c) != 0)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        long l1 = Double.doubleToLongBits(a);
        int i1 = (int)(l1 ^ l1 >>> 32);
        long l2 = Double.doubleToLongBits(b);
        int j1 = i1 * 31 + (int)(l2 ^ l2 >>> 32);
        long l3 = Double.doubleToLongBits(c);
        int k1 = j1 * 31 + (int)(l3 ^ l3 >>> 32);
        long l4 = Double.doubleToLongBits(d);
        int i2 = k1 * 31 + (int)(l4 ^ l4 >>> 32);
        long l5 = Double.doubleToLongBits(e);
        int j2 = i2 * 31 + (int)(l5 ^ l5 >>> 32);
        long l6 = Double.doubleToLongBits(f);
        int k2 = j2 * 31 + (int)(l6 ^ l6 >>> 32);
        long l7 = Double.doubleToLongBits(g);
        int i3 = k2 * 31 + (int)(l7 ^ l7 >>> 32);
        long l8 = Double.doubleToLongBits(h);
        int j3 = i3 * 31 + (int)(l8 ^ l8 >>> 32);
        long l9 = Double.doubleToLongBits(i);
        return j3 * 31 + (int)(l9 ^ l9 >>> 32);
    }

    public String toString()
    {
        if (equals(j))
        {
            return "Rotate 0\260";
        }
        if (equals(k))
        {
            return "Rotate 90\260";
        }
        if (equals(l))
        {
            return "Rotate 180\260";
        }
        if (equals(m))
        {
            return "Rotate 270\260";
        } else
        {
            return (new StringBuilder("Matrix{u=")).append(a).append(", v=").append(b).append(", w=").append(c).append(", a=").append(d).append(", b=").append(e).append(", c=").append(f).append(", d=").append(g).append(", tx=").append(h).append(", ty=").append(i).append('}').toString();
        }
    }

}
