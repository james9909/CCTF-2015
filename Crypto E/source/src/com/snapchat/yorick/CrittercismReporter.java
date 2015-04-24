// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.yorick;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.crittercism.app.Crittercism;
import java.util.concurrent.Executor;

// Referenced classes of package com.snapchat.yorick:
//            AnrListener, ParsedTrace, Timber

public class CrittercismReporter
    implements AnrListener
{

    public CrittercismReporter()
    {
    }

    public void a(ParsedTrace parsedtrace)
    {
        Runnable runnable = new Runnable(parsedtrace) {

            final ParsedTrace a;
            final CrittercismReporter b;

            public void run()
            {
                String s = a.b;
                if (!TextUtils.isEmpty(s))
                {
                    Crittercism.a((new AnrError.Builder(s)).a());
                    return;
                } else
                {
                    Timber.a("The parsed trace contains no stack traces.", new Object[0]);
                    return;
                }
            }

            
            {
                b = CrittercismReporter.this;
                a = parsedtrace;
                super();
            }
        };
        AsyncTask.THREAD_POOL_EXECUTOR.execute(runnable);
    }
}
