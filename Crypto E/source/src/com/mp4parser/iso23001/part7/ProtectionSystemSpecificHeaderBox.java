// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso23001.part7;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.UUIDConverter;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.aspectj.runtime.reflect.Factory;

public class ProtectionSystemSpecificHeaderBox extends AbstractFullBox
{

    public static byte a[] = UUIDConverter.a(UUID.fromString("A2B55680-6F43-11E0-9A3F-0002A5D5C51B"));
    public static byte b[] = UUIDConverter.a(UUID.fromString("9A04F079-9840-4286-AB92-E65BE0885F95"));
    static final boolean n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    byte c[];
    byte d[];
    List e;

    public ProtectionSystemSpecificHeaderBox()
    {
        super("pssh");
        e = new ArrayList();
    }

    private static void a()
    {
        Factory factory = new Factory("ProtectionSystemSpecificHeaderBox.java", com/mp4parser/iso23001/part7/ProtectionSystemSpecificHeaderBox);
        o = factory.a("method-execution", factory.a("1", "getKeyIds", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "", "", "", "java.util.List"), 43);
        p = factory.a("method-execution", factory.a("1", "setKeyIds", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "java.util.List", "keyIds", "", "void"), 47);
        q = factory.a("method-execution", factory.a("1", "getSystemId", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "", "", "", "[B"), 54);
        r = factory.a("method-execution", factory.a("1", "setSystemId", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "[B", "systemId", "", "void"), 58);
        s = factory.a("method-execution", factory.a("1", "getContent", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "", "", "", "[B"), 63);
        t = factory.a("method-execution", factory.a("1", "setContent", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "[B", "content", "", "void"), 67);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        d = new byte[16];
        bytebuffer.get(d);
        if (q() <= 0) goto _L2; else goto _L1
_L1:
        int i = CastUtils.a(IsoTypeReader.b(bytebuffer));
_L5:
        int j = i - 1;
        if (i > 0) goto _L3; else goto _L2
_L2:
        long l = IsoTypeReader.b(bytebuffer);
        c = new byte[bytebuffer.remaining()];
        bytebuffer.get(c);
        byte abyte0[];
        if (!n && l != (long)c.length)
        {
            throw new AssertionError();
        } else
        {
            return;
        }
_L3:
        abyte0 = new byte[16];
        bytebuffer.get(abyte0);
        e.add(UUIDConverter.a(abyte0));
        i = j;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        if (!n && d.length != 16)
        {
            throw new AssertionError();
        }
        bytebuffer.put(d, 0, 16);
        if (q() <= 0) goto _L2; else goto _L1
_L1:
        Iterator iterator;
        IsoTypeWriter.b(bytebuffer, e.size());
        iterator = e.iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        IsoTypeWriter.b(bytebuffer, c.length);
        bytebuffer.put(c);
        return;
_L3:
        bytebuffer.put(UUIDConverter.a((UUID)iterator.next()));
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected long d()
    {
        long l = 24 + c.length;
        if (q() > 0)
        {
            l = l + 4L + (long)(16 * e.size());
        }
        return l;
    }

    static 
    {
        a();
        boolean flag;
        if (!com/mp4parser/iso23001/part7/ProtectionSystemSpecificHeaderBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        n = flag;
    }
}
