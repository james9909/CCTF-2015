// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.content.DialogInterface;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportGenerator, ShakeReporter

class a
    implements android.content.celListener
{

    final ShakeReporter a;
    final BugReportGenerator b;

    public void onCancel(DialogInterface dialoginterface)
    {
        a.a(false);
    }

    (BugReportGenerator bugreportgenerator, ShakeReporter shakereporter)
    {
        b = bugreportgenerator;
        a = shakereporter;
        super();
    }
}
