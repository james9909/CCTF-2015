// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.os.ConditionVariable;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

// Referenced classes of package crittercism.android:
//            cq, dg

public final class cr extends cq
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(crittercism/android/cr$a, s);
        }

        public static a[] values()
        {
            return (a[])c.clone();
        }

        static 
        {
            a = new a("STDOUT", 0);
            b = new a("STDERR", 1);
            a aa[] = new a[2];
            aa[0] = a;
            aa[1] = b;
            c = aa;
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }


    private BufferedReader a;
    private InputStream b;
    private ConditionVariable c;
    private Process d;
    private StringBuilder e;
    private a f;
    private boolean g;

    public cr(Process process, ConditionVariable conditionvariable, a a1)
    {
        a = null;
        b = null;
        c = conditionvariable;
        d = process;
        e = new StringBuilder();
        f = a1;
        g = false;
    }

    private void c()
    {
        this;
        JVM INSTR monitorenter ;
        g = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a()
    {
        if (f != a.a) goto _L2; else goto _L1
_L1:
        InputStream inputstream1 = d.getInputStream();
_L4:
        b = inputstream1;
        a = new BufferedReader(new InputStreamReader(b));
_L3:
        String s = a.readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        e.append(s).append('\n');
          goto _L3
        IOException ioexception2;
        ioexception2;
        dg.b();
        dg.c();
_L5:
        a.close();
_L6:
        b.close();
_L7:
        a = null;
        c();
        if (c != null)
        {
            c.open();
        }
        return;
_L2:
        InputStream inputstream = d.getErrorStream();
        inputstream1 = inputstream;
          goto _L4
        Exception exception;
        exception;
        (new StringBuilder("Exception when attempting to read stream: ")).append(exception.getClass().getName());
        dg.b();
        dg.c();
          goto _L5
        IOException ioexception;
        ioexception;
        dg.b();
        dg.c();
          goto _L6
        Exception exception1;
        exception1;
        a = null;
        throw exception1;
        IOException ioexception1;
        ioexception1;
        dg.b();
        dg.c();
          goto _L7
    }

    public final StringBuilder b()
    {
        this;
        JVM INSTR monitorenter ;
        if (!g) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder = e;
_L4:
        this;
        JVM INSTR monitorexit ;
        return stringbuilder;
_L2:
        stringbuilder = null;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }
}
