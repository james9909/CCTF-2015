// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class AppleDataReferenceBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private int a;
    private String b;
    private String c;

    public AppleDataReferenceBox()
    {
        super("rdrf");
    }

    private static void a()
    {
        Factory factory = new Factory("AppleDataReferenceBox.java", com/coremedia/iso/boxes/apple/AppleDataReferenceBox);
        d = factory.a("method-execution", factory.a("1", "getDataReferenceSize", "com.coremedia.iso.boxes.apple.AppleDataReferenceBox", "", "", "", "long"), 63);
        e = factory.a("method-execution", factory.a("1", "getDataReferenceType", "com.coremedia.iso.boxes.apple.AppleDataReferenceBox", "", "", "", "java.lang.String"), 67);
        n = factory.a("method-execution", factory.a("1", "getDataReference", "com.coremedia.iso.boxes.apple.AppleDataReferenceBox", "", "", "", "java.lang.String"), 71);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        b = IsoTypeReader.m(bytebuffer);
        a = CastUtils.a(IsoTypeReader.b(bytebuffer));
        c = IsoTypeReader.a(bytebuffer, a);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        bytebuffer.put(IsoFile.a(b));
        IsoTypeWriter.b(bytebuffer, a);
        bytebuffer.put(Utf8.a(c));
    }

    protected long d()
    {
        return (long)(12 + a);
    }

    static 
    {
        a();
    }
}
