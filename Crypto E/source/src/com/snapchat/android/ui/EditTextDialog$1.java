// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

// Referenced classes of package com.snapchat.android.ui:
//            EditTextDialog

class a
    implements android.content.nClickListener
{

    final EditText a;
    final EditTextDialog b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        ((InputMethodManager)EditTextDialog.a(b).getSystemService("input_method")).hideSoftInputFromWindow(a.getWindowToken(), 0);
        b.a(a.getText().toString());
    }

    er(EditTextDialog edittextdialog, EditText edittext)
    {
        b = edittextdialog;
        a = edittext;
        super();
    }
}
