// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitWriterBuffer;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class AC3SpecificBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart A;
    private static final org.aspectj.lang.JoinPoint.StaticPart B;
    private static final org.aspectj.lang.JoinPoint.StaticPart C;
    private static final org.aspectj.lang.JoinPoint.StaticPart D;
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
    int a;
    int b;
    int c;
    int d;
    int e;
    int n;
    int o;

    public AC3SpecificBox()
    {
        super("dac3");
    }

    private static void a()
    {
        Factory factory = new Factory("AC3SpecificBox.java", com/googlecode/mp4parser/boxes/AC3SpecificBox);
        p = factory.a("method-execution", factory.a("1", "getFscod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 55);
        q = factory.a("method-execution", factory.a("1", "setFscod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "fscod", "", "void"), 59);
        z = factory.a("method-execution", factory.a("1", "getBitRateCode", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 95);
        A = factory.a("method-execution", factory.a("1", "setBitRateCode", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "bitRateCode", "", "void"), 99);
        B = factory.a("method-execution", factory.a("1", "getReserved", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 103);
        C = factory.a("method-execution", factory.a("1", "setReserved", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "reserved", "", "void"), 107);
        D = factory.a("method-execution", factory.a("1", "toString", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "java.lang.String"), 112);
        r = factory.a("method-execution", factory.a("1", "getBsid", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 63);
        s = factory.a("method-execution", factory.a("1", "setBsid", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "bsid", "", "void"), 67);
        t = factory.a("method-execution", factory.a("1", "getBsmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 71);
        u = factory.a("method-execution", factory.a("1", "setBsmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "bsmod", "", "void"), 75);
        v = factory.a("method-execution", factory.a("1", "getAcmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 79);
        w = factory.a("method-execution", factory.a("1", "setAcmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "acmod", "", "void"), 83);
        x = factory.a("method-execution", factory.a("1", "getLfeon", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 87);
        y = factory.a("method-execution", factory.a("1", "setLfeon", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "lfeon", "", "void"), 91);
    }

    public void a(ByteBuffer bytebuffer)
    {
        BitReaderBuffer bitreaderbuffer = new BitReaderBuffer(bytebuffer);
        a = bitreaderbuffer.a(2);
        b = bitreaderbuffer.a(5);
        c = bitreaderbuffer.a(3);
        d = bitreaderbuffer.a(3);
        e = bitreaderbuffer.a(1);
        n = bitreaderbuffer.a(5);
        o = bitreaderbuffer.a(5);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        BitWriterBuffer bitwriterbuffer = new BitWriterBuffer(bytebuffer);
        bitwriterbuffer.a(a, 2);
        bitwriterbuffer.a(b, 5);
        bitwriterbuffer.a(c, 3);
        bitwriterbuffer.a(d, 3);
        bitwriterbuffer.a(e, 1);
        bitwriterbuffer.a(n, 5);
        bitwriterbuffer.a(o, 5);
    }

    protected long d()
    {
        return 3L;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(D, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("AC3SpecificBox{fscod=")).append(a).append(", bsid=").append(b).append(", bsmod=").append(c).append(", acmod=").append(d).append(", lfeon=").append(e).append(", bitRateCode=").append(n).append(", reserved=").append(o).append('}').toString();
    }

    static 
    {
        a();
    }
}
