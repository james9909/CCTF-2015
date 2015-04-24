// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;

public class UUIDConverter
{

    public UUIDConverter()
    {
    }

    public static UUID a(byte abyte0[])
    {
        ByteBuffer bytebuffer = ByteBuffer.wrap(abyte0);
        bytebuffer.order(ByteOrder.BIG_ENDIAN);
        return new UUID(bytebuffer.getLong(), bytebuffer.getLong());
    }

    public static byte[] a(UUID uuid)
    {
        int i;
        long l;
        long l1;
        byte abyte0[];
        int j;
        i = 8;
        l = uuid.getMostSignificantBits();
        l1 = uuid.getLeastSignificantBits();
        abyte0 = new byte[16];
        j = 0;
_L3:
        if (j < i) goto _L2; else goto _L1
_L1:
        if (i >= 16)
        {
            return abyte0;
        }
        break MISSING_BLOCK_LABEL_61;
_L2:
        abyte0[j] = (byte)(int)(l >>> 8 * (7 - j));
        j++;
          goto _L3
        abyte0[i] = (byte)(int)(l1 >>> 8 * (7 - i));
        i++;
          goto _L1
    }
}
