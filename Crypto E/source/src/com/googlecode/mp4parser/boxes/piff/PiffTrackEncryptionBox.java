// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox;
import org.aspectj.runtime.reflect.Factory;

public class PiffTrackEncryptionBox extends AbstractTrackEncryptionBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart d;

    public PiffTrackEncryptionBox()
    {
        super("uuid");
    }

    private static void a()
    {
        Factory factory = new Factory("PiffTrackEncryptionBox.java", com/googlecode/mp4parser/boxes/piff/PiffTrackEncryptionBox);
        d = factory.a("method-execution", factory.a("1", "getFlags", "com.googlecode.mp4parser.boxes.piff.PiffTrackEncryptionBox", "", "", "", "int"), 29);
    }

    public byte[] o()
    {
        return (new byte[] {
            -119, 116, -37, -50, 123, -25, 76, 81, -124, -7, 
            113, 72, -7, -120, 37, 84
        });
    }

    public int r()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return 0;
    }

    static 
    {
        a();
    }
}
