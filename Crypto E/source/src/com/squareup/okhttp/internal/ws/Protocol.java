// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.ws;


final class Protocol
{

    private Protocol()
    {
        throw new AssertionError("No instances.");
    }

    static void a(byte abyte0[], long l, byte abyte1[], long l1)
    {
        int i = abyte1.length;
        for (int j = 0; (long)j < l;)
        {
            int k = (int)(l1 % (long)i);
            abyte0[j] = (byte)(abyte0[j] ^ abyte1[k]);
            j++;
            l1++;
        }

    }
}
