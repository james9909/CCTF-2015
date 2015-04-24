// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.app.Activity;
import android.view.View;
import java.util.Map;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportGenerator, ShakeReporter

class d
    implements Runnable
{

    final View a;
    final Map b;
    final Activity c;
    final ShakeReporter d;
    final BugReportGenerator e;

    public void run()
    {
        android.graphics.Bitmap bitmap = BugReportGenerator.a(e, a);
        e.b(a, b);
        e.b(c, d, bitmap);
    }

    (BugReportGenerator bugreportgenerator, View view, Map map, Activity activity, ShakeReporter shakereporter)
    {
        e = bugreportgenerator;
        a = view;
        b = map;
        c = activity;
        d = shakereporter;
        super();
    }
}
