// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class TrackFragmentBaseMediaDecodeTimeBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private long a;

    public TrackFragmentBaseMediaDecodeTimeBox()
    {
        super("tfdt");
    }

    private static void a()
    {
        Factory factory = new Factory("TrackFragmentBaseMediaDecodeTimeBox.java", com/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox);
        b = factory.a("method-execution", factory.a("1", "getBaseMediaDecodeTime", "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox", "", "", "", "long"), 65);
        c = factory.a("method-execution", factory.a("1", "setBaseMediaDecodeTime", "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox", "long", "baseMediaDecodeTime", "", "void"), 69);
        d = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox", "", "", "", "java.lang.String"), 74);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        if (q() == 1)
        {
            a = IsoTypeReader.h(bytebuffer);
            return;
        } else
        {
            a = IsoTypeReader.b(bytebuffer);
            return;
        }
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
        if (q() == 0)
        {
            i = 8;
        } else
        {
            i = 12;
        }
        return (long)i;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("TrackFragmentBaseMediaDecodeTimeBox{baseMediaDecodeTime=")).append(a).append('}').toString();
    }

    static 
    {
        a();
    }
}
