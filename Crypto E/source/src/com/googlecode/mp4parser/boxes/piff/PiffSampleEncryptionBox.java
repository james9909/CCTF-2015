// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox;
import org.aspectj.runtime.reflect.Factory;

public class PiffSampleEncryptionBox extends AbstractSampleEncryptionBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;

    public PiffSampleEncryptionBox()
    {
        super("uuid");
    }

    private static void c()
    {
        Factory factory = new Factory("PiffSampleEncryptionBox.java", com/googlecode/mp4parser/boxes/piff/PiffSampleEncryptionBox);
        e = factory.a("method-execution", factory.a("1", "getAlgorithmId", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "", "", "", "int"), 46);
        n = factory.a("method-execution", factory.a("1", "setAlgorithmId", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "int", "algorithmId", "", "void"), 50);
        o = factory.a("method-execution", factory.a("1", "getIvSize", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "", "", "", "int"), 54);
        p = factory.a("method-execution", factory.a("1", "setIvSize", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "int", "ivSize", "", "void"), 58);
        q = factory.a("method-execution", factory.a("1", "getKid", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "", "", "", "[B"), 62);
        r = factory.a("method-execution", factory.a("1", "setKid", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "[B", "kid", "", "void"), 66);
    }

    public boolean b()
    {
        return (1 & r()) > 0;
    }

    public byte[] o()
    {
        return (new byte[] {
            -94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 
            108, 66, 124, 100, -115, -12
        });
    }

    static 
    {
        c();
    }
}
