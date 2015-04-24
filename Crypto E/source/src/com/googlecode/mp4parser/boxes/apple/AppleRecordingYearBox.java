// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.Utf8;
import java.nio.ByteBuffer;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.googlecode.mp4parser.boxes.apple:
//            AppleDataBox

public class AppleRecordingYearBox extends AppleDataBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    DateFormat d;
    Date e;

    public AppleRecordingYearBox()
    {
        super("\251day", 1);
        e = new Date();
        d = new SimpleDateFormat("yyyy-MM-dd'T'kk:mm:ssZ");
        d.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    protected static String a(String s)
    {
        return s.replaceAll("Z$", "+0000").replaceAll("([0-9][0-9]):([0-9][0-9])$", "$1$2");
    }

    protected static String b(String s)
    {
        return s.replaceAll("\\+0000$", "Z");
    }

    private static void c()
    {
        Factory factory = new Factory("AppleRecordingYearBox.java", com/googlecode/mp4parser/boxes/apple/AppleRecordingYearBox);
        n = factory.a("method-execution", factory.a("1", "getDate", "com.googlecode.mp4parser.boxes.apple.AppleRecordingYearBox", "", "", "", "java.util.Date"), 27);
        o = factory.a("method-execution", factory.a("1", "setDate", "com.googlecode.mp4parser.boxes.apple.AppleRecordingYearBox", "java.util.Date", "date", "", "void"), 31);
    }

    protected byte[] a()
    {
        return Utf8.a(b(d.format(e)));
    }

    protected int b()
    {
        return Utf8.a(b(d.format(e))).length;
    }

    protected void c(ByteBuffer bytebuffer)
    {
        String s = IsoTypeReader.a(bytebuffer, bytebuffer.remaining());
        try
        {
            e = d.parse(a(s));
            return;
        }
        catch (ParseException parseexception)
        {
            throw new RuntimeException(parseexception);
        }
    }

    static 
    {
        c();
    }
}
