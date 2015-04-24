// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.Hex;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.objectdescriptors:
//            BaseDescriptor

public class ExtensionDescriptor extends BaseDescriptor
{

    private static Logger b = Logger.getLogger(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionDescriptor.getName());
    byte a[];

    public ExtensionDescriptor()
    {
    }

    public void a(ByteBuffer bytebuffer)
    {
        if (a() > 0)
        {
            a = new byte[U];
            bytebuffer.get(a);
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ExtensionDescriptor");
        StringBuilder stringbuilder1 = stringbuilder.append("{bytes=");
        String s;
        if (a == null)
        {
            s = "null";
        } else
        {
            s = Hex.a(a);
        }
        stringbuilder1.append(s);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
