// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.threegpp26245;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.threegpp26245:
//            FontTableBox

public static class b
{

    int a;
    String b;

    public int a()
    {
        return 3 + Utf8.b(b);
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.d(bytebuffer);
        b = IsoTypeReader.a(bytebuffer, IsoTypeReader.f(bytebuffer));
    }

    public void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.d(bytebuffer, b.length());
        bytebuffer.put(Utf8.a(b));
    }

    public String toString()
    {
        return (new StringBuilder("FontRecord{fontId=")).append(a).append(", fontname='").append(b).append('\'').append('}').toString();
    }

    public ()
    {
    }

    public (int i, String s)
    {
        a = i;
        b = s;
    }
}
