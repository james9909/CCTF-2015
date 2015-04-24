// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api.RequestTask;
import com.snapchat.android.api.SettingsTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.VerificationNeededResponse;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ForceVerificationEvent;
import com.snapchat.android.util.eventbus.PhoneNumberVerifiedEvent;
import com.snapchat.android.util.eventbus.VerificationCodeReceivedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.verification:
//            PhoneVerificationFragment

public class SettingsPhoneVerificationFragment extends PhoneVerificationFragment
{

    private View j;
    private ForceVerificationEvent k;
    private Button l;
    private UserPrefs m;

    public SettingsPhoneVerificationFragment()
    {
        m = UserPrefs.a();
        boolean flag;
        if (UserPrefs.an() && UserPrefs.g())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = flag;
    }

    public SettingsPhoneVerificationFragment(ForceVerificationEvent forceverificationevent)
    {
        this();
        k = forceverificationevent;
    }

    static View a(SettingsPhoneVerificationFragment settingsphoneverificationfragment)
    {
        return settingsphoneverificationfragment.x;
    }

    private void u()
    {
        j = d(0x7f0a021d);
        j.setVisibility(0);
    }

    protected void a(VerificationNeededResponse verificationneededresponse)
    {
    }

    protected void b()
    {
    }

    protected void o()
    {
        super.o();
        l = (Button)d(0x7f0a021e);
        l.setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsPhoneVerificationFragment a;

            public void onClick(View view)
            {
                a.b();
            }

            
            {
                a = SettingsPhoneVerificationFragment.this;
                super();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040061, viewgroup, false);
        ViewUtils.a(x, G());
        o();
        n();
        r();
        h();
        l();
        if (UserPrefs.an())
        {
            u();
        }
        d(0x7f0a0056).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsPhoneVerificationFragment a;

            public void onClick(View view)
            {
                ViewUtils.a(a.getActivity(), SettingsPhoneVerificationFragment.a(a));
                a.getActivity().onBackPressed();
            }

            
            {
                a = SettingsPhoneVerificationFragment.this;
                super();
            }
        });
        CheckBox checkbox = (CheckBox)d(0x7f0a021b);
        checkbox.setChecked(UserPrefs.Q());
        checkbox.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final SettingsPhoneVerificationFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                String as[] = new String[1];
                String s1;
                if (flag)
                {
                    s1 = "1";
                } else
                {
                    s1 = "0";
                }
                as[0] = s1;
                (new SettingsTask("updateSearchableByPhoneNumber", as)).executeOnExecutor(ScExecutors.b, new String[0]);
                AnalyticsEvents.b(flag);
            }

            
            {
                a = SettingsPhoneVerificationFragment.this;
                super();
            }
        });
        if (!UserPrefs.g()) goto _L2; else goto _L1
_L1:
        b.setText(UserPrefs.f());
_L4:
        return x;
_L2:
        if (b.requestFocus() && !UserPrefs.an())
        {
            ViewUtils.e(a);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onPause()
    {
        super.onPause();
        ViewUtils.a(G(), x, getActivity());
        ViewUtils.a(getActivity(), x);
    }

    public void onResume()
    {
        super.onResume();
        ViewUtils.a(x, G());
    }

    public void onVerificationCodeReceivedEvent(VerificationCodeReceivedEvent verificationcodereceivedevent)
    {
        super.onVerificationCodeReceivedEvent(verificationcodereceivedevent);
    }

    protected void q()
    {
        super.q();
    }

    protected void s()
    {
        i = false;
        b.setEnabled(true);
        f.setVisibility(8);
        g.setVisibility(8);
        e.setText("");
        e.setVisibility(8);
        c.setVisibility(8);
        d.setVisibility(8);
        BusProvider.a().a(new PhoneNumberVerifiedEvent());
        if (UserPrefs.an())
        {
            j.setVisibility(8);
            AlertDialogUtils.a(0x7f0c021b, a);
            UserPrefs.u(false);
            if (k != null && k.b() != null)
            {
                k.b().execute(new String[0]);
            }
            return;
        } else
        {
            AlertDialogUtils.a(0x7f0c00a2, a);
            b();
            return;
        }
    }

    protected boolean t()
    {
        return false;
    }
}
