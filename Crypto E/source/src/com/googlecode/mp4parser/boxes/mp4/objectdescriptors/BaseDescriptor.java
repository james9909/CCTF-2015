// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.IsoTypeReader;
import java.nio.ByteBuffer;

public abstract class BaseDescriptor
{

    static final boolean W;
    int T;
    int U;
    int V;

    public BaseDescriptor()
    {
    }

    public int a()
    {
        return 1 + U + V;
    }

    public final void a(int i, ByteBuffer bytebuffer)
    {
        T = i;
        int j = IsoTypeReader.f(bytebuffer);
        U = j & 0x7f;
        int k = 1;
        do
        {
            if (j >>> 7 != 1)
            {
                V = k;
                ByteBuffer bytebuffer1 = bytebuffer.slice();
                bytebuffer1.limit(U);
                a(bytebuffer1);
                if (!W && bytebuffer1.remaining() != 0)
                {
                    throw new AssertionError((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(" has not been fully parsed").toString());
                } else
                {
                    bytebuffer.position(bytebuffer.position() + U);
                    return;
                }
            }
            j = IsoTypeReader.f(bytebuffer);
            k++;
            U = U << 7 | j & 0x7f;
        } while (true);
    }

    public abstract void a(ByteBuffer bytebuffer);

    public int b()
    {
        return U;
    }

    public int c()
    {
        return V;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("BaseDescriptor");
        stringbuilder.append("{tag=").append(T);
        stringbuilder.append(", sizeOfInstance=").append(U);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        W = flag;
    }
}
