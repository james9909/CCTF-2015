// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.fragments.verification.PhoneVerificationFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.VerificationNeededResponse;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.VerificationCodeReceivedEvent;

public class CashPhoneVerificationFragment extends PhoneVerificationFragment
{
    public static interface PhoneVerificationListener
    {

        public abstract void a();

        public abstract void b();
    }


    private PhoneVerificationListener j;
    private boolean k;

    public CashPhoneVerificationFragment()
    {
    }

    static View a(CashPhoneVerificationFragment cashphoneverificationfragment)
    {
        return cashphoneverificationfragment.x;
    }

    public void a(PhoneVerificationListener phoneverificationlistener)
    {
        k = false;
        j = phoneverificationlistener;
    }

    protected void a(VerificationNeededResponse verificationneededresponse)
    {
    }

    protected void a(String s)
    {
        AnalyticsEvents.o(s);
    }

    protected void b()
    {
        Timber.b("CashPhoneVerificationFragment", "CASH-LOG: Phone is verified successfully. Closing", new Object[0]);
        k = true;
        getActivity().getSupportFragmentManager().popBackStackImmediate();
        if (j != null)
        {
            j.a();
        }
        j = null;
    }

    protected void d_()
    {
        super.d_();
        ViewUtils.a(getActivity(), x);
    }

    public boolean e()
    {
        if (!k && j != null)
        {
            j.b();
        }
        j = null;
        Timber.b("CashPhoneVerificationFragment", "CASH-LOG: Phone is not verified. Closing", new Object[0]);
        return super.e();
    }

    public boolean e_()
    {
        return true;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04001c, viewgroup, false);
        o();
        n();
        r();
        h();
        l();
        d(0x7f0a00ca).setOnClickListener(new android.view.View.OnClickListener() {

            final CashPhoneVerificationFragment a;

            public void onClick(View view)
            {
                ViewUtils.a(a.getActivity(), CashPhoneVerificationFragment.a(a));
                a.getActivity().onBackPressed();
            }

            
            {
                a = CashPhoneVerificationFragment.this;
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
            ViewUtils.f(a);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onResume()
    {
        super.onResume();
        b.clearFocus();
    }

    public void onVerificationCodeReceivedEvent(VerificationCodeReceivedEvent verificationcodereceivedevent)
    {
        super.onVerificationCodeReceivedEvent(verificationcodereceivedevent);
    }

    protected void s_()
    {
        super.s_();
        if (TextUtils.isEmpty(b.getText()) && b.requestFocus())
        {
            ViewUtils.f(getActivity());
        }
        ViewUtils.a(x, G());
    }
}
