// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class CompositionShiftLeastGreatestAtom extends AbstractFullBox
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
    int a;
    int b;
    int c;
    int d;
    int e;

    public CompositionShiftLeastGreatestAtom()
    {
        super("cslg");
    }

    private static void a()
    {
        Factory factory = new Factory("CompositionShiftLeastGreatestAtom.java", com/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom);
        n = factory.a("method-execution", factory.a("1", "getCompositionOffsetToDisplayOffsetShift", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 66);
        o = factory.a("method-execution", factory.a("1", "setCompositionOffsetToDisplayOffsetShift", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "compositionOffsetToDisplayOffsetShift", "", "void"), 70);
        p = factory.a("method-execution", factory.a("1", "getLeastDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 74);
        q = factory.a("method-execution", factory.a("1", "setLeastDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "leastDisplayOffset", "", "void"), 78);
        r = factory.a("method-execution", factory.a("1", "getGreatestDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 82);
        s = factory.a("method-execution", factory.a("1", "setGreatestDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "greatestDisplayOffset", "", "void"), 86);
        t = factory.a("method-execution", factory.a("1", "getDisplayStartTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 90);
        u = factory.a("method-execution", factory.a("1", "setDisplayStartTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "displayStartTime", "", "void"), 94);
        v = factory.a("method-execution", factory.a("1", "getDisplayEndTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 98);
        w = factory.a("method-execution", factory.a("1", "setDisplayEndTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "displayEndTime", "", "void"), 102);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = bytebuffer.getInt();
        b = bytebuffer.getInt();
        c = bytebuffer.getInt();
        d = bytebuffer.getInt();
        e = bytebuffer.getInt();
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        bytebuffer.putInt(a);
        bytebuffer.putInt(b);
        bytebuffer.putInt(c);
        bytebuffer.putInt(d);
        bytebuffer.putInt(e);
    }

    protected long d()
    {
        return 24L;
    }

    static 
    {
        a();
    }
}
