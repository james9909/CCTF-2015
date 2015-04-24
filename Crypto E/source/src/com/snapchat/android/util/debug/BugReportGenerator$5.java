// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportGenerator, BugReportActivity

class b
    implements android.content.ckListener
{

    final Activity a;
    final String b;
    final BugReportGenerator c;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Intent intent = new Intent(a, com/snapchat/android/util/debug/BugReportActivity);
        intent.putExtra("screenshots", b);
        intent.putExtra("logs", new String[] {
            "snapchat_shake2report.txt", "snapchat_shake2report_timber.txt"
        });
        a.startActivity(intent);
    }

    (BugReportGenerator bugreportgenerator, Activity activity, String s)
    {
        c = bugreportgenerator;
        a = activity;
        b = s;
        super();
    }
}
