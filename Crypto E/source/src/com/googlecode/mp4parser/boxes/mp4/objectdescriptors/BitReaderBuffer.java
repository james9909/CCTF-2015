// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.nio.ByteBuffer;

public class BitReaderBuffer
{

    int a;
    int b;
    private ByteBuffer c;

    public BitReaderBuffer(ByteBuffer bytebuffer)
    {
        c = bytebuffer;
        a = bytebuffer.position();
    }

    public int a()
    {
        return 8 * c.limit() - b;
    }

    public int a(int i)
    {
        int j = c.get(a + b / 8);
        if (j < 0)
        {
            j += 256;
        }
        int k = 8 - b % 8;
        int i1;
        if (i <= k)
        {
            i1 = (0xff & j << b % 8) >> b % 8 + (k - i);
            b = i + b;
        } else
        {
            int l = i - k;
            i1 = (a(k) << l) + a(l);
        }
        c.position(a + (int)Math.ceil((double)b / 8D));
        return i1;
    }
}
