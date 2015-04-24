// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class UnknownBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    ByteBuffer a;

    private static void a()
    {
        Factory factory = new Factory("UnknownBox.java", com/coremedia/iso/boxes/UnknownBox);
        b = factory.a("method-execution", factory.a("1", "getData", "com.coremedia.iso.boxes.UnknownBox", "", "", "", "java.nio.ByteBuffer"), 52);
        c = factory.a("method-execution", factory.a("1", "setData", "com.coremedia.iso.boxes.UnknownBox", "java.nio.ByteBuffer", "data", "", "void"), 56);
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = bytebuffer;
        bytebuffer.position(bytebuffer.position() + bytebuffer.remaining());
    }

    protected void b(ByteBuffer bytebuffer)
    {
        a.rewind();
        bytebuffer.put(a);
    }

    protected long d()
    {
        return (long)a.limit();
    }

    static 
    {
        a();
    }
}
