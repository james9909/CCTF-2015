// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.snapchat.android.Timber;
import com.snapchat.android.util.threading.ThreadUtils;
import java.io.IOException;

// Referenced classes of package com.snapchat.android.util.debug:
//            DebugCapturer, ScApplicationInfo

public class DebugCrashReporter
    implements com.snapchat.android.SnapchatApplication.Crashable
{

    public DebugCrashReporter()
    {
    }

    private void b(Context context, Thread thread, Throwable throwable)
    {
        Uri uri1 = Uri.fromFile(DebugCapturer.a(context, true));
        Uri uri = uri1;
_L2:
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("plain/text");
        intent.setFlags(0x10000000);
        intent.putExtra("android.intent.extra.EMAIL", new String[] {
            "shake2reportdroid@snapchat.com"
        });
        intent.putExtra("android.intent.extra.SUBJECT", "[Android Alpha Crash] New Crash Report");
        intent.putExtra("android.intent.extra.TEXT", c(context, thread, throwable));
        if (uri != null)
        {
            intent.putExtra("android.intent.extra.STREAM", uri);
        }
        context.startActivity(intent);
        return;
        IOException ioexception;
        ioexception;
        Timber.a("DebugCrashReporter", ioexception);
        uri = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String c(Context context, Thread thread, Throwable throwable)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(a(throwable));
        stringbuilder.append("\n\n").append("Thread name: ").append(thread.getName());
        stringbuilder.append("\n\n").append("Device info: ").append(ScApplicationInfo.a(context));
        stringbuilder.append("\n\n").append("Oh noes! Sorry for the crash. Please describe what happened so we can fix this:").append("\n");
        return stringbuilder.toString();
    }

    StringBuilder a(Throwable throwable)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (throwable == null)
        {
            return stringbuilder;
        }
        if (throwable instanceof StackOverflowError)
        {
            stringbuilder.append(a(throwable.getCause()));
            StackTraceElement astacktraceelement[] = throwable.getStackTrace();
            stringbuilder.append("java.lang.StackOverflowError: StackOverflowError").append("\n");
            for (int i = 0; i < 10 && astacktraceelement.length > i; i++)
            {
                stringbuilder.append(astacktraceelement[i].toString()).append("\n");
            }

        } else
        {
            stringbuilder.append(Log.getStackTraceString(throwable));
        }
        return stringbuilder.append("\n");
    }

    public void a(Context context, Thread thread, Throwable throwable)
    {
        b(context, thread, throwable);
        ThreadUtils.a(3000L);
    }
}
