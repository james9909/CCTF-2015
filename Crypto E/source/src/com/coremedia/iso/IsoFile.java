// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import com.googlecode.mp4parser.BasicContainer;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.util.Logger;
import java.io.Closeable;
import java.io.UnsupportedEncodingException;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.coremedia.iso:
//            BoxParser

public class IsoFile extends BasicContainer
    implements Closeable
{

    private static Logger a = Logger.a(com/coremedia/iso/IsoFile);

    public IsoFile(DataSource datasource, BoxParser boxparser)
    {
        a(datasource, datasource.a(), boxparser);
    }

    public static String a(byte abyte0[])
    {
        byte abyte1[] = new byte[4];
        if (abyte0 != null)
        {
            System.arraycopy(abyte0, 0, abyte1, 0, Math.min(abyte0.length, 4));
        }
        String s;
        try
        {
            s = new String(abyte1, "ISO-8859-1");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new Error("Required character encoding is missing", unsupportedencodingexception);
        }
        return s;
    }

    public static byte[] a(String s)
    {
        byte abyte0[] = new byte[4];
        if (s == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i < Math.min(4, s.length())) goto _L3; else goto _L2
_L2:
        return abyte0;
_L3:
        abyte0[i] = (byte)s.charAt(i);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        b(writablebytechannel);
    }

    public void close()
    {
        g.close();
    }

    public String toString()
    {
        return (new StringBuilder("model(")).append(g.toString()).append(")").toString();
    }

}
