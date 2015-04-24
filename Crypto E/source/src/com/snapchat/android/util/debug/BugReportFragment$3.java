// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.text.Editable;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportFragment

class a
    implements android.widget.ionListener
{

    final BugReportFragment a;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        Editable editable = BugReportFragment.f(a).getText();
        int j = editable.toString().split("\n").length;
        if (i == 5 || keyevent != null && keyevent.getKeyCode() == 66 && keyevent.getAction() == 0)
        {
            String s = (new StringBuilder()).append("\n").append(j + 1).append(". ").toString();
            BugReportFragment.f(a).setText((new StringBuilder()).append(editable).append(s).toString());
            BugReportFragment.f(a).setSelection(editable.length() + s.length());
            return true;
        } else
        {
            return false;
        }
    }

    _cls9(BugReportFragment bugreportfragment)
    {
        a = bugreportfragment;
        super();
    }
}
