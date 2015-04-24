// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class ItemDataBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    ByteBuffer a;

    public ItemDataBox()
    {
        super("idat");
        a = ByteBuffer.allocate(0);
    }

    private static void a()
    {
        Factory factory = new Factory("ItemDataBox.java", com/coremedia/iso/boxes/ItemDataBox);
        b = factory.a("method-execution", factory.a("1", "getData", "com.coremedia.iso.boxes.ItemDataBox", "", "", "", "java.nio.ByteBuffer"), 19);
        c = factory.a("method-execution", factory.a("1", "setData", "com.coremedia.iso.boxes.ItemDataBox", "java.nio.ByteBuffer", "data", "", "void"), 23);
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = bytebuffer.slice();
        bytebuffer.position(bytebuffer.position() + bytebuffer.remaining());
    }

    protected void b(ByteBuffer bytebuffer)
    {
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
