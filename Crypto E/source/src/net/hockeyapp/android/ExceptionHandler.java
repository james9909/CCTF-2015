// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.os.Process;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Date;
import java.util.UUID;

// Referenced classes of package net.hockeyapp.android:
//            Constants, CrashManagerListener

public class ExceptionHandler
    implements Thread.UncaughtExceptionHandler
{

    private boolean a;
    private CrashManagerListener b;
    private Thread.UncaughtExceptionHandler c;

    public ExceptionHandler(Thread.UncaughtExceptionHandler uncaughtexceptionhandler, CrashManagerListener crashmanagerlistener, boolean flag)
    {
        a = false;
        c = uncaughtexceptionhandler;
        a = flag;
        b = crashmanagerlistener;
    }

    private static String a(String s)
    {
        if (s != null && s.length() > 255)
        {
            s = s.substring(0, 255);
        }
        return s;
    }

    private static void a(String s, String s1)
    {
        try
        {
            String s2 = (new StringBuilder()).append(Constants.a).append("/").append(s1).toString();
            if (s.trim().length() > 0)
            {
                BufferedWriter bufferedwriter = new BufferedWriter(new FileWriter(s2));
                bufferedwriter.write(s);
                bufferedwriter.flush();
                bufferedwriter.close();
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static void a(Throwable throwable, CrashManagerListener crashmanagerlistener)
    {
        Date date = new Date();
        StringWriter stringwriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringwriter));
        String s;
        BufferedWriter bufferedwriter;
        try
        {
            s = UUID.randomUUID().toString();
            String s1 = (new StringBuilder()).append(Constants.a).append("/").append(s).append(".stacktrace").toString();
            Log.d("HockeyApp", (new StringBuilder()).append("Writing unhandled exception to: ").append(s1).toString());
            bufferedwriter = new BufferedWriter(new FileWriter(s1));
            bufferedwriter.write((new StringBuilder()).append("Package: ").append(Constants.d).append("\n").toString());
            bufferedwriter.write((new StringBuilder()).append("Version Code: ").append(Constants.b).append("\n").toString());
            bufferedwriter.write((new StringBuilder()).append("Version Name: ").append(Constants.c).append("\n").toString());
        }
        catch (Exception exception)
        {
            Log.e("HockeyApp", "Error saving exception stacktrace!\n", exception);
            return;
        }
        if (crashmanagerlistener == null)
        {
            break MISSING_BLOCK_LABEL_217;
        }
        if (!crashmanagerlistener.h())
        {
            break MISSING_BLOCK_LABEL_310;
        }
        bufferedwriter.write((new StringBuilder()).append("Android: ").append(Constants.e).append("\n").toString());
        bufferedwriter.write((new StringBuilder()).append("Manufacturer: ").append(Constants.g).append("\n").toString());
        bufferedwriter.write((new StringBuilder()).append("Model: ").append(Constants.f).append("\n").toString());
        bufferedwriter.write((new StringBuilder()).append("Date: ").append(date).append("\n").toString());
        bufferedwriter.write("\n");
        bufferedwriter.write(stringwriter.toString());
        bufferedwriter.flush();
        bufferedwriter.close();
        if (crashmanagerlistener == null)
        {
            break MISSING_BLOCK_LABEL_456;
        }
        a(a(crashmanagerlistener.e()), (new StringBuilder()).append(s).append(".user").toString());
        a(a(crashmanagerlistener.f()), (new StringBuilder()).append(s).append(".contact").toString());
        a(crashmanagerlistener.d(), (new StringBuilder()).append(s).append(".description").toString());
    }

    public void a(CrashManagerListener crashmanagerlistener)
    {
        b = crashmanagerlistener;
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        if (Constants.a == null)
        {
            c.uncaughtException(thread, throwable);
            return;
        }
        a(throwable, b);
        if (!a)
        {
            c.uncaughtException(thread, throwable);
            return;
        } else
        {
            Process.killProcess(Process.myPid());
            System.exit(10);
            return;
        }
    }
}
