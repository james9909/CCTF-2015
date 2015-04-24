// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.text.TextUtils;
import android.view.View;
import com.snapchat.android.fragments.settings.email.EmailSettingsFragment;
import com.snapchat.android.fragments.settings.email.EmailVerificationSentFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment

class a
    implements android.view.
{

    final SettingsFragment a;

    public void onClick(View view)
    {
        if (TextUtils.isEmpty(SettingsFragment.a(a).aL()))
        {
            BusProvider.a().a(new StartFragmentEvent(new EmailSettingsFragment(), com/snapchat/android/fragments/settings/email/EmailSettingsFragment.getSimpleName(), null));
            return;
        } else
        {
            BusProvider.a().a(new StartFragmentEvent(new EmailVerificationSentFragment()));
            return;
        }
    }

    ionSentFragment(SettingsFragment settingsfragment)
    {
        a = settingsfragment;
        super();
    }
}
