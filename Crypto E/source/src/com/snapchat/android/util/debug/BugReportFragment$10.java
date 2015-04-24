// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.content.DialogInterface;
import android.widget.Button;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportFragment

class a
    implements android.content.ckListener
{

    final BugReportFragment a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        BugReportFragment.b(a, BugReportFragment.b()[i].toString());
        BugReportFragment.q(a).setText(BugReportFragment.b()[i]);
    }

    (BugReportFragment bugreportfragment)
    {
        a = bugreportfragment;
        super();
    }
}
