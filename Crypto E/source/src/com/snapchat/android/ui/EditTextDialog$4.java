// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;

// Referenced classes of package com.snapchat.android.ui:
//            EditTextDialog

class a
    implements android.widget.ActionListener
{

    final EditTextDialog a;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 6 || keyevent != null && keyevent.getAction() == 0 && i == 0)
        {
            ((InputMethodManager)EditTextDialog.a(a).getSystemService("input_method")).hideSoftInputFromWindow(textview.getWindowToken(), 0);
            a.a(textview.getText().toString());
            a.dismiss();
            return true;
        } else
        {
            return false;
        }
    }

    er(EditTextDialog edittextdialog)
    {
        a = edittextdialog;
        super();
    }
}
