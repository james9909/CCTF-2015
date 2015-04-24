// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.dece;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class BaseLocationBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    String a;
    String b;

    public BaseLocationBox()
    {
        super("bloc");
        a = "";
        b = "";
    }

    private static void a()
    {
        Factory factory = new Factory("BaseLocationBox.java", com/googlecode/mp4parser/boxes/dece/BaseLocationBox);
        c = factory.a("method-execution", factory.a("1", "getBaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "java.lang.String"), 44);
        d = factory.a("method-execution", factory.a("1", "setBaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "java.lang.String", "baseLocation", "", "void"), 48);
        e = factory.a("method-execution", factory.a("1", "getPurchaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "java.lang.String"), 52);
        n = factory.a("method-execution", factory.a("1", "setPurchaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "java.lang.String", "purchaseLocation", "", "void"), 56);
        o = factory.a("method-execution", factory.a("1", "equals", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "java.lang.Object", "o", "", "boolean"), 86);
        p = factory.a("method-execution", factory.a("1", "hashCode", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "int"), 100);
        q = factory.a("method-execution", factory.a("1", "toString", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "java.lang.String"), 107);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.g(bytebuffer);
        bytebuffer.get(new byte[-1 + (256 - Utf8.b(a))]);
        b = IsoTypeReader.g(bytebuffer);
        bytebuffer.get(new byte[-1 + (256 - Utf8.b(b))]);
        bytebuffer.get(new byte[512]);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        bytebuffer.put(Utf8.a(a));
        bytebuffer.put(new byte[256 - Utf8.b(a)]);
        bytebuffer.put(Utf8.a(b));
        bytebuffer.put(new byte[256 - Utf8.b(b)]);
        bytebuffer.put(new byte[512]);
    }

    protected long d()
    {
        return 1028L;
    }

    public boolean equals(Object obj)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(o, this, this, obj);
        RequiresParseDetailAspect.a().a(joinpoint);
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            BaseLocationBox baselocationbox = (BaseLocationBox)obj;
            if (a == null ? baselocationbox.a != null : !a.equals(baselocationbox.a))
            {
                return false;
            }
            if (b == null ? baselocationbox.b != null : !b.equals(baselocationbox.b))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(p, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        int i;
        int j;
        String s;
        int k;
        if (a != null)
        {
            i = a.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        s = b;
        k = 0;
        if (s != null)
        {
            k = b.hashCode();
        }
        return j + k;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("BaseLocationBox{baseLocation='")).append(a).append('\'').append(", purchaseLocation='").append(b).append('\'').append('}').toString();
    }

    static 
    {
        a();
    }
}
