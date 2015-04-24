// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

// Referenced classes of package com.flurry.sdk:
//            fb

public final class da
{

    private int a;
    private long b;
    private String c;
    private String d;
    private String e;
    private Throwable f;

    public da(int i, long l, String s, String s1, String s2, Throwable throwable)
    {
        a = i;
        b = l;
        c = s;
        d = s1;
        e = s2;
        f = throwable;
    }

    public int a()
    {
        return b().length;
    }

    public byte[] b()
    {
        ByteArrayOutputStream bytearrayoutputstream;
        DataOutputStream dataoutputstream;
        bytearrayoutputstream = new ByteArrayOutputStream();
        dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        dataoutputstream.writeShort(a);
        dataoutputstream.writeLong(b);
        dataoutputstream.writeUTF(c);
        dataoutputstream.writeUTF(d);
        dataoutputstream.writeUTF(e);
        if (f == null) goto _L2; else goto _L1
_L1:
        if (c != "uncaught") goto _L4; else goto _L3
_L3:
        dataoutputstream.writeByte(3);
_L7:
        StringBuilder stringbuilder;
        String s;
        StackTraceElement astacktraceelement[];
        int i;
        dataoutputstream.writeByte(2);
        stringbuilder = new StringBuilder("");
        s = System.getProperty("line.separator");
        astacktraceelement = f.getStackTrace();
        i = astacktraceelement.length;
        int j = 0;
_L6:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append(astacktraceelement[j]);
        stringbuilder.append(s);
        j++;
        if (true) goto _L6; else goto _L5
_L4:
        dataoutputstream.writeByte(2);
          goto _L7
        IOException ioexception;
        ioexception;
_L15:
        byte abyte0[] = new byte[0];
        fb.a(dataoutputstream);
        return abyte0;
_L5:
        if (f.getCause() == null) goto _L9; else goto _L8
_L8:
        StackTraceElement astacktraceelement1[];
        int k;
        stringbuilder.append(s);
        stringbuilder.append("Caused by: ");
        astacktraceelement1 = f.getCause().getStackTrace();
        k = astacktraceelement1.length;
        int l = 0;
_L10:
        if (l >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append(astacktraceelement1[l]);
        stringbuilder.append(s);
        l++;
        if (true) goto _L10; else goto _L9
_L9:
        byte abyte2[] = stringbuilder.toString().getBytes();
        dataoutputstream.writeInt(abyte2.length);
        dataoutputstream.write(abyte2);
_L11:
        byte abyte1[];
        dataoutputstream.flush();
        abyte1 = bytearrayoutputstream.toByteArray();
        fb.a(dataoutputstream);
        return abyte1;
_L2:
        dataoutputstream.writeByte(1);
        dataoutputstream.writeByte(0);
          goto _L11
        Exception exception;
        exception;
_L13:
        fb.a(dataoutputstream);
        throw exception;
        Exception exception1;
        exception1;
        exception = exception1;
        dataoutputstream = null;
        if (true) goto _L13; else goto _L12
_L12:
        IOException ioexception1;
        ioexception1;
        dataoutputstream = null;
        if (true) goto _L15; else goto _L14
_L14:
    }

    public String c()
    {
        return c;
    }
}
