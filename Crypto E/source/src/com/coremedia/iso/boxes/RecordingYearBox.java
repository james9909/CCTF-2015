// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class RecordingYearBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    int a;

    public RecordingYearBox()
    {
        super("yrrc");
    }

    private static void a()
    {
        Factory factory = new Factory("RecordingYearBox.java", com/coremedia/iso/boxes/RecordingYearBox);
        b = factory.a("method-execution", factory.a("1", "getRecordingYear", "com.coremedia.iso.boxes.RecordingYearBox", "", "", "", "int"), 42);
        c = factory.a("method-execution", factory.a("1", "setRecordingYear", "com.coremedia.iso.boxes.RecordingYearBox", "int", "recordingYear", "", "void"), 46);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.d(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a);
    }

    protected long d()
    {
        return 6L;
    }

    static 
    {
        a();
    }
}
