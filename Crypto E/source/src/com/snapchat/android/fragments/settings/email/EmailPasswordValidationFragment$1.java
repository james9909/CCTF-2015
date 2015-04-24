// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings.email;

import com.snapchat.android.operation.Operation;
import com.snapchat.android.operation.identity.ChangeEmailOperation;
import com.snapchat.android.operation.identity.ReauthOperation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.settings.email:
//            EmailPasswordValidationFragment

class a
    implements SnapchatServiceListener
{

    final EmailPasswordValidationFragment a;

    public void a(Operation operation)
    {
        int i = SnapchatServiceManager.a(operation);
        if (EmailPasswordValidationFragment.a(a).contains(Integer.valueOf(i)))
        {
            EmailPasswordValidationFragment.a(a).remove(Integer.valueOf(i));
            if (operation instanceof ReauthOperation)
            {
                EmailPasswordValidationFragment.a(a, (ReauthOperation)operation);
            } else
            if (operation instanceof ChangeEmailOperation)
            {
                EmailPasswordValidationFragment.a(a, (ChangeEmailOperation)operation);
                return;
            }
        }
    }

    (EmailPasswordValidationFragment emailpasswordvalidationfragment)
    {
        a = emailpasswordvalidationfragment;
        super();
    }
}
