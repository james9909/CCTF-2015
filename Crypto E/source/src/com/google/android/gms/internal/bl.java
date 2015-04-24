// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.common.internal.s;
import java.util.List;

public class bl
{

    private final Context mContext;

    public bl(Context context)
    {
        s.b(context, "Context can not be null");
        mContext = context;
    }

    public static boolean bA()
    {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public boolean a(Intent intent)
    {
        s.b(intent, "Intent can not be null");
        boolean flag = mContext.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
        boolean flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    public boolean bB()
    {
        Intent intent = (new Intent("android.intent.action.INSERT")).setType("vnd.android.cursor.dir/event");
        return android.os.Build.VERSION.SDK_INT >= 14 && a(intent);
    }

    public boolean bw()
    {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return a(intent);
    }

    public boolean bx()
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return a(intent);
    }

    public boolean by()
    {
        return bA() && mContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public boolean bz()
    {
        return true;
    }
}
