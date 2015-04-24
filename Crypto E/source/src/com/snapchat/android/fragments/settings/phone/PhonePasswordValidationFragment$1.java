// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings.phone;

import com.snapchat.android.operation.Operation;
import com.snapchat.android.operation.identity.SettingsOperation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.settings.phone:
//            PhonePasswordValidationFragment

class a
    implements SnapchatServiceListener
{

    final PhonePasswordValidationFragment a;

    public void a(Operation operation)
    {
        int i = SnapchatServiceManager.a(operation);
        if (PhonePasswordValidationFragment.a(a).contains(Integer.valueOf(i)) && (operation instanceof SettingsOperation))
        {
            PhonePasswordValidationFragment.a(a).remove(Integer.valueOf(i));
            PhonePasswordValidationFragment.a(a, ((SettingsOperation)operation).g());
        }
    }

    (PhonePasswordValidationFragment phonepasswordvalidationfragment)
    {
        a = phonepasswordvalidationfragment;
        super();
    }
}
