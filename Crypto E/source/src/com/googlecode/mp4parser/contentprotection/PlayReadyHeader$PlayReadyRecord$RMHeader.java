// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.contentprotection;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.contentprotection:
//            PlayReadyHeader

public static class Y extends Y
{

    String b;

    public ByteBuffer a()
    {
        byte abyte0[];
        try
        {
            abyte0 = b.getBytes("UTF-16LE");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException(unsupportedencodingexception);
        }
        return ByteBuffer.wrap(abyte0);
    }

    public void a(ByteBuffer bytebuffer)
    {
        try
        {
            byte abyte0[] = new byte[bytebuffer.slice().limit()];
            bytebuffer.get(abyte0);
            b = new String(abyte0, "UTF-16LE");
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException(unsupportedencodingexception);
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("RMHeader");
        stringbuilder.append("{length=").append(a().limit());
        stringbuilder.append(", header='").append(b).append('\'');
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    public Y()
    {
        super(1);
    }
}
