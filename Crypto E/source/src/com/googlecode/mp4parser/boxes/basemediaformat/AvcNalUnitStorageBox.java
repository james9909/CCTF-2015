// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.basemediaformat;

import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.mp4parser.iso14496.part15.AvcDecoderConfigurationRecord;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class AvcNalUnitStorageBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    AvcDecoderConfigurationRecord a;

    public AvcNalUnitStorageBox()
    {
        super("avcn");
    }

    private static void a()
    {
        Factory factory = new Factory("AvcNalUnitStorageBox.java", com/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox);
        b = factory.a("method-execution", factory.a("1", "getAvcDecoderConfigurationRecord", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "com.mp4parser.iso14496.part15.AvcDecoderConfigurationRecord"), 44);
        c = factory.a("method-execution", factory.a("1", "getLengthSizeMinusOne", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "int"), 49);
        d = factory.a("method-execution", factory.a("1", "getSPS", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "[Ljava.lang.String;"), 53);
        e = factory.a("method-execution", factory.a("1", "getPPS", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "[Ljava.lang.String;"), 57);
        n = factory.a("method-execution", factory.a("1", "getSequenceParameterSetsAsStrings", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.util.List"), 61);
        o = factory.a("method-execution", factory.a("1", "getSequenceParameterSetExtsAsStrings", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.util.List"), 65);
        p = factory.a("method-execution", factory.a("1", "getPictureParameterSetsAsStrings", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.util.List"), 69);
        q = factory.a("method-execution", factory.a("1", "toString", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.lang.String"), 89);
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = new AvcDecoderConfigurationRecord(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        a.a(bytebuffer);
    }

    protected long d()
    {
        return a.a();
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("AvcNalUnitStorageBox{SPS=")).append(a.b()).append(",PPS=").append(a.c()).append(",lengthSize=").append(1 + a.e).append('}').toString();
    }

    static 
    {
        a();
    }
}
