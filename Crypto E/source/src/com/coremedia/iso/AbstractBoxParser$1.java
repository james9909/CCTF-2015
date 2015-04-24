// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso:
//            AbstractBoxParser

class a extends ThreadLocal
{

    final AbstractBoxParser a;

    protected ByteBuffer a()
    {
        return ByteBuffer.allocate(32);
    }

    protected Object initialValue()
    {
        return a();
    }

    (AbstractBoxParser abstractboxparser)
    {
        a = abstractboxparser;
        super();
    }
}
