// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.Hex;
import com.googlecode.mp4parser.contentprotection.GenericHeader;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public abstract class ProtectionSpecificHeader
{

    public static Map a = new HashMap();

    public ProtectionSpecificHeader()
    {
    }

    public static ProtectionSpecificHeader a(UUID uuid, ByteBuffer bytebuffer)
    {
        Class class1 = (Class)a.get(uuid);
        Object obj;
        if (class1 != null)
        {
            try
            {
                obj = (ProtectionSpecificHeader)class1.newInstance();
            }
            catch (InstantiationException instantiationexception)
            {
                throw new RuntimeException(instantiationexception);
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                throw new RuntimeException(illegalaccessexception);
            }
        } else
        {
            obj = null;
        }
        if (obj == null)
        {
            obj = new GenericHeader();
        }
        ((ProtectionSpecificHeader) (obj)).a(bytebuffer);
        return ((ProtectionSpecificHeader) (obj));
    }

    public abstract ByteBuffer a();

    public abstract void a(ByteBuffer bytebuffer);

    public boolean equals(Object obj)
    {
        throw new RuntimeException("somebody called equals on me but that's not supposed to happen.");
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ProtectionSpecificHeader");
        stringbuilder.append("{data=");
        ByteBuffer bytebuffer = a().duplicate();
        bytebuffer.rewind();
        byte abyte0[] = new byte[bytebuffer.limit()];
        bytebuffer.get(abyte0);
        stringbuilder.append(Hex.a(abyte0));
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
