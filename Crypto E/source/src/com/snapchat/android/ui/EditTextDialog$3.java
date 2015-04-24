// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.view.View;
import android.view.Window;

// Referenced classes of package com.snapchat.android.ui:
//            EditTextDialog

class a
    implements android.view.eListener
{

    final EditTextDialog a;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            a.getWindow().setSoftInputMode(5);
        }
    }

    (EditTextDialog edittextdialog)
    {
        a = edittextdialog;
        super();
    }
}
