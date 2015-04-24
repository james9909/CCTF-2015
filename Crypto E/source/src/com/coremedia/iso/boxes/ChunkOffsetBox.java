// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import org.aspectj.runtime.reflect.Factory;

public abstract class ChunkOffsetBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart a;

    public ChunkOffsetBox(String s)
    {
        super(s);
    }

    private static void b()
    {
        Factory factory = new Factory("ChunkOffsetBox.java", com/coremedia/iso/boxes/ChunkOffsetBox);
        a = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.ChunkOffsetBox", "", "", "", "java.lang.String"), 17);
    }

    public abstract long[] a();

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(a, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder(String.valueOf(getClass().getSimpleName()))).append("[entryCount=").append(a().length).append("]").toString();
    }

    static 
    {
        b();
    }
}
