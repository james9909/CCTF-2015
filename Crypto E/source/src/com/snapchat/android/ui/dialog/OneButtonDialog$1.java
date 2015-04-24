// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.dialog;

import android.content.DialogInterface;

// Referenced classes of package com.snapchat.android.ui.dialog:
//            OneButtonDialog

class a
    implements android.content.ClickListener
{

    final OneButtonDialog a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
        a.a();
    }

    (OneButtonDialog onebuttondialog)
    {
        a = onebuttondialog;
        super();
    }
}
