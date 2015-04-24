// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class UserBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    byte a[];

    private static void a()
    {
        Factory factory = new Factory("UserBox.java", com/coremedia/iso/boxes/UserBox);
        b = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.UserBox", "", "", "", "java.lang.String"), 40);
        c = factory.a("method-execution", factory.a("1", "getData", "com.coremedia.iso.boxes.UserBox", "", "", "", "[B"), 47);
        d = factory.a("method-execution", factory.a("1", "setData", "com.coremedia.iso.boxes.UserBox", "[B", "data", "", "void"), 51);
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
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(b, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("UserBox[type=")).append(g()).append(";userType=").append(new String(o())).append(";contentLength=").append(a.length).append("]").toString();
    }

    static 
    {
        a();
    }
}
