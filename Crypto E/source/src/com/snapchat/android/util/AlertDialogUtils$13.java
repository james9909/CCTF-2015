// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.DialogInterface;
import android.widget.CheckBox;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils

static final class b
    implements android.content.ickListener
{

    final CheckBox a;
    final NoAlertListener b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (a.isChecked())
        {
            b.a(NoOption.c);
            return;
        } else
        {
            b.a(NoOption.a);
            return;
        }
    }

    NoAlertListener(CheckBox checkbox, NoAlertListener noalertlistener)
    {
        a = checkbox;
        b = noalertlistener;
        super();
    }
}
