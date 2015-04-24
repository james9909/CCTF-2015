// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;


public class Hex
{

    private static final char a[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'A', 'B', 'C', 'D', 'E', 'F'
    };

    public Hex()
    {
    }

    public static String a(byte abyte0[])
    {
        return a(abyte0, 0);
    }

    public static String a(byte abyte0[], int i)
    {
        int j = 0;
        int k = abyte0.length;
        int l = k << 1;
        int i1;
        char ac[];
        int j1;
        if (i > 0)
        {
            i1 = k / i;
        } else
        {
            i1 = 0;
        }
        ac = new char[i1 + l];
        j1 = 0;
        do
        {
            if (j1 >= k)
            {
                return new String(ac);
            }
            int k1;
            int l1;
            if (i > 0 && j1 % i == 0 && j > 0)
            {
                k1 = j + 1;
                ac[j] = '-';
            } else
            {
                k1 = j;
            }
            l1 = k1 + 1;
            ac[k1] = a[(0xf0 & abyte0[j1]) >>> 4];
            j = l1 + 1;
            ac[l1] = a[0xf & abyte0[j1]];
            j1++;
        } while (true);
    }

}
