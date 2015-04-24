// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.LocationManager;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.EnableFiltersEvent;
import com.squareup.otto.Bus;

public class LocationPermissionsAccessor
{
    public static interface LocationPermissionsDialogListener
    {

        public abstract void a(boolean flag);
    }


    private final Context a;
    private final LocationManager b;

    public LocationPermissionsAccessor()
    {
        this(((Context) (SnapchatApplication.e())));
    }

    private LocationPermissionsAccessor(Context context)
    {
        this(context, (LocationManager)context.getSystemService("location"));
    }

    LocationPermissionsAccessor(Context context, LocationManager locationmanager)
    {
        a = context;
        b = locationmanager;
    }

    public void a(Context context, LocationPermissionsDialogListener locationpermissionsdialoglistener)
    {
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context);
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        builder.setTitle(0x7f0c0118);
        builder.setMessage(0x7f0c0117);
        builder.setCancelable(false);
        builder.setPositiveButton(0x7f0c0142, new android.content.DialogInterface.OnClickListener(sharedpreferences, context, locationpermissionsdialoglistener) {

            final SharedPreferences a;
            final Context b;
            final LocationPermissionsDialogListener c;
            final LocationPermissionsAccessor d;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                android.content.SharedPreferences.Editor editor = a.edit();
                editor.putBoolean(SharedPreferenceKey.z.a(), true);
                editor.apply();
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

            
            {
                d = LocationPermissionsAccessor.this;
                a = sharedpreferences;
                b = context;
                c = locationpermissionsdialoglistener;
                super();
            }
        });
        builder.setNegativeButton(0x7f0c00dc, new android.content.DialogInterface.OnClickListener(locationpermissionsdialoglistener) {

            final LocationPermissionsDialogListener a;
            final LocationPermissionsAccessor b;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (a != null)
                {
                    a.a(false);
                }
            }

            
            {
                b = LocationPermissionsAccessor.this;
                a = locationpermissionsdialoglistener;
                super();
            }
        });
        builder.show();
    }

    public void a(boolean flag)
    {
        UserPrefs.m(flag);
        BusProvider.a().a(new EnableFiltersEvent());
    }

    public boolean a()
    {
        return b.isProviderEnabled("gps");
    }

    public boolean b()
    {
        return UserPrefs.L();
    }
}
