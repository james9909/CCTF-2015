// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


public class rh
{

    private final byte aGb[] = new byte[256];
    private int aGc;
    private int aGd;

    public rh(byte abyte0[])
    {
        for (int i = 0; i < 256; i++)
        {
            aGb[i] = (byte)i;
        }

        int j = 0;
        for (int k = 0; k < 256; k++)
        {
            j = 0xff & j + aGb[k] + abyte0[k % abyte0.length];
            byte byte0 = aGb[k];
            aGb[k] = aGb[j];
            aGb[j] = byte0;
        }

        aGc = 0;
        aGd = 0;
    }

    public void o(byte abyte0[])
    {
        int i = aGc;
        int j = aGd;
        for (int k = 0; k < abyte0.length; k++)
        {
            i = 0xff & i + 1;
            j = 0xff & j + aGb[i];
            byte byte0 = aGb[i];
            aGb[i] = aGb[j];
            aGb[j] = byte0;
            abyte0[k] = (byte)(abyte0[k] ^ aGb[0xff & aGb[i] + aGb[j]]);
        }

        aGc = i;
        aGd = j;
    }
}
