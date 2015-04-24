// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.view.View;
import com.snapchat.android.fragments.settings.WebFragment;

// Referenced classes of package com.snapchat.android:
//            SnapkidzSettingsActivity

class a
    implements android.view.ivity._cls6
{

    final SnapkidzSettingsActivity a;

    public void onClick(View view)
    {
        SnapkidzSettingsActivity.a(a, new WebFragment("https://www.snapchat.com/terms", a.getString(0x7f0c01e9)), "WebFragment");
    }

    ent(SnapkidzSettingsActivity snapkidzsettingsactivity)
    {
        a = snapkidzsettingsactivity;
        super();
    }
}
