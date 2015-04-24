// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportFragment

class a
    implements android.view.stener
{

    final BugReportFragment a;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            BugReportFragment.f(a).setSelection(BugReportFragment.f(a).getText().length());
        }
    }

    _cls9(BugReportFragment bugreportfragment)
    {
        a = bugreportfragment;
        super();
    }
}
