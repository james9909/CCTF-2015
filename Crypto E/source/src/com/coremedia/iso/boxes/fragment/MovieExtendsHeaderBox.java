// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class MovieExtendsHeaderBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private long a;

    public MovieExtendsHeaderBox()
    {
        super("mehd");
    }

    private static void a()
    {
        Factory factory = new Factory("MovieExtendsHeaderBox.java", com/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox);
        b = factory.a("method-execution", factory.a("1", "getFragmentDuration", "com.coremedia.iso.boxes.fragment.MovieExtendsHeaderBox", "", "", "", "long"), 65);
        c = factory.a("method-execution", factory.a("1", "setFragmentDuration", "com.coremedia.iso.boxes.fragment.MovieExtendsHeaderBox", "long", "fragmentDuration", "", "void"), 69);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        long l;
        if (q() == 1)
        {
            l = IsoTypeReader.h(bytebuffer);
        } else
        {
            l = IsoTypeReader.b(bytebuffer);
        }
        a = l;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        if (q() == 1)
        {
            IsoTypeWriter.a(bytebuffer, a);
            return;
        } else
        {
            IsoTypeWriter.b(bytebuffer, a);
            return;
        }
    }

    protected long d()
    {
        int i;
        if (q() == 1)
        {
            i = 12;
        } else
        {
            i = 8;
        }
        return (long)i;
    }

    static 
    {
        a();
    }
}
