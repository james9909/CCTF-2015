// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.coremedia.iso.IsoTypeReaderVariable;
import com.coremedia.iso.IsoTypeWriterVariable;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.googlecode.mp4parser.boxes.apple:
//            AppleDataBox

public abstract class AppleVariableSignedIntegerBox extends AppleDataBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    long d;
    int e;

    protected AppleVariableSignedIntegerBox(String s)
    {
        super(s, 15);
        e = 1;
    }

    private static void c()
    {
        Factory factory = new Factory("AppleVariableSignedIntegerBox.java", com/googlecode/mp4parser/boxes/apple/AppleVariableSignedIntegerBox);
        n = factory.a("method-execution", factory.a("1", "getIntLength", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "", "", "", "int"), 19);
        o = factory.a("method-execution", factory.a("1", "setIntLength", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "int", "intLength", "", "void"), 23);
        p = factory.a("method-execution", factory.a("1", "getValue", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "", "", "", "long"), 27);
        q = factory.a("method-execution", factory.a("1", "setValue", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "long", "value", "", "void"), 36);
    }

    protected byte[] a()
    {
        int i = b();
        ByteBuffer bytebuffer = ByteBuffer.wrap(new byte[i]);
        IsoTypeWriterVariable.a(d, bytebuffer, i);
        return bytebuffer.array();
    }

    protected int b()
    {
        return e;
    }

    protected void c(ByteBuffer bytebuffer)
    {
        int i = bytebuffer.remaining();
        d = IsoTypeReaderVariable.a(bytebuffer, i);
        e = i;
    }

    static 
    {
        c();
    }
}
