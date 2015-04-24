// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


public class md
{

    public static int a(byte abyte0[], int i, int j, int k)
    {
        int l;
        int i1;
        int j1;
        int k1;
        l = i + (j & -4);
        i1 = k;
        for (; i < l; i += 4)
        {
            int i3 = 0xcc9e2d51 * (0xff & abyte0[i] | (0xff & abyte0[i + 1]) << 8 | (0xff & abyte0[i + 2]) << 16 | abyte0[i + 3] << 24);
            int j3 = i1 ^ 0x1b873593 * (i3 << 15 | i3 >>> 17);
            i1 = 0xe6546b64 + 5 * (j3 << 13 | j3 >>> 19);
        }

        j1 = j & 3;
        k1 = 0;
        j1;
        JVM INSTR tableswitch 1 3: default 144
    //                   1 222
    //                   2 204
    //                   3 189;
           goto _L1 _L2 _L3 _L4
_L1:
        int i2 = i1;
_L6:
        int j2 = i2 ^ j;
        int k2 = 0x85ebca6b * (j2 ^ j2 >>> 16);
        int l2 = 0xc2b2ae35 * (k2 ^ k2 >>> 13);
        return l2 ^ l2 >>> 16;
_L4:
        k1 = (0xff & abyte0[l + 2]) << 16;
_L3:
        k1 |= (0xff & abyte0[l + 1]) << 8;
_L2:
        int l1 = 0xcc9e2d51 * (k1 | 0xff & abyte0[l]);
        i2 = i1 ^ 0x1b873593 * (l1 << 15 | l1 >>> 17);
        if (true) goto _L6; else goto _L5
_L5:
    }
}
