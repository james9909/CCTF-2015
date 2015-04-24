// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.contentprotection;

import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.contentprotection:
//            PlayReadyHeader

public static class  extends 
{

    ByteBuffer b;

    public ByteBuffer a()
    {
        return b;
    }

    public void a(ByteBuffer bytebuffer)
    {
        b = bytebuffer.duplicate();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("EmeddedLicenseStore");
        stringbuilder.append("{length=").append(a().limit());
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    public ()
    {
        super(3);
    }
}
