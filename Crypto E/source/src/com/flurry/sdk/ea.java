// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

// Referenced classes of package com.flurry.sdk:
//            fb, el, do, fa, 
//            dx

public final class ea
{

    private static final String a = com/flurry/sdk/ea.getSimpleName();
    private static final Set b = i();
    private static String c;

    public ea()
    {
    }

    public static String a()
    {
        com/flurry/sdk/ea;
        JVM INSTR monitorenter ;
        if (Looper.getMainLooper().getThread() == Thread.currentThread())
        {
            throw new IllegalStateException("Must be called from a background thread!");
        }
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        com/flurry/sdk/ea;
        JVM INSTR monitorexit ;
        throw exception;
        String s;
        if (TextUtils.isEmpty(c))
        {
            c = g();
        }
        s = c;
        com/flurry/sdk/ea;
        JVM INSTR monitorexit ;
        return s;
    }

    private static String a(DataInput datainput)
    {
        if (1 != datainput.readInt())
        {
            return null;
        } else
        {
            return datainput.readUTF();
        }
    }

    private static void a(String s, DataOutput dataoutput)
    {
        dataoutput.writeInt(1);
        dataoutput.writeUTF(s);
    }

    static void a(String s, File file)
    {
        DataOutputStream dataoutputstream = new DataOutputStream(new FileOutputStream(file));
        a(s, ((DataOutput) (dataoutputstream)));
        fb.a(dataoutputstream);
        return;
        Throwable throwable;
        throwable;
        dataoutputstream = null;
_L4:
        el.a(6, a, "Error when saving phoneId", throwable);
        fb.a(dataoutputstream);
        return;
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

    static boolean a(String s)
    {
        while (TextUtils.isEmpty(s) || c(s.toLowerCase(Locale.US))) 
        {
            return false;
        }
        return true;
    }

    static String b()
    {
        String s = android.provider.Settings.Secure.getString(com.flurry.sdk.do.a().b().getContentResolver(), "android_id");
        if (!a(s))
        {
            return null;
        } else
        {
            return (new StringBuilder()).append("AND").append(s).toString();
        }
    }

    private static String b(DataInput datainput)
    {
        while (46586 != datainput.readUnsignedShort() || 2 != datainput.readUnsignedShort()) 
        {
            return null;
        }
        datainput.readUTF();
        return datainput.readUTF();
    }

    static void b(String s)
    {
        File file;
        if (!TextUtils.isEmpty(s))
        {
            if (fa.a(file = com.flurry.sdk.do.a().b().getFileStreamPath(h())))
            {
                a(s, file);
                return;
            }
        }
    }

    static String c()
    {
        String s = e();
        if (TextUtils.isEmpty(s))
        {
            s = f();
            if (TextUtils.isEmpty(s))
            {
                s = d();
            }
            b(s);
        }
        return s;
    }

    private static boolean c(String s)
    {
        return b.contains(s);
    }

    static String d()
    {
        long l = Double.doubleToLongBits(Math.random()) + 37L * (System.nanoTime() + (long)(37 * dx.c(com.flurry.sdk.do.a().b()).hashCode()));
        return (new StringBuilder()).append("ID").append(Long.toString(l, 16)).toString();
    }

    static String e()
    {
        File file;
        file = com.flurry.sdk.do.a().b().getFileStreamPath(h());
        if (file == null || !file.exists())
        {
            return null;
        }
        DataInputStream datainputstream = new DataInputStream(new FileInputStream(file));
        String s = a(datainputstream);
        fb.a(datainputstream);
        return s;
        Throwable throwable;
        throwable;
        datainputstream = null;
_L4:
        el.a(6, a, "Error when loading phoneId", throwable);
        fb.a(datainputstream);
        return null;
        Exception exception1;
        exception1;
        Exception exception;
        datainputstream = null;
        exception = exception1;
_L2:
        fb.a(datainputstream);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        throwable;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static String f()
    {
        File file = com.flurry.sdk.do.a().b().getFilesDir();
        if (file != null) goto _L2; else goto _L1
_L1:
        static final class _cls1
            implements FilenameFilter
        {

            public boolean accept(File file2, String s2)
            {
                return s2.startsWith(".flurryagent.");
            }

        }

        String as[];
        return null;
_L2:
        if ((as = file.list(new _cls1())) == null || as.length == 0) goto _L1; else goto _L3
_L3:
        File file1;
        String s = as[0];
        file1 = com.flurry.sdk.do.a().b().getFileStreamPath(s);
        if (file1 == null || !file1.exists()) goto _L1; else goto _L4
_L4:
        DataInputStream datainputstream = new DataInputStream(new FileInputStream(file1));
        String s1 = b(datainputstream);
        fb.a(datainputstream);
        return s1;
        Throwable throwable;
        throwable;
        datainputstream = null;
_L8:
        el.a(6, a, "Error when loading phoneId", throwable);
        fb.a(datainputstream);
        return null;
        Exception exception1;
        exception1;
        Exception exception;
        datainputstream = null;
        exception = exception1;
_L6:
        fb.a(datainputstream);
        throw exception;
        exception;
        if (true) goto _L6; else goto _L5
_L5:
        throwable;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private static String g()
    {
        String s = b();
        if (!TextUtils.isEmpty(s))
        {
            return s;
        } else
        {
            return c();
        }
    }

    private static String h()
    {
        return ".flurryb.";
    }

    private static Set i()
    {
        HashSet hashset = new HashSet();
        hashset.add("null");
        hashset.add("9774d56d682e549c");
        hashset.add("dead00beef");
        return Collections.unmodifiableSet(hashset);
    }

}
