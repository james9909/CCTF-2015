// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import java.io.File;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportFragment, ManiphestAdapter

class a
    implements android.view.
{

    final BugReportFragment a;

    public void onClick(View view)
    {
        if (BugReportFragment.m(a) == null)
        {
            BugReportFragment.l(a).show();
            return;
        }
        String s;
        StringBuilder stringbuilder;
        File file;
        File afile[];
        if (BugReportFragment.a(a))
        {
            s = BugReportFragment.b(a).getText().toString();
        } else
        {
            s = "null";
        }
        stringbuilder = new StringBuilder(BugReportFragment.f(a).getText().toString());
        if (BugReportFragment.d(a) && !TextUtils.isEmpty(BugReportFragment.n(a)))
        {
            file = BugReportFragment.c(a).getFileStreamPath(BugReportFragment.n(a));
        } else
        {
            file = null;
        }
        afile = new File[BugReportFragment.o(a).length];
        for (int i = 0; i < afile.length; i++)
        {
            afile[i] = BugReportFragment.c(a).getFileStreamPath(BugReportFragment.o(a)[i]);
        }

        (new ManiphestAdapter()).a(BugReportFragment.a(a, BugReportFragment.c(a)), s, BugReportFragment.p(a).getText().toString(), stringbuilder.toString(), BugReportFragment.j(a), BugReportFragment.m(a), file, afile);
        BugReportFragment.c(a).finish();
    }

    _cls9(BugReportFragment bugreportfragment)
    {
        a = bugreportfragment;
        super();
    }
}
