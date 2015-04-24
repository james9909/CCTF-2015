// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings.email;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.snapchat.android.fragments.settings.BasePasswordValidationFragment;
import com.snapchat.android.fragments.settings.SettingsFragment;
import com.snapchat.android.operation.Operation;
import com.snapchat.android.operation.identity.ChangeEmailOperation;
import com.snapchat.android.operation.identity.ReauthOperation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.PrimitiveUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.data.gson.identity.SettingOperationResponse;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.settings.email:
//            EmailVerificationSentFragment, EmailSettingsFragment

public class EmailPasswordValidationFragment extends BasePasswordValidationFragment
{

    private final String f;
    private final Set g = new HashSet();
    private SnapchatServiceListener h;

    public EmailPasswordValidationFragment(String s)
    {
        h = new SnapchatServiceListener() {

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

            
            {
                a = EmailPasswordValidationFragment.this;
                super();
            }
        };
        f = s;
    }

    static Set a(EmailPasswordValidationFragment emailpasswordvalidationfragment)
    {
        return emailpasswordvalidationfragment.g;
    }

    static void a(EmailPasswordValidationFragment emailpasswordvalidationfragment, ChangeEmailOperation changeemailoperation)
    {
        emailpasswordvalidationfragment.a(changeemailoperation);
    }

    static void a(EmailPasswordValidationFragment emailpasswordvalidationfragment, ReauthOperation reauthoperation)
    {
        emailpasswordvalidationfragment.a(reauthoperation);
    }

    private void a(ChangeEmailOperation changeemailoperation)
    {
        if (changeemailoperation.g())
        {
            b.setVisibility(8);
            c.setVisibility(8);
            a(LocalizationUtils.a(0x7f0c0164, new Object[0]));
            return;
        }
        SettingOperationResponse settingoperationresponse = changeemailoperation.i();
        if (PrimitiveUtils.a(settingoperationresponse.a()))
        {
            BusProvider.a().a(new StartFragmentEvent(new EmailVerificationSentFragment()));
            return;
        } else
        {
            Intent intent = H();
            intent.putExtra("change_email_message_key", settingoperationresponse.b());
            intent.putExtra("change_email_key", f);
            BusProvider.a().a(new StartFragmentEvent(new EmailSettingsFragment(), com/snapchat/android/fragments/settings/email/EmailSettingsFragment.getSimpleName(), com/snapchat/android/fragments/settings/SettingsFragment.getSimpleName()));
            return;
        }
    }

    private void a(ReauthOperation reauthoperation)
    {
        if (reauthoperation.g())
        {
            g.add(Integer.valueOf(SnapchatServiceManager.a().c(getActivity(), f)));
            return;
        } else
        {
            b.setVisibility(8);
            c.setVisibility(8);
            a(reauthoperation.i());
            return;
        }
    }

    static EditText b(EmailPasswordValidationFragment emailpasswordvalidationfragment)
    {
        return emailpasswordvalidationfragment.a;
    }

    static Button c(EmailPasswordValidationFragment emailpasswordvalidationfragment)
    {
        return emailpasswordvalidationfragment.b;
    }

    static Button d(EmailPasswordValidationFragment emailpasswordvalidationfragment)
    {
        return emailpasswordvalidationfragment.b;
    }

    static View e(EmailPasswordValidationFragment emailpasswordvalidationfragment)
    {
        return emailpasswordvalidationfragment.c;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        ((TextView)d(0x7f0a02a8)).setText(LocalizationUtils.a(0x7f0c01c6, new Object[0]));
        ((TextView)d(0x7f0a02a9)).setText(LocalizationUtils.a(0x7f0c00e1, new Object[0]));
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final EmailPasswordValidationFragment a;

            public void onClick(View view)
            {
                EmailPasswordValidationFragment.a(a).add(Integer.valueOf(SnapchatServiceManager.a().d(a.getActivity(), EmailPasswordValidationFragment.b(a).getText().toString())));
                EmailPasswordValidationFragment.c(a).setClickable(false);
                EmailPasswordValidationFragment.d(a).setText("");
                EmailPasswordValidationFragment.e(a).setVisibility(0);
            }

            
            {
                a = EmailPasswordValidationFragment.this;
                super();
            }
        });
        return x;
    }

    public void onPause()
    {
        super.onPause();
        SnapchatServiceManager.a().b(1016, h);
        SnapchatServiceManager.a().b(1015, h);
        g.clear();
    }

    public void onResume()
    {
        super.onResume();
        SnapchatServiceManager.a().a(1016, h);
        SnapchatServiceManager.a().a(1015, h);
    }
}
