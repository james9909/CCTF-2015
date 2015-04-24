// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.dece;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.aspectj.runtime.reflect.Factory;

public class ContentInformationBox extends AbstractFullBox
{
    public static class BrandEntry
    {

        String a;
        String b;

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                BrandEntry brandentry = (BrandEntry)obj;
                if (a == null ? brandentry.a != null : !a.equals(brandentry.a))
                {
                    return false;
                }
                if (b == null ? brandentry.b != null : !b.equals(brandentry.b))
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            int i;
            int j;
            String s1;
            int k;
            if (a != null)
            {
                i = a.hashCode();
            } else
            {
                i = 0;
            }
            j = i * 31;
            s1 = b;
            k = 0;
            if (s1 != null)
            {
                k = b.hashCode();
            }
            return j + k;
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart A;
    private static final org.aspectj.lang.JoinPoint.StaticPart B;
    private static final org.aspectj.lang.JoinPoint.StaticPart C;
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
    String a;
    String b;
    String c;
    String d;
    String e;
    Map n;
    Map o;

    public ContentInformationBox()
    {
        super("cinf");
        n = new LinkedHashMap();
        o = new LinkedHashMap();
    }

    private static void a()
    {
        Factory factory = new Factory("ContentInformationBox.java", com/googlecode/mp4parser/boxes/dece/ContentInformationBox);
        p = factory.a("method-execution", factory.a("1", "getMimeSubtypeName", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 144);
        q = factory.a("method-execution", factory.a("1", "setMimeSubtypeName", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "mimeSubtypeName", "", "void"), 148);
        z = factory.a("method-execution", factory.a("1", "getBrandEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.util.Map"), 184);
        A = factory.a("method-execution", factory.a("1", "setBrandEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.util.Map", "brandEntries", "", "void"), 188);
        B = factory.a("method-execution", factory.a("1", "getIdEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.util.Map"), 192);
        C = factory.a("method-execution", factory.a("1", "setIdEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.util.Map", "idEntries", "", "void"), 196);
        r = factory.a("method-execution", factory.a("1", "getProfileLevelIdc", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 152);
        s = factory.a("method-execution", factory.a("1", "setProfileLevelIdc", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "profileLevelIdc", "", "void"), 156);
        t = factory.a("method-execution", factory.a("1", "getCodecs", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 160);
        u = factory.a("method-execution", factory.a("1", "setCodecs", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "codecs", "", "void"), 164);
        v = factory.a("method-execution", factory.a("1", "getProtection", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 168);
        w = factory.a("method-execution", factory.a("1", "setProtection", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "protection", "", "void"), 172);
        x = factory.a("method-execution", factory.a("1", "getLanguages", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 176);
        y = factory.a("method-execution", factory.a("1", "setLanguages", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "languages", "", "void"), 180);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        int i;
        c(bytebuffer);
        a = IsoTypeReader.g(bytebuffer);
        b = IsoTypeReader.g(bytebuffer);
        c = IsoTypeReader.g(bytebuffer);
        d = IsoTypeReader.g(bytebuffer);
        e = IsoTypeReader.g(bytebuffer);
        i = IsoTypeReader.f(bytebuffer);
_L3:
        int j = i - 1;
        if (i > 0) goto _L2; else goto _L1
_L1:
        int k = IsoTypeReader.f(bytebuffer);
_L4:
        int l;
        l = k - 1;
        if (k <= 0)
        {
            return;
        }
        break MISSING_BLOCK_LABEL_106;
_L2:
        n.put(IsoTypeReader.g(bytebuffer), IsoTypeReader.g(bytebuffer));
        i = j;
          goto _L3
        o.put(IsoTypeReader.g(bytebuffer), IsoTypeReader.g(bytebuffer));
        k = l;
          goto _L4
    }

    protected void b(ByteBuffer bytebuffer)
    {
        Iterator iterator;
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        IsoTypeWriter.b(bytebuffer, d);
        IsoTypeWriter.b(bytebuffer, e);
        IsoTypeWriter.d(bytebuffer, n.size());
        iterator = n.entrySet().iterator();
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Iterator iterator1;
        IsoTypeWriter.d(bytebuffer, o.size());
        iterator1 = o.entrySet().iterator();
_L4:
        if (!iterator1.hasNext())
        {
            return;
        }
        break MISSING_BLOCK_LABEL_161;
_L2:
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        IsoTypeWriter.b(bytebuffer, (String)entry.getKey());
        IsoTypeWriter.b(bytebuffer, (String)entry.getValue());
          goto _L3
        java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator1.next();
        IsoTypeWriter.b(bytebuffer, (String)entry1.getKey());
        IsoTypeWriter.b(bytebuffer, (String)entry1.getValue());
          goto _L4
    }

    protected long d()
    {
        Iterator iterator;
        long l1;
        long l = 1L + (4L + (long)(1 + Utf8.b(a)) + (long)(1 + Utf8.b(b)) + (long)(1 + Utf8.b(c)) + (long)(1 + Utf8.b(d)) + (long)(1 + Utf8.b(e)));
        iterator = n.entrySet().iterator();
        l1 = l;
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Iterator iterator1;
        long l3;
        long l2 = l1 + 1L;
        iterator1 = o.entrySet().iterator();
        l3 = l2;
_L4:
        if (!iterator1.hasNext())
        {
            return l3;
        }
        break MISSING_BLOCK_LABEL_179;
_L2:
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        l1 = l1 + (long)(1 + Utf8.b((String)entry.getKey())) + (long)(1 + Utf8.b((String)entry.getValue()));
          goto _L3
        java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator1.next();
        l3 = l3 + (long)(1 + Utf8.b((String)entry1.getKey())) + (long)(1 + Utf8.b((String)entry1.getValue()));
          goto _L4
    }

    static 
    {
        a();
    }
}
