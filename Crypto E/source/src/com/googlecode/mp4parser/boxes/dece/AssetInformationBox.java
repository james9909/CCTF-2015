// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.dece;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class AssetInformationBox extends AbstractFullBox
{
    public static class Entry
    {

        public String a;
        public String b;
        public String c;

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                Entry entry = (Entry)obj;
                if (!c.equals(entry.c))
                {
                    return false;
                }
                if (!a.equals(entry.a))
                {
                    return false;
                }
                if (!b.equals(entry.b))
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 * (31 * a.hashCode() + b.hashCode()) + c.hashCode();
        }

        public String toString()
        {
            return (new StringBuilder("{namespace='")).append(a).append('\'').append(", profileLevelIdc='").append(b).append('\'').append(", assetId='").append(c).append('\'').append('}').toString();
        }
    }


    static final boolean c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    String a;
    String b;

    public AssetInformationBox()
    {
        super("ainf");
        a = "";
        b = "0000";
    }

    private static void a()
    {
        Factory factory = new Factory("AssetInformationBox.java", com/googlecode/mp4parser/boxes/dece/AssetInformationBox);
        d = factory.a("method-execution", factory.a("1", "getApid", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "", "", "", "java.lang.String"), 131);
        e = factory.a("method-execution", factory.a("1", "setApid", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "java.lang.String", "apid", "", "void"), 135);
        n = factory.a("method-execution", factory.a("1", "getProfileVersion", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "", "", "", "java.lang.String"), 139);
        o = factory.a("method-execution", factory.a("1", "setProfileVersion", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "java.lang.String", "profileVersion", "", "void"), 143);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        b = IsoTypeReader.a(bytebuffer, 4);
        a = IsoTypeReader.g(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        if (q() == 0)
        {
            bytebuffer.put(Utf8.a(b), 0, 4);
            bytebuffer.put(Utf8.a(a));
            bytebuffer.put((byte)0);
            return;
        } else
        {
            throw new RuntimeException((new StringBuilder("Unknown ainf version ")).append(q()).toString());
        }
    }

    protected long d()
    {
        return (long)(9 + Utf8.b(a));
    }

    static 
    {
        a();
        boolean flag;
        if (!com/googlecode/mp4parser/boxes/dece/AssetInformationBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
    }
}
