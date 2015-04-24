// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitWriterBuffer;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class MLPSpecificBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    int a;
    int b;
    int c;
    int d;

    public MLPSpecificBox()
    {
        super("dmlp");
    }

    private static void a()
    {
        Factory factory = new Factory("MLPSpecificBox.java", com/googlecode/mp4parser/boxes/MLPSpecificBox);
        e = factory.a("method-execution", factory.a("1", "getFormat_info", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 49);
        n = factory.a("method-execution", factory.a("1", "setFormat_info", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "format_info", "", "void"), 53);
        o = factory.a("method-execution", factory.a("1", "getPeak_data_rate", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 57);
        p = factory.a("method-execution", factory.a("1", "setPeak_data_rate", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "peak_data_rate", "", "void"), 61);
        q = factory.a("method-execution", factory.a("1", "getReserved", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 65);
        r = factory.a("method-execution", factory.a("1", "setReserved", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "reserved", "", "void"), 69);
        s = factory.a("method-execution", factory.a("1", "getReserved2", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 73);
        t = factory.a("method-execution", factory.a("1", "setReserved2", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "reserved2", "", "void"), 77);
    }

    public void a(ByteBuffer bytebuffer)
    {
        BitReaderBuffer bitreaderbuffer = new BitReaderBuffer(bytebuffer);
        a = bitreaderbuffer.a(32);
        b = bitreaderbuffer.a(15);
        c = bitreaderbuffer.a(1);
        d = bitreaderbuffer.a(32);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        BitWriterBuffer bitwriterbuffer = new BitWriterBuffer(bytebuffer);
        bitwriterbuffer.a(a, 32);
        bitwriterbuffer.a(b, 15);
        bitwriterbuffer.a(c, 1);
        bitwriterbuffer.a(d, 32);
    }

    protected long d()
    {
        return 10L;
    }

    static 
    {
        a();
    }
}
