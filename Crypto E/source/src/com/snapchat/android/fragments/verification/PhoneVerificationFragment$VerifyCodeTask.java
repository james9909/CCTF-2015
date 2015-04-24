// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import com.snapchat.android.analytics.PhoneVerificationAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.api.RequestTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;

// Referenced classes of package com.snapchat.android.fragments.verification:
//            PhoneVerificationFragment

public class a extends RequestTask
{

    final PhoneVerificationFragment a;

    protected String a()
    {
        return "/bq/phone_verify";
    }

    protected void a(String s, int i)
    {
        super.a(s, i);
        if (a.isAdded())
        {
            a.q();
            a.g.setVisibility(4);
            a.b.setEnabled(true);
            a.e.setEnabled(true);
            PhoneVerificationFragment.b(a, s);
        }
        a.a(s);
        RegistrationAnalytics.p();
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("action", "verifyPhoneNumber");
        bundle.putString("username", UserPrefs.k());
        bundle.putString("code", a.e.getText().toString());
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        super.b(serverresponse);
        com.snapchat.android.analytics.pe pe;
        if (a.p())
        {
            pe = com.snapchat.android.analytics.pe.VERIFIED_NUMBER;
        } else
        if (UserPrefs.g())
        {
            pe = com.snapchat.android.analytics.pe.VERIFIED_NEW_NUMBER;
        } else
        {
            pe = com.snapchat.android.analytics.pe.REGISTERED_NUMBER;
        }
        PhoneVerificationAnalytics.a(pe);
        if (a.isAdded())
        {
            UserPrefs.a(a.h);
            UserPrefs.k(serverresponse.allowed_to_use_cash);
            a.a(serverresponse.verification_needed);
            a.s();
        }
        RegistrationAnalytics.t();
    }

    protected String c()
    {
        return "VerifyCodeTask";
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        a.b.setEnabled(false);
        a.e.setEnabled(false);
        a.f.setText("");
        a.f.setEnabled(false);
        a.g.setVisibility(0);
        if (PhoneVerificationFragment.a(a) != null)
        {
            PhoneVerificationFragment.a(a).c();
            PhoneVerificationFragment.a(a, null);
        }
    }

    protected onRetryCountDownTimer(PhoneVerificationFragment phoneverificationfragment)
    {
        a = phoneverificationfragment;
        super();
    }
}
