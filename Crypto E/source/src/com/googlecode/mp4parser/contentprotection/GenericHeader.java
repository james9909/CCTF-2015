// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.contentprotection;

import com.googlecode.mp4parser.boxes.piff.ProtectionSpecificHeader;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.UUID;

public class GenericHeader extends ProtectionSpecificHeader
{

    public static UUID b;
    ByteBuffer c;

    public GenericHeader()
    {
    }

    public ByteBuffer a()
    {
        return c;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c = bytebuffer;
    }

    static 
    {
        b = UUID.fromString("00000000-0000-0000-0000-000000000000");
        ProtectionSpecificHeader.a.put(b, com/googlecode/mp4parser/contentprotection/GenericHeader);
    }
}
