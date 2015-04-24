// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Log;

public class d
    implements android.content.DialogInterface.OnClickListener
{

    private final Fragment TN;
    private final int TO;
    private final Intent mIntent;
    private final Activity nL;

    public d(Activity activity, Intent intent, int i)
    {
        nL = activity;
        TN = null;
        mIntent = intent;
        TO = i;
    }

    public d(Fragment fragment, Intent intent, int i)
    {
        nL = null;
        TN = fragment;
        mIntent = intent;
        TO = i;
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (mIntent == null || TN == null) goto _L2; else goto _L1
_L1:
        TN.startActivityForResult(mIntent, TO);
_L4:
        dialoginterface.dismiss();
        return;
_L2:
        if (mIntent != null)
        {
            nL.startActivityForResult(mIntent, TO);
        }
        if (true) goto _L4; else goto _L3
_L3:
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
        return;
    }
}
