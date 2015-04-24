// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.util.UUIDConverter;
import java.nio.ByteBuffer;
import java.util.UUID;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            GroupEntry

public class CencSampleEncryptionInformationGroupEntry extends GroupEntry
{

    private boolean a;
    private byte b;
    private UUID c;

    public CencSampleEncryptionInformationGroupEntry()
    {
    }

    public String a()
    {
        return "seig";
    }

    public void a(ByteBuffer bytebuffer)
    {
        boolean flag = true;
        byte abyte0[];
        if (IsoTypeReader.c(bytebuffer) != flag)
        {
            flag = false;
        }
        a = flag;
        b = (byte)IsoTypeReader.f(bytebuffer);
        abyte0 = new byte[16];
        bytebuffer.get(abyte0);
        c = UUIDConverter.a(abyte0);
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(20);
        int i;
        if (a)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        IsoTypeWriter.a(bytebuffer, i);
        if (a)
        {
            IsoTypeWriter.d(bytebuffer, b);
            bytebuffer.put(UUIDConverter.a(c));
        } else
        {
            bytebuffer.put(new byte[17]);
        }
        bytebuffer.rewind();
        return bytebuffer;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            CencSampleEncryptionInformationGroupEntry cencsampleencryptioninformationgroupentry = (CencSampleEncryptionInformationGroupEntry)obj;
            if (a != cencsampleencryptioninformationgroupentry.a)
            {
                return false;
            }
            if (b != cencsampleencryptioninformationgroupentry.b)
            {
                return false;
            }
            if (c == null ? cencsampleencryptioninformationgroupentry.c != null : !c.equals(cencsampleencryptioninformationgroupentry.c))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        byte byte0;
        int i;
        int j;
        if (a)
        {
            byte0 = 7;
        } else
        {
            byte0 = 19;
        }
        i = 31 * (byte0 * 31 + b);
        if (c != null)
        {
            j = c.hashCode();
        } else
        {
            j = 0;
        }
        return j + i;
    }

    public String toString()
    {
        return (new StringBuilder("CencSampleEncryptionInformationGroupEntry{isEncrypted=")).append(a).append(", ivSize=").append(b).append(", kid=").append(c).append('}').toString();
    }
}
