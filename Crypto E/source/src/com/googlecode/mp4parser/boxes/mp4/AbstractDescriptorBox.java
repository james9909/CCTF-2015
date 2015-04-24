// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4;

import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ObjectDescriptorFactory;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.aspectj.runtime.reflect.Factory;

public class AbstractDescriptorBox extends AbstractFullBox
{

    private static Logger c = Logger.getLogger(com/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox.getName());
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    protected BaseDescriptor a;
    protected ByteBuffer b;

    public AbstractDescriptorBox(String s)
    {
        super(s);
    }

    private static void a()
    {
        Factory factory = new Factory("AbstractDescriptorBox.java", com/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox);
        d = factory.a("method-execution", factory.a("1", "getData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "java.nio.ByteBuffer"), 42);
        e = factory.a("method-execution", factory.a("1", "getDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor"), 58);
        n = factory.a("method-execution", factory.a("1", "getDescriptorAsString", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "java.lang.String"), 62);
        o = factory.a("method-execution", factory.a("1", "setDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor", "descriptor", "", "void"), 66);
        p = factory.a("method-execution", factory.a("1", "setData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "java.nio.ByteBuffer", "data", "", "void"), 70);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        b = bytebuffer.slice();
        bytebuffer.position(bytebuffer.position() + bytebuffer.remaining());
        try
        {
            b.rewind();
            a = ObjectDescriptorFactory.a(-1, b);
            return;
        }
        catch (IOException ioexception)
        {
            c.log(Level.WARNING, "Error parsing ObjectDescriptor", ioexception);
            return;
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            c.log(Level.WARNING, "Error parsing ObjectDescriptor", indexoutofboundsexception);
        }
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        b.rewind();
        bytebuffer.put(b);
    }

    protected long d()
    {
        return (long)(4 + b.limit());
    }

    static 
    {
        a();
    }
}
