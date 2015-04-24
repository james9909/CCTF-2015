// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.UUIDConverter;
import java.nio.ByteBuffer;
import java.util.UUID;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.googlecode.mp4parser.boxes.piff:
//            ProtectionSpecificHeader

public class UuidBasedProtectionSystemSpecificHeaderBox extends AbstractFullBox
{

    public static byte a[] = {
        -48, -118, 79, 24, 16, -13, 74, -126, -74, -56, 
        50, -40, -85, -95, -125, -45
    };
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    UUID b;
    ProtectionSpecificHeader c;

    public UuidBasedProtectionSystemSpecificHeaderBox()
    {
        super("uuid", a);
    }

    private static void a()
    {
        Factory factory = new Factory("UuidBasedProtectionSystemSpecificHeaderBox.java", com/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox);
        d = factory.a("method-execution", factory.a("1", "getSystemId", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.util.UUID"), 67);
        e = factory.a("method-execution", factory.a("1", "setSystemId", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "java.util.UUID", "systemId", "", "void"), 71);
        n = factory.a("method-execution", factory.a("1", "getSystemIdString", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.lang.String"), 75);
        o = factory.a("method-execution", factory.a("1", "getProtectionSpecificHeader", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "com.googlecode.mp4parser.boxes.piff.ProtectionSpecificHeader"), 79);
        p = factory.a("method-execution", factory.a("1", "getProtectionSpecificHeaderString", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.lang.String"), 83);
        q = factory.a("method-execution", factory.a("1", "setProtectionSpecificHeader", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "com.googlecode.mp4parser.boxes.piff.ProtectionSpecificHeader", "protectionSpecificHeader", "", "void"), 87);
        r = factory.a("method-execution", factory.a("1", "toString", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.lang.String"), 92);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        byte abyte0[] = new byte[16];
        bytebuffer.get(abyte0);
        b = UUIDConverter.a(abyte0);
        CastUtils.a(IsoTypeReader.b(bytebuffer));
        c = ProtectionSpecificHeader.a(b, bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.a(bytebuffer, b.getMostSignificantBits());
        IsoTypeWriter.a(bytebuffer, b.getLeastSignificantBits());
        ByteBuffer bytebuffer1 = c.a();
        bytebuffer1.rewind();
        IsoTypeWriter.b(bytebuffer, bytebuffer1.limit());
        bytebuffer.put(bytebuffer1);
    }

    protected long d()
    {
        return (long)(24 + c.a().limit());
    }

    public byte[] o()
    {
        return a;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(r, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("UuidBasedProtectionSystemSpecificHeaderBox");
        stringbuilder.append("{systemId=").append(b.toString());
        stringbuilder.append(", dataSize=").append(c.a().limit());
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        a();
    }
}
