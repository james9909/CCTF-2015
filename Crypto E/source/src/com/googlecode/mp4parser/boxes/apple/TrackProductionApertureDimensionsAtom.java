// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class TrackProductionApertureDimensionsAtom extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    double a;
    double b;

    public TrackProductionApertureDimensionsAtom()
    {
        super("prof");
    }

    private static void a()
    {
        Factory factory = new Factory("TrackProductionApertureDimensionsAtom.java", com/googlecode/mp4parser/boxes/apple/TrackProductionApertureDimensionsAtom);
        c = factory.a("method-execution", factory.a("1", "getWidth", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", "", "", "", "double"), 44);
        d = factory.a("method-execution", factory.a("1", "setWidth", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", "double", "width", "", "void"), 48);
        e = factory.a("method-execution", factory.a("1", "getHeight", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", "", "", "", "double"), 52);
        n = factory.a("method-execution", factory.a("1", "setHeight", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", "double", "height", "", "void"), 56);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.i(bytebuffer);
        b = IsoTypeReader.i(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.a(bytebuffer, a);
        IsoTypeWriter.a(bytebuffer, b);
    }

    protected long d()
    {
        return 12L;
    }

    static 
    {
        a();
    }
}
