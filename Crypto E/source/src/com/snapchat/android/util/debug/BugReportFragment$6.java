// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportFragment

class a
    implements TextWatcher
{

    final BugReportFragment a;

    public void afterTextChanged(Editable editable)
    {
        if (editable.length() > 2 && !BugReportFragment.h(a))
        {
            BugReportFragment.d(a, true);
            BugReportFragment.i(a).setEnabled(true);
        } else
        if (editable.length() <= 2 && BugReportFragment.h(a))
        {
            BugReportFragment.d(a, false);
            BugReportFragment.i(a).setEnabled(false);
            return;
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    _cls9(BugReportFragment bugreportfragment)
    {
        a = bugreportfragment;
        super();
    }
}
