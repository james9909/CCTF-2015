// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.threegpp26244;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class LocationInformationBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart A;
    private static final org.aspectj.lang.JoinPoint.StaticPart B;
    private static final org.aspectj.lang.JoinPoint.StaticPart C;
    private static final org.aspectj.lang.JoinPoint.StaticPart D;
    private static final org.aspectj.lang.JoinPoint.StaticPart E;
    private static final org.aspectj.lang.JoinPoint.StaticPart F;
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
    private String a;
    private String b;
    private int c;
    private double d;
    private double e;
    private double n;
    private String o;
    private String p;

    public LocationInformationBox()
    {
        super("loci");
        b = "";
        o = "";
        p = "";
    }

    private static void a()
    {
        Factory factory = new Factory("LocationInformationBox.java", com/coremedia/iso/boxes/threegpp26244/LocationInformationBox);
        q = factory.a("method-execution", factory.a("1", "getLanguage", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 30);
        r = factory.a("method-execution", factory.a("1", "setLanguage", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "language", "", "void"), 34);
        A = factory.a("method-execution", factory.a("1", "getAltitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "double"), 70);
        B = factory.a("method-execution", factory.a("1", "setAltitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "double", "altitude", "", "void"), 74);
        C = factory.a("method-execution", factory.a("1", "getAstronomicalBody", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 78);
        D = factory.a("method-execution", factory.a("1", "setAstronomicalBody", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "astronomicalBody", "", "void"), 82);
        E = factory.a("method-execution", factory.a("1", "getAdditionalNotes", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 86);
        F = factory.a("method-execution", factory.a("1", "setAdditionalNotes", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "additionalNotes", "", "void"), 90);
        s = factory.a("method-execution", factory.a("1", "getName", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 38);
        t = factory.a("method-execution", factory.a("1", "setName", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "name", "", "void"), 42);
        u = factory.a("method-execution", factory.a("1", "getRole", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "int"), 46);
        v = factory.a("method-execution", factory.a("1", "setRole", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "int", "role", "", "void"), 50);
        w = factory.a("method-execution", factory.a("1", "getLongitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "double"), 54);
        x = factory.a("method-execution", factory.a("1", "setLongitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "double", "longitude", "", "void"), 58);
        y = factory.a("method-execution", factory.a("1", "getLatitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "double"), 62);
        z = factory.a("method-execution", factory.a("1", "setLatitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "double", "latitude", "", "void"), 66);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.l(bytebuffer);
        b = IsoTypeReader.g(bytebuffer);
        c = IsoTypeReader.f(bytebuffer);
        d = IsoTypeReader.i(bytebuffer);
        e = IsoTypeReader.i(bytebuffer);
        n = IsoTypeReader.i(bytebuffer);
        o = IsoTypeReader.g(bytebuffer);
        p = IsoTypeReader.g(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.a(bytebuffer, a);
        bytebuffer.put(Utf8.a(b));
        bytebuffer.put((byte)0);
        IsoTypeWriter.d(bytebuffer, c);
        IsoTypeWriter.a(bytebuffer, d);
        IsoTypeWriter.a(bytebuffer, e);
        IsoTypeWriter.a(bytebuffer, n);
        bytebuffer.put(Utf8.a(o));
        bytebuffer.put((byte)0);
        bytebuffer.put(Utf8.a(p));
        bytebuffer.put((byte)0);
    }

    protected long d()
    {
        return (long)(22 + Utf8.a(b).length + Utf8.a(o).length + Utf8.a(p).length);
    }

    static 
    {
        a();
    }
}
