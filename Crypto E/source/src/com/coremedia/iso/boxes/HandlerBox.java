// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.aspectj.runtime.reflect.Factory;

public class HandlerBox extends AbstractFullBox
{

    public static final Map a;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    private static final org.aspectj.lang.JoinPoint.StaticPart u;
    private static final org.aspectj.lang.JoinPoint.StaticPart v;
    private String b;
    private String c;
    private long d;
    private long e;
    private long n;
    private boolean o;
    private long p;

    public HandlerBox()
    {
        super("hdlr");
        c = null;
        o = true;
    }

    private static void c()
    {
        Factory factory = new Factory("HandlerBox.java", com/coremedia/iso/boxes/HandlerBox);
        q = factory.a("method-execution", factory.a("1", "getHandlerType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 78);
        r = factory.a("method-execution", factory.a("1", "setName", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "name", "", "void"), 87);
        s = factory.a("method-execution", factory.a("1", "setHandlerType", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "handlerType", "", "void"), 91);
        t = factory.a("method-execution", factory.a("1", "getName", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 95);
        u = factory.a("method-execution", factory.a("1", "getHumanReadableTrackType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 99);
        v = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 149);
    }

    public String a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        p = IsoTypeReader.b(bytebuffer);
        b = IsoTypeReader.m(bytebuffer);
        d = IsoTypeReader.b(bytebuffer);
        e = IsoTypeReader.b(bytebuffer);
        n = IsoTypeReader.b(bytebuffer);
        if (bytebuffer.remaining() > 0)
        {
            c = IsoTypeReader.a(bytebuffer, bytebuffer.remaining());
            if (c.endsWith("\0"))
            {
                c = c.substring(0, -1 + c.length());
                o = true;
                return;
            } else
            {
                o = false;
                return;
            }
        } else
        {
            o = false;
            return;
        }
    }

    public String b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(t, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return c;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, p);
        bytebuffer.put(IsoFile.a(b));
        IsoTypeWriter.b(bytebuffer, d);
        IsoTypeWriter.b(bytebuffer, e);
        IsoTypeWriter.b(bytebuffer, n);
        if (c != null)
        {
            bytebuffer.put(Utf8.a(c));
        }
        if (o)
        {
            bytebuffer.put((byte)0);
        }
    }

    protected long d()
    {
        if (o)
        {
            return (long)(25 + Utf8.b(c));
        } else
        {
            return (long)(24 + Utf8.b(c));
        }
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(v, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("HandlerBox[handlerType=")).append(a()).append(";name=").append(b()).append("]").toString();
    }

    static 
    {
        c();
        HashMap hashmap = new HashMap();
        hashmap.put("odsm", "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("crsm", "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("sdsm", "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("m7sm", "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("ocsm", "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("ipsm", "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("mjsm", "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("mdir", "Apple Meta Data iTunes Reader");
        hashmap.put("mp7b", "MPEG-7 binary XML");
        hashmap.put("mp7t", "MPEG-7 XML");
        hashmap.put("vide", "Video Track");
        hashmap.put("soun", "Sound Track");
        hashmap.put("hint", "Hint Track");
        hashmap.put("appl", "Apple specific");
        hashmap.put("meta", "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        a = Collections.unmodifiableMap(hashmap);
    }
}
