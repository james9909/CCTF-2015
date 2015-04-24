// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class FreeSpaceBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    byte a[];

    public FreeSpaceBox()
    {
        super("skip");
    }

    private static void a()
    {
        Factory factory = new Factory("FreeSpaceBox.java", com/coremedia/iso/boxes/FreeSpaceBox);
        b = factory.a("method-execution", factory.a("1", "setData", "com.coremedia.iso.boxes.FreeSpaceBox", "[B", "data", "", "void"), 42);
        c = factory.a("method-execution", factory.a("1", "getData", "com.coremedia.iso.boxes.FreeSpaceBox", "", "", "", "[B"), 46);
        d = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.FreeSpaceBox", "", "", "", "java.lang.String"), 61);
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = new byte[bytebuffer.remaining()];
        bytebuffer.get(a);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        bytebuffer.put(a);
    }

    protected long d()
    {
        return (long)a.length;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("FreeSpaceBox[size=")).append(a.length).append(";type=").append(g()).append("]").toString();
    }

    static 
    {
        a();
    }
}
