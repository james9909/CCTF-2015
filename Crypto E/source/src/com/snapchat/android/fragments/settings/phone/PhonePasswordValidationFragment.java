// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings.phone;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.snapchat.android.fragments.settings.BasePasswordValidationFragment;
import com.snapchat.android.fragments.settings.SecurityGhostFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.operation.Operation;
import com.snapchat.android.operation.identity.SettingsOperation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Set;

public class PhonePasswordValidationFragment extends BasePasswordValidationFragment
{

    private final Set f = new HashSet();
    private SnapchatServiceListener g;

    public PhonePasswordValidationFragment()
    {
        g = new SnapchatServiceListener() {

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

            
            {
                a = PhonePasswordValidationFragment.this;
                super();
            }
        };
    }

    static Set a(PhonePasswordValidationFragment phonepasswordvalidationfragment)
    {
        return phonepasswordvalidationfragment.f;
    }

    static void a(PhonePasswordValidationFragment phonepasswordvalidationfragment, com.snapchat.android.operation.identity.SettingsOperation.SettingsOperationsResult settingsoperationsresult)
    {
        phonepasswordvalidationfragment.a(settingsoperationsresult);
    }

    private void a(com.snapchat.android.operation.identity.SettingsOperation.SettingsOperationsResult settingsoperationsresult)
    {
        if (settingsoperationsresult.a)
        {
            BusProvider.a().a(new StartFragmentEvent(new SecurityGhostFragment(LocalizationUtils.a(0x7f0c0198, new Object[0]))));
            return;
        } else
        {
            b.setVisibility(8);
            c.setVisibility(8);
            a(settingsoperationsresult.d);
            return;
        }
    }

    static EditText b(PhonePasswordValidationFragment phonepasswordvalidationfragment)
    {
        return phonepasswordvalidationfragment.a;
    }

    static Button c(PhonePasswordValidationFragment phonepasswordvalidationfragment)
    {
        return phonepasswordvalidationfragment.b;
    }

    static Button d(PhonePasswordValidationFragment phonepasswordvalidationfragment)
    {
        return phonepasswordvalidationfragment.b;
    }

    static View e(PhonePasswordValidationFragment phonepasswordvalidationfragment)
    {
        return phonepasswordvalidationfragment.c;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        ((TextView)d(0x7f0a02a8)).setText(LocalizationUtils.a(0x7f0c01cf, new Object[0]));
        ((TextView)d(0x7f0a02a9)).setText(LocalizationUtils.a(0x7f0c0128, new Object[0]));
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final PhonePasswordValidationFragment a;

            public void onClick(View view)
            {
                PhonePasswordValidationFragment.a(a).add(Integer.valueOf(SnapchatServiceManager.a().a(a.getActivity(), "pwConfirmPhoneNumber", UserPrefs.f(), PhonePasswordValidationFragment.b(a).getText().toString())));
                PhonePasswordValidationFragment.c(a).setClickable(false);
                PhonePasswordValidationFragment.d(a).setText("");
                PhonePasswordValidationFragment.e(a).setVisibility(0);
            }

            
            {
                a = PhonePasswordValidationFragment.this;
                super();
            }
        });
        return x;
    }

    public void onPause()
    {
        super.onPause();
        SnapchatServiceManager.a().b(1012, g);
        f.clear();
    }

    public void onResume()
    {
        super.onResume();
        SnapchatServiceManager.a().a(1012, g);
    }
}
