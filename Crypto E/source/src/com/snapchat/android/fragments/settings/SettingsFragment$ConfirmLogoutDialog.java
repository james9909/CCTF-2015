// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.Context;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.ui.dialog.TwoButtonDialog;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment

class a extends TwoButtonDialog
{

    final SettingsFragment a;

    protected void a()
    {
        AnalyticsEvents.c(false);
    }

    protected void b()
    {
        AnalyticsEvents.c(true);
        SettingsFragment.d(a);
    }

    public (SettingsFragment settingsfragment, Context context)
    {
        a = settingsfragment;
        super(context, settingsfragment.getString(0x7f0c01b4));
    }
}
