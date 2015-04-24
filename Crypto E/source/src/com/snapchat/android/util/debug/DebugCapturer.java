// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.content.Context;
import com.crittercism.app.Crittercism;
import com.snapchat.android.SnapchatActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.util.network.CloseableUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

// Referenced classes of package com.snapchat.android.util.debug:
//            ReleaseManager

public class DebugCapturer
{

    private static final Queue a = new LinkedList();
    private static final Queue b = new LinkedList();

    public DebugCapturer()
    {
    }

    public static File a(Context context)
    {
        StringBuilder stringbuilder;
        Timber.b("DebugCapturer", "Capturing timber logs for shake2report.", new Object[0]);
        stringbuilder = new StringBuilder();
        a(context, "snapchat_shake2report_timber.txt");
        Queue queue = b;
        queue;
        JVM INSTR monitorenter ;
        for (Iterator iterator = b.iterator(); iterator.hasNext(); stringbuilder.append((String)iterator.next()).append("\n")) { }
        break MISSING_BLOCK_LABEL_79;
        Exception exception;
        exception;
        queue;
        JVM INSTR monitorexit ;
        throw exception;
        queue;
        JVM INSTR monitorexit ;
        a(context, "snapchat_shake2report_timber.txt", stringbuilder.toString(), false);
        return b(context, "snapchat_shake2report_timber.txt");
    }

    public static File a(Context context, boolean flag)
    {
        StringBuilder stringbuilder;
        Timber.b("DebugCapturer", "Capturing logs for shake2report.", new Object[0]);
        stringbuilder = new StringBuilder();
        a(context, "snapchat_shake2report.txt");
        Queue queue = a;
        queue;
        JVM INSTR monitorenter ;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); stringbuilder.append((String)iterator.next()).append("\n")) { }
        break MISSING_BLOCK_LABEL_81;
        Exception exception;
        exception;
        queue;
        JVM INSTR monitorexit ;
        throw exception;
        queue;
        JVM INSTR monitorexit ;
        String s = a();
        if (s.length() > 0)
        {
            stringbuilder.append("\n\n\nAddLive logs:\n");
            stringbuilder.append(s);
        }
        a(context, "snapchat_shake2report.txt", stringbuilder.toString(), flag);
        return b(context, "snapchat_shake2report.txt");
    }

    private static String a()
    {
        StringBuilder stringbuilder;
        String as[];
        stringbuilder = new StringBuilder();
        as = (new String[] {
            "logcat", "-d", "-v", "threadtime", "AddLive_SDK:V", "AddLive_SDK:V", "*:S"
        });
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(as).getInputStream()));
_L1:
        String s = bufferedreader.readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        stringbuilder.append(s);
        stringbuilder.append('\n');
          goto _L1
        IOException ioexception;
        ioexception;
        Timber.e("DebugCapturer", "Failed to collect AddLive logs:", new Object[0]);
        Timber.a("DebugCapturer", ioexception);
        return stringbuilder.toString();
    }

    public static void a(Context context, String s)
    {
        context.deleteFile(s);
    }

    private static void a(Context context, String s, String s1, boolean flag)
    {
        int i;
        FileOutputStream fileoutputstream;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        fileoutputstream = context.openFileOutput(s, i);
        fileoutputstream.write(s1.getBytes());
        CloseableUtils.a(fileoutputstream);
    }

    public static void a(String s)
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            String as[] = new String[4];
            as[0] = "[";
            as[1] = (new SimpleDateFormat("EEE MMM dd HH:mm:ss.SSS zzz yyyy")).format(new Date());
            as[2] = "] ";
            as[3] = s;
            a(as);
            return;
        }
    }

    public static void a(String s, String s1, String s2)
    {
        if (!ReleaseManager.f())
        {
            return;
        }
        String s3 = (new StringBuilder()).append("[").append((new SimpleDateFormat("EEE MMM dd HH:mm:ss.SSS zzz yyyy")).format(new Date())).append("] ").append("(").append(s).append(")").append(s1).append(": ").append(s2).toString();
        synchronized (b)
        {
            if (b.size() >= 3000)
            {
                b.remove();
            }
            b.add(s3);
        }
        return;
        exception;
        queue;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static transient void a(String as[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String s = as[j];
            if (s != null)
            {
                stringbuilder.append(s);
            }
        }

        synchronized (a)
        {
            if (a.size() >= 3000)
            {
                a.remove();
            }
            a.add(stringbuilder.toString());
        }
        if (SnapchatActivity.x())
        {
            Crittercism.a(stringbuilder.toString());
        }
        return;
        exception;
        queue;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected static File b(Context context, String s)
    {
        return context.getFileStreamPath(s);
    }

    public static void b(String s, String s1, String s2)
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            String as[] = new String[9];
            as[0] = "[";
            as[1] = (new SimpleDateFormat("EEE MMM dd HH:mm:ss.SSS zzz yyyy")).format(new Date());
            as[2] = "] ";
            as[3] = "(";
            as[4] = s;
            as[5] = ")";
            as[6] = s1;
            as[7] = ": ";
            as[8] = s2;
            a(as);
            return;
        }
    }

}
