// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import java.io.UnsupportedEncodingException;
import java.util.UUID;

public class UniqueDeviceIdBuilder
{

    public UniqueDeviceIdBuilder()
    {
    }

    public UUID a(Context context)
    {
        UUID uuid = b(context);
        if (uuid == null)
        {
            c(context);
        }
        if (uuid == null)
        {
            uuid = UUID.randomUUID();
        }
        return uuid;
    }

    protected UUID b(Context context)
    {
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (TextUtils.equals(s, "9774d56d682e549c") || s == null)
        {
            return null;
        }
        UUID uuid;
        try
        {
            uuid = UUID.nameUUIDFromBytes(s.getBytes("utf8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Timber.a("UniqueDeviceIdentifier", unsupportedencodingexception);
            return null;
        }
        return uuid;
    }

    protected UUID c(Context context)
    {
        String s = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
        if (s == null)
        {
            return null;
        }
        UUID uuid;
        try
        {
            uuid = UUID.nameUUIDFromBytes(s.getBytes("utf8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Timber.a("UniqueDeviceIdentifier", unsupportedencodingexception);
            return null;
        }
        return uuid;
    }
}
