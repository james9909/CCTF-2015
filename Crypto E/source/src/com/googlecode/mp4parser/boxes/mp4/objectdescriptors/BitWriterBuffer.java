// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.nio.ByteBuffer;

public class BitWriterBuffer
{

    static final boolean c;
    int a;
    int b;
    private ByteBuffer d;

    public BitWriterBuffer(ByteBuffer bytebuffer)
    {
        b = 0;
        d = bytebuffer;
        a = bytebuffer.position();
    }

    public void a(int i, int j)
    {
        if (!c && i > -1 + (1 << j))
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(-1 + (1 << j));
            throw new AssertionError(String.format("Trying to write a value bigger (%s) than the number bits (%s) allows. Please mask the value before writing it and make your code is really working as intended.", aobj));
        }
        int k = 8 - b % 8;
        ByteBuffer bytebuffer;
        int i1;
        int j1;
        if (j <= k)
        {
            int k1 = d.get(a + b / 8);
            if (k1 < 0)
            {
                k1 += 256;
            }
            int l1 = k1 + (i << k - j);
            ByteBuffer bytebuffer1 = d;
            int i2 = a + b / 8;
            if (l1 > 127)
            {
                l1 -= 256;
            }
            bytebuffer1.put(i2, (byte)l1);
            b = j + b;
        } else
        {
            int l = j - k;
            a(i >> l, k);
            a(i & -1 + (1 << l), l);
        }
        bytebuffer = d;
        i1 = a + b / 8;
        if (b % 8 > 0)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        bytebuffer.position(j1 + i1);
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
    }
}
