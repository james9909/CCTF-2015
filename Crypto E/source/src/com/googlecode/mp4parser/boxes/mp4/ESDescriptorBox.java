// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4;

import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4:
//            AbstractDescriptorBox

public class ESDescriptorBox extends AbstractDescriptorBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;

    public ESDescriptorBox()
    {
        super("esds");
    }

    private static void a()
    {
        Factory factory = new Factory("ESDescriptorBox.java", com/googlecode/mp4parser/boxes/mp4/ESDescriptorBox);
        c = factory.a("method-execution", factory.a("1", "getEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"), 33);
        d = factory.a("method-execution", factory.a("1", "setEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor", "esDescriptor", "", "void"), 37);
        e = factory.a("method-execution", factory.a("1", "equals", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "java.lang.Object", "o", "", "boolean"), 42);
        n = factory.a("method-execution", factory.a("1", "hashCode", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "int"), 53);
    }

    public boolean equals(Object obj)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(e, this, this, obj);
        RequiresParseDetailAspect.a().a(joinpoint);
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            ESDescriptorBox esdescriptorbox = (ESDescriptorBox)obj;
            if (b == null ? esdescriptorbox.b != null : !b.equals(esdescriptorbox.b))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(n, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        if (b != null)
        {
            return b.hashCode();
        } else
        {
            return 0;
        }
    }

    static 
    {
        a();
    }
}
