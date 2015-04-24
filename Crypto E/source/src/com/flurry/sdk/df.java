// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.content.Context;
import android.os.Looper;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.UUID;

// Referenced classes of package com.flurry.sdk:
//            do, el, fa, fb

public class df
{

    private static final String d = com/flurry/sdk/df.getSimpleName();
    String a;
    long b;
    int c;
    private File e;

    public df()
    {
        a = null;
        b = -1L;
        c = -1;
        e = null;
        a = UUID.randomUUID().toString();
        e = com.flurry.sdk.do.a().b().getFileStreamPath((new StringBuilder()).append(".flurrydatasenderblock.").append(a).toString());
    }

    public df(String s)
    {
        a = null;
        b = -1L;
        c = -1;
        e = null;
        a = s;
        e = com.flurry.sdk.do.a().b().getFileStreamPath((new StringBuilder()).append(".flurrydatasenderblock.").append(a).toString());
    }

    public String a()
    {
        return a;
    }

    public boolean a(byte abyte0[])
    {
        boolean flag;
        flag = false;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            el.a(6, d, "setData(byte[]) running on the MAIN thread!");
        }
        el.a(4, d, (new StringBuilder()).append("Writing FlurryDataSenderBlockInfo: ").append(e.getAbsolutePath()).toString());
        boolean flag1 = fa.a(e);
        if (!flag1)
        {
            fb.a(null);
            return false;
        }
        DataOutputStream dataoutputstream = new DataOutputStream(new FileOutputStream(e));
        int i;
        i = abyte0.length;
        dataoutputstream.writeShort(i);
        dataoutputstream.write(abyte0);
        dataoutputstream.writeShort(0);
        flag = true;
        c = i;
        b = System.currentTimeMillis();
        fb.a(dataoutputstream);
        return flag;
        Throwable throwable;
        throwable;
        dataoutputstream = null;
_L4:
        el.a(6, d, "", throwable);
        fb.a(dataoutputstream);
        return flag;
        Exception exception;
        exception;
        dataoutputstream = null;
_L2:
        fb.a(dataoutputstream);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        throwable;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public byte[] b()
    {
        byte abyte0[];
        abyte0 = null;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            el.a(6, d, "getData() running on the MAIN thread!");
        }
        if (!e.exists()) goto _L2; else goto _L1
_L1:
        el.a(4, d, (new StringBuilder()).append("Reading FlurryDataSenderBlockInfo: ").append(e.getAbsolutePath()).toString());
        DataInputStream datainputstream = new DataInputStream(new FileInputStream(e));
        int i = datainputstream.readUnsignedShort();
        if (i == 0)
        {
            fb.a(datainputstream);
            return null;
        }
        int j;
        abyte0 = new byte[i];
        datainputstream.readFully(abyte0);
        j = datainputstream.readUnsignedShort();
        if (j != 0);
        fb.a(datainputstream);
        return abyte0;
        Throwable throwable;
        throwable;
        datainputstream = null;
_L6:
        el.a(6, d, "Error when loading persistent file", throwable);
        fb.a(datainputstream);
        return abyte0;
        Exception exception1;
        exception1;
        Exception exception;
        datainputstream = null;
        exception = exception1;
_L4:
        fb.a(datainputstream);
        throw exception;
_L2:
        el.a(4, d, "Agent cache file doesn't exist.");
        return null;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        throwable;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean c()
    {
        if (e.exists())
        {
            if (e.delete())
            {
                el.a(4, d, "Deleted persistence file");
                b = -1L;
                c = -1;
                return true;
            }
            el.a(6, d, "Cannot delete persistence file");
        }
        return false;
    }

}
