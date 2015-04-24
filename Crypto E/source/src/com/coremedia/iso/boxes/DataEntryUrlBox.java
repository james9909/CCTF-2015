// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class DataEntryUrlBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart a;

    public DataEntryUrlBox()
    {
        super("url ");
    }

    private static void a()
    {
        Factory factory = new Factory("DataEntryUrlBox.java", com/coremedia/iso/boxes/DataEntryUrlBox);
        a = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.DataEntryUrlBox", "", "", "", "java.lang.String"), 51);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
    }

    protected long d()
    {
        return 4L;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(a, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return "DataEntryUrlBox[]";
    }

    static 
    {
        a();
    }
}
