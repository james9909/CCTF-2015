// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.DialogInterface;
import android.content.SharedPreferences;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils

static final class a
    implements android.content.lickListener
{

    final SharedPreferences a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        android.content.ditor ditor = a.edit();
        ditor.putBoolean("firstTimeUsingBeta", false);
        ditor.apply();
    }

    er(SharedPreferences sharedpreferences)
    {
        a = sharedpreferences;
        super();
    }
}
