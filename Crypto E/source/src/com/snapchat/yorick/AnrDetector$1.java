// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.yorick;

import android.content.Context;

// Referenced classes of package com.snapchat.yorick:
//            AnrDetector

class a
    implements Runnable
{

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

    Handler(AnrDetector anrdetector, Context context)
    {
        b = anrdetector;
        a = context;
        super();
    }
}
