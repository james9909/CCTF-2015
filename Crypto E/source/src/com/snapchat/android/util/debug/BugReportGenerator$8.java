// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.app.Activity;
import android.graphics.Bitmap;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportGenerator, ShakeReporter

class c
    implements Runnable
{

    final Activity a;
    final ShakeReporter b;
    final Bitmap c;
    final BugReportGenerator d;

    public void run()
    {
        d.a(a, b, c);
    }

    (BugReportGenerator bugreportgenerator, Activity activity, ShakeReporter shakereporter, Bitmap bitmap)
    {
        d = bugreportgenerator;
        a = activity;
        b = shakereporter;
        c = bitmap;
        super();
    }
}
