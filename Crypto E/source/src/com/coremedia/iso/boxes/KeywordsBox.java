// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class KeywordsBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private String a;
    private String b[];

    public KeywordsBox()
    {
        super("kywd");
    }

    private static void b()
    {
        Factory factory = new Factory("KeywordsBox.java", com/coremedia/iso/boxes/KeywordsBox);
        c = factory.a("method-execution", factory.a("1", "getLanguage", "com.coremedia.iso.boxes.KeywordsBox", "", "", "", "java.lang.String"), 40);
        d = factory.a("method-execution", factory.a("1", "getKeywords", "com.coremedia.iso.boxes.KeywordsBox", "", "", "", "[Ljava.lang.String;"), 44);
        e = factory.a("method-execution", factory.a("1", "setLanguage", "com.coremedia.iso.boxes.KeywordsBox", "java.lang.String", "language", "", "void"), 48);
        n = factory.a("method-execution", factory.a("1", "setKeywords", "com.coremedia.iso.boxes.KeywordsBox", "[Ljava.lang.String;", "keywords", "", "void"), 52);
        o = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.KeywordsBox", "", "", "", "java.lang.String"), 87);
    }

    public String a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(c, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.l(bytebuffer);
        int i = IsoTypeReader.f(bytebuffer);
        b = new String[i];
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            IsoTypeReader.f(bytebuffer);
            b[j] = IsoTypeReader.g(bytebuffer);
            j++;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.a(bytebuffer, a);
        IsoTypeWriter.d(bytebuffer, b.length);
        String as[] = b;
        int i = as.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            String s = as[j];
            IsoTypeWriter.d(bytebuffer, 1 + Utf8.b(s));
            bytebuffer.put(Utf8.a(s));
            j++;
        } while (true);
    }

    protected long d()
    {
        long l = 7L;
        String as[] = b;
        int i = as.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return l;
            }
            l += 1 + (1 + Utf8.b(as[j]));
            j++;
        } while (true);
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(o, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("KeywordsBox[language=").append(a());
        int i = 0;
        do
        {
            if (i >= b.length)
            {
                stringbuffer.append("]");
                return stringbuffer.toString();
            }
            stringbuffer.append(";keyword").append(i).append("=").append(b[i]);
            i++;
        } while (true);
    }

    static 
    {
        b();
    }
}
