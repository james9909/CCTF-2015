// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class TrackReferenceTypeBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private long a[];

    private static void a()
    {
        Factory factory = new Factory("TrackReferenceTypeBox.java", com/coremedia/iso/boxes/TrackReferenceTypeBox);
        b = factory.a("method-execution", factory.a("1", "getTrackIds", "com.coremedia.iso.boxes.TrackReferenceTypeBox", "", "", "", "[J"), 40);
        c = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.TrackReferenceTypeBox", "", "", "", "java.lang.String"), 65);
    }

    public void a(ByteBuffer bytebuffer)
    {
        int i = bytebuffer.remaining() / 4;
        a = new long[i];
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            a[j] = IsoTypeReader.b(bytebuffer);
            j++;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        long al[] = a;
        int i = al.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            IsoTypeWriter.b(bytebuffer, al[j]);
            j++;
        } while (true);
    }

    protected long d()
    {
        return (long)(4 * a.length);
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(c, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TrackReferenceTypeBox[type=").append(g());
        int i = 0;
        do
        {
            if (i >= a.length)
            {
                stringbuilder.append("]");
                return stringbuilder.toString();
            }
            stringbuilder.append(";trackId");
            stringbuilder.append(i);
            stringbuilder.append("=");
            stringbuilder.append(a[i]);
            i++;
        } while (true);
    }

    static 
    {
        a();
    }
}
