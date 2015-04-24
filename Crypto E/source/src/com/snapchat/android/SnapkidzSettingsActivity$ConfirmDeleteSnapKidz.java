// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.SharedPreferences;
import com.snapchat.android.ui.dialog.TwoButtonDialog;

// Referenced classes of package com.snapchat.android:
//            SnapkidzSettingsActivity

class a extends TwoButtonDialog
{

    final SnapkidzSettingsActivity a;

    protected void a()
    {
    }

    protected void b()
    {
        int i = SnapkidzSettingsActivity.c(a).getInt("SnapKidzLoginManager_numAccounts", 0);
        for (int j = 0; j < i; j++)
        {
            SnapkidzSettingsActivity.d(a).a((new StringBuilder()).append("SnapKidzLoginManager_username_").append(j).toString(), "");
        }

        SnapkidzSettingsActivity.d(a).a("SnapKidzLoginManager_numAccounts", 0);
        SnapkidzSettingsActivity.d(a).a();
        SnapkidzSettingsActivity.a(a);
    }

    public I(SnapkidzSettingsActivity snapkidzsettingsactivity)
    {
        a = snapkidzsettingsactivity;
        super(SnapkidzSettingsActivity.b(snapkidzsettingsactivity), snapkidzsettingsactivity.getString(0x7f0c009a));
    }
}
