// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.location:
//            LocationPermissionsAccessor

class c
    implements android.content.r
{

    final SharedPreferences a;
    final Context b;
    final cationPermissionsDialogListener c;
    final LocationPermissionsAccessor d;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        android.content.onsAccessor._cls1 _lcls1 = a.edit();
        _lcls1.olean(SharedPreferenceKey.z.a(), true);
        _lcls1.();
        d.a(true);
        UserPrefs.g(false);
        if (!d.a())
        {
            Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
            intent.addFlags(0x10000000);
            b.startActivity(intent);
        }
        if (c != null)
        {
            c.a(true);
        }
    }

    cationPermissionsDialogListener(LocationPermissionsAccessor locationpermissionsaccessor, SharedPreferences sharedpreferences, Context context, cationPermissionsDialogListener cationpermissionsdialoglistener)
    {
        d = locationpermissionsaccessor;
        a = sharedpreferences;
        b = context;
        c = cationpermissionsdialoglistener;
        super();
    }
}
