// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings.email;

import com.snapchat.android.operation.Operation;
import com.snapchat.android.operation.identity.ChangeEmailOperation;
import com.snapchat.android.operation.identity.SettingsOperation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.settings.email:
//            EmailSettingsFragment

class a
    implements SnapchatServiceListener
{

    final EmailSettingsFragment a;

    public void a(Operation operation)
    {
        int i = SnapchatServiceManager.a(operation);
        if (EmailSettingsFragment.a(a).contains(Integer.valueOf(i)))
        {
            EmailSettingsFragment.a(a).remove(Integer.valueOf(i));
            if (operation instanceof SettingsOperation)
            {
                EmailSettingsFragment.a(a, ((SettingsOperation)operation).g());
            } else
            if (operation instanceof ChangeEmailOperation)
            {
                EmailSettingsFragment.a(a, (ChangeEmailOperation)operation);
                return;
            }
        }
    }

    (EmailSettingsFragment emailsettingsfragment)
    {
        a = emailsettingsfragment;
        super();
    }
}
