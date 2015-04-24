// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.app.Activity;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportGenerator, ShakeReporter

class b
    implements Runnable
{

    final Activity a;
    final ShakeReporter b;
    final BugReportGenerator c;

    public void run()
    {
        c.b(a, b);
    }

    (BugReportGenerator bugreportgenerator, Activity activity, ShakeReporter shakereporter)
    {
        c = bugreportgenerator;
        a = activity;
        b = shakereporter;
        super();
    }
}
