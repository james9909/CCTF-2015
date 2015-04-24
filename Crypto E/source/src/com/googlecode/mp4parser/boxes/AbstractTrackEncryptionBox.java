// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import java.util.Arrays;
import org.aspectj.runtime.reflect.Factory;

public abstract class AbstractTrackEncryptionBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    int a;
    int b;
    byte c[];

    public AbstractTrackEncryptionBox(String s1)
    {
        super(s1);
    }

    private static void a()
    {
        Factory factory = new Factory("AbstractTrackEncryptionBox.java", com/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox);
        d = factory.a("method-execution", factory.a("1", "getDefaultAlgorithmId", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 24);
        e = factory.a("method-execution", factory.a("1", "setDefaultAlgorithmId", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "int", "defaultAlgorithmId", "", "void"), 28);
        n = factory.a("method-execution", factory.a("1", "getDefaultIvSize", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 32);
        o = factory.a("method-execution", factory.a("1", "setDefaultIvSize", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "int", "defaultIvSize", "", "void"), 36);
        p = factory.a("method-execution", factory.a("1", "getDefault_KID", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "java.util.UUID"), 40);
        q = factory.a("method-execution", factory.a("1", "setDefault_KID", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "java.util.UUID", "uuid", "", "void"), 46);
        r = factory.a("method-execution", factory.a("1", "equals", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "java.lang.Object", "o", "", "boolean"), 76);
        s = factory.a("method-execution", factory.a("1", "hashCode", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 90);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.c(bytebuffer);
        b = IsoTypeReader.f(bytebuffer);
        c = new byte[16];
        bytebuffer.get(c);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.a(bytebuffer, a);
        IsoTypeWriter.d(bytebuffer, b);
        bytebuffer.put(c);
    }

    protected long d()
    {
        return 24L;
    }

    public boolean equals(Object obj)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(r, this, this, obj);
        RequiresParseDetailAspect.a().a(joinpoint);
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            AbstractTrackEncryptionBox abstracttrackencryptionbox = (AbstractTrackEncryptionBox)obj;
            if (a != abstracttrackencryptionbox.a)
            {
                return false;
            }
            if (b != abstracttrackencryptionbox.b)
            {
                return false;
            }
            if (!Arrays.equals(c, abstracttrackencryptionbox.c))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(s, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        int i = 31 * (31 * a + b);
        int j;
        if (c != null)
        {
            j = Arrays.hashCode(c);
        } else
        {
            j = 0;
        }
        return j + i;
    }

    static 
    {
        a();
    }
}
