// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.yorick;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.snapchat.yorick:
//            TraceParser, CloseableUtils, Timber, ParsedTrace, 
//            AnrListener

public final class AnrDetector
{

    private List a;
    private Thread.UncaughtExceptionHandler b;

    public AnrDetector()
    {
        a = new ArrayList(1);
    }

    private ParsedTrace a(TraceParser traceparser, FileReader filereader)
    {
        BufferedReader bufferedreader = new BufferedReader(filereader);
        ParsedTrace parsedtrace = traceparser.a(bufferedreader);
        CloseableUtils.a(bufferedreader);
        return parsedtrace;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        CloseableUtils.a(bufferedreader);
        return null;
        Exception exception;
        exception;
        CloseableUtils.a(bufferedreader);
        throw exception;
    }

    static Thread.UncaughtExceptionHandler a(AnrDetector anrdetector)
    {
        return anrdetector.b;
    }

    public void a(Context context)
    {
        if (a.isEmpty())
        {
            throw new IllegalStateException("You must call registerListener() before detectAnrs()");
        } else
        {
            Runnable runnable = new Runnable(context) {

                final Context a;
                final AnrDetector b;

                public void run()
                {
                    b.b(a);
_L1:
                    return;
                    Throwable throwable;
                    throwable;
                    if (AnrDetector.a(b) != null)
                    {
                        AnrDetector.a(b).uncaughtException(Thread.currentThread(), throwable);
                        return;
                    }
                      goto _L1
                }

            
            {
                b = AnrDetector.this;
                a = context;
                super();
            }
            };
            AsyncTask.THREAD_POOL_EXECUTOR.execute(runnable);
            return;
        }
    }

    public void a(AnrListener anrlistener)
    {
        a.add(anrlistener);
    }

    public void a(Thread.UncaughtExceptionHandler uncaughtexceptionhandler)
    {
        b = uncaughtexceptionhandler;
    }

    boolean a(int i, SharedPreferences sharedpreferences)
    {
        if (sharedpreferences.getInt("LAST_INSTALL_VERSION", -1) == i)
        {
            return true;
        } else
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putInt("LAST_INSTALL_VERSION", i);
            editor.putLong("LAST_DETECTED_ANR", System.currentTimeMillis());
            editor.apply();
            return false;
        }
    }

    boolean a(long l, SharedPreferences sharedpreferences)
    {
        while (l == -1L || l <= sharedpreferences.getLong("LAST_DETECTED_ANR", 0x8000000000000000L)) 
        {
            return false;
        }
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putLong("LAST_DETECTED_ANR", l);
        editor.apply();
        return true;
    }

    void b(Context context)
    {
        SharedPreferences sharedpreferences;
        String s;
        sharedpreferences = context.getSharedPreferences("YORICK", 0);
        s = context.getPackageName();
        if (s != null) goto _L2; else goto _L1
_L1:
        Timber.b("Failed to get package name. Aborting.", new Object[0]);
_L4:
        return;
_L2:
        if (!a(c(context), sharedpreferences) || !(new File("/data/anr/traces.txt")).exists()) goto _L4; else goto _L3
_L3:
        TraceParser traceparser = new TraceParser(s);
        FileReader filereader = new FileReader("/data/anr/traces.txt");
        ParsedTrace parsedtrace = a(traceparser, filereader);
        if (parsedtrace == null)
        {
            CloseableUtils.a(filereader);
            return;
        }
        boolean flag = a(parsedtrace.a, sharedpreferences);
        if (!flag)
        {
            CloseableUtils.a(filereader);
            return;
        }
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((AnrListener)iterator.next()).a(parsedtrace)) { }
          goto _L5
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
_L9:
        filenotfoundexception.printStackTrace();
        CloseableUtils.a(filereader);
        return;
_L5:
        CloseableUtils.a(filereader);
        return;
        Exception exception;
        exception;
        filereader = null;
_L7:
        CloseableUtils.a(filereader);
        throw exception;
        exception;
        if (true) goto _L7; else goto _L6
_L6:
        filenotfoundexception;
        filereader = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    int c(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        int i;
        try
        {
            i = packagemanager.getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new RuntimeException(namenotfoundexception);
        }
        return i;
    }
}
