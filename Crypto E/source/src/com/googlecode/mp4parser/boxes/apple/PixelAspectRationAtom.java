// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class PixelAspectRationAtom extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private int a;
    private int b;

    public PixelAspectRationAtom()
    {
        super("pasp");
    }

    private static void a()
    {
        Factory factory = new Factory("PixelAspectRationAtom.java", com/googlecode/mp4parser/boxes/apple/PixelAspectRationAtom);
        c = factory.a("method-execution", factory.a("1", "gethSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "", "", "", "int"), 35);
        d = factory.a("method-execution", factory.a("1", "sethSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "int", "hSpacing", "", "void"), 39);
        e = factory.a("method-execution", factory.a("1", "getvSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "", "", "", "int"), 43);
        n = factory.a("method-execution", factory.a("1", "setvSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "int", "vSpacing", "", "void"), 47);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        a = bytebuffer.getInt();
        b = bytebuffer.getInt();
    }

    protected void b(ByteBuffer bytebuffer)
    {
        bytebuffer.putInt(a);
        bytebuffer.putInt(b);
    }

    protected long d()
    {
        return 8L;
    }

    static 
    {
        a();
    }
}
