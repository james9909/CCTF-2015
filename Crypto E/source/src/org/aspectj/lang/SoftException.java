// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.lang;

import java.io.PrintStream;
import java.io.PrintWriter;

public class SoftException extends RuntimeException
{

    private static final boolean b;
    Throwable a;

    public Throwable getCause()
    {
        return a;
    }

    public void printStackTrace()
    {
        printStackTrace(System.err);
    }

    public void printStackTrace(PrintStream printstream)
    {
        super.printStackTrace(printstream);
        Throwable throwable = a;
        if (!b && throwable != null)
        {
            printstream.print("Caused by: ");
            throwable.printStackTrace(printstream);
        }
    }

    public void printStackTrace(PrintWriter printwriter)
    {
        super.printStackTrace(printwriter);
        Throwable throwable = a;
        if (!b && throwable != null)
        {
            printwriter.print("Caused by: ");
            throwable.printStackTrace(printwriter);
        }
    }

    static 
    {
        Class.forName("java.nio.Buffer");
        boolean flag = true;
_L2:
        b = flag;
        return;
        Throwable throwable;
        throwable;
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
