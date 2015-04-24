// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings.email;

import android.view.View;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.operation.Operation;
import com.snapchat.android.operation.identity.SettingsOperation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.settings.email:
//            EmailVerificationSentFragment

class a
    implements SnapchatServiceListener
{

    final EmailVerificationSentFragment a;

    public void a(Operation operation)
    {
        com.snapchat.android.operation.identity.ionsResult ionsresult;
label0:
        {
            int i = SnapchatServiceManager.a(operation);
            if (EmailVerificationSentFragment.a(a).contains(Integer.valueOf(i)) && (operation instanceof SettingsOperation))
            {
                EmailVerificationSentFragment.a(a).remove(Integer.valueOf(i));
                ionsresult = ((SettingsOperation)operation).g();
                EmailVerificationSentFragment.b(a).setVisibility(8);
                EmailVerificationSentFragment.c(a).setVisibility(0);
                if (!ionsresult.a)
                {
                    break label0;
                }
                com.snapchat.android.util.eventbus.Fragment fragment = (new com.snapchat.android.util.eventbus.perationsResult.a(com.snapchat.android.util.eventbus.perationsResult.a)).a(0x7f0c00e3);
                Object aobj[] = new Object[1];
                aobj[0] = EmailVerificationSentFragment.d(a).aL();
                ShowDialogEvent showdialogevent = fragment.a(LocalizationUtils.a(0x7f0c00e2, aobj)).a();
                BusProvider.a().a(showdialogevent);
            }
            return;
        }
        BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.Fragment._cls1.a, ionsresult.d));
    }

    sult(EmailVerificationSentFragment emailverificationsentfragment)
    {
        a = emailverificationsentfragment;
        super();
    }
}
