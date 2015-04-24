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

// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            SampleFlags

public class TrackExtendsBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    private static final org.aspectj.lang.JoinPoint.StaticPart u;
    private static final org.aspectj.lang.JoinPoint.StaticPart v;
    private static final org.aspectj.lang.JoinPoint.StaticPart w;
    private static final org.aspectj.lang.JoinPoint.StaticPart x;
    private long a;
    private long b;
    private long c;
    private long d;
    private SampleFlags e;

    public TrackExtendsBox()
    {
        super("trex");
    }

    private static void b()
    {
        Factory factory = new Factory("TrackExtendsBox.java", com/coremedia/iso/boxes/fragment/TrackExtendsBox);
        n = factory.a("method-execution", factory.a("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 72);
        o = factory.a("method-execution", factory.a("1", "getDefaultSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 76);
        x = factory.a("method-execution", factory.a("1", "setDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "defaultSampleFlags", "", "void"), 112);
        p = factory.a("method-execution", factory.a("1", "getDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 80);
        q = factory.a("method-execution", factory.a("1", "getDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 84);
        r = factory.a("method-execution", factory.a("1", "getDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 88);
        s = factory.a("method-execution", factory.a("1", "getDefaultSampleFlagsStr", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "java.lang.String"), 92);
        t = factory.a("method-execution", factory.a("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "trackId", "", "void"), 96);
        u = factory.a("method-execution", factory.a("1", "setDefaultSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleDescriptionIndex", "", "void"), 100);
        v = factory.a("method-execution", factory.a("1", "setDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleDuration", "", "void"), 104);
        w = factory.a("method-execution", factory.a("1", "setDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleSize", "", "void"), 108);
    }

    public long a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return d;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.b(bytebuffer);
        b = IsoTypeReader.b(bytebuffer);
        c = IsoTypeReader.b(bytebuffer);
        d = IsoTypeReader.b(bytebuffer);
        e = new SampleFlags(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        IsoTypeWriter.b(bytebuffer, d);
        e.a(bytebuffer);
    }

    protected long d()
    {
        return 24L;
    }

    static 
    {
        b();
    }
}
