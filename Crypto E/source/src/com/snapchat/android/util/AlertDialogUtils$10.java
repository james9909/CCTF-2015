// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.DialogInterface;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils

static final class a
    implements android.content.ickListener
{

    final NoAlertListener a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        a.a(NoOption.b);
    }

    NoAlertListener(NoAlertListener noalertlistener)
    {
        a = noalertlistener;
        super();
    }
}
