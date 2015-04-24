// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.widget.CompoundButton;
import com.snapchat.android.util.debug.DevUtils;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            DeveloperSettingsFragment

class a
    implements android.widget.eListener
{

    final DeveloperSettingsFragment a;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        DevUtils.b(flag);
    }

    (DeveloperSettingsFragment developersettingsfragment)
    {
        a = developersettingsfragment;
        super();
    }
}
