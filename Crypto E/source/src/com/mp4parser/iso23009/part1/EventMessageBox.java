// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso23009.part1;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class EventMessageBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart A;
    private static final org.aspectj.lang.JoinPoint.StaticPart B;
    private static final org.aspectj.lang.JoinPoint.StaticPart C;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    private static final org.aspectj.lang.JoinPoint.StaticPart u;
    private static final org.aspectj.lang.JoinPoint.StaticPart v;
    private static final org.aspectj.lang.JoinPoint.StaticPart w;
    private static final org.aspectj.lang.JoinPoint.StaticPart x;
    private static final org.aspectj.lang.JoinPoint.StaticPart y;
    private static final org.aspectj.lang.JoinPoint.StaticPart z;
    String a;
    String b;
    long c;
    long d;
    long e;
    long n;
    byte o[];

    public EventMessageBox()
    {
        super("emsg");
    }

    private static void a()
    {
        Factory factory = new Factory("EventMessageBox.java", com/mp4parser/iso23009/part1/EventMessageBox);
        p = factory.a("method-execution", factory.a("1", "getSchemeIdUri", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "java.lang.String"), 59);
        q = factory.a("method-execution", factory.a("1", "setSchemeIdUri", "com.mp4parser.iso23009.part1.EventMessageBox", "java.lang.String", "schemeIdUri", "", "void"), 63);
        z = factory.a("method-execution", factory.a("1", "getId", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "long"), 99);
        A = factory.a("method-execution", factory.a("1", "setId", "com.mp4parser.iso23009.part1.EventMessageBox", "long", "id", "", "void"), 103);
        B = factory.a("method-execution", factory.a("1", "getMessageData", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "[B"), 107);
        C = factory.a("method-execution", factory.a("1", "setMessageData", "com.mp4parser.iso23009.part1.EventMessageBox", "[B", "messageData", "", "void"), 111);
        r = factory.a("method-execution", factory.a("1", "getValue", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "java.lang.String"), 67);
        s = factory.a("method-execution", factory.a("1", "setValue", "com.mp4parser.iso23009.part1.EventMessageBox", "java.lang.String", "value", "", "void"), 71);
        t = factory.a("method-execution", factory.a("1", "getTimescale", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "long"), 75);
        u = factory.a("method-execution", factory.a("1", "setTimescale", "com.mp4parser.iso23009.part1.EventMessageBox", "long", "timescale", "", "void"), 79);
        v = factory.a("method-execution", factory.a("1", "getPresentationTimeDelta", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "long"), 83);
        w = factory.a("method-execution", factory.a("1", "setPresentationTimeDelta", "com.mp4parser.iso23009.part1.EventMessageBox", "long", "presentationTimeDelta", "", "void"), 87);
        x = factory.a("method-execution", factory.a("1", "getEventDuration", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "long"), 91);
        y = factory.a("method-execution", factory.a("1", "setEventDuration", "com.mp4parser.iso23009.part1.EventMessageBox", "long", "eventDuration", "", "void"), 95);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.g(bytebuffer);
        b = IsoTypeReader.g(bytebuffer);
        c = IsoTypeReader.b(bytebuffer);
        d = IsoTypeReader.b(bytebuffer);
        e = IsoTypeReader.b(bytebuffer);
        n = IsoTypeReader.b(bytebuffer);
        o = new byte[bytebuffer.remaining()];
        bytebuffer.get(o);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.c(bytebuffer, a);
        IsoTypeWriter.c(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        IsoTypeWriter.b(bytebuffer, d);
        IsoTypeWriter.b(bytebuffer, e);
        IsoTypeWriter.b(bytebuffer, n);
        bytebuffer.put(o);
    }

    protected long d()
    {
        return (long)(22 + Utf8.b(a) + Utf8.b(b) + o.length);
    }

    static 
    {
        a();
    }
}
