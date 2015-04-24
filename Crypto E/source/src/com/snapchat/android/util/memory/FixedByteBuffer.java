// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.memory;

import java.io.InputStream;
import java.nio.charset.Charset;

// Referenced classes of package com.snapchat.android.util.memory:
//            Buffer

public class FixedByteBuffer
    implements Buffer
{

    private final byte a[];
    private int b;

    public FixedByteBuffer(String s)
    {
        a = s.getBytes(Charset.defaultCharset());
        b = a.length;
    }

    public int a()
    {
        return b;
    }

    public int a(InputStream inputstream)
    {
        throw new UnsupportedOperationException("FixedByteBuffer.read is not yet supported");
    }

    public byte[] b()
    {
        return a;
    }
}
