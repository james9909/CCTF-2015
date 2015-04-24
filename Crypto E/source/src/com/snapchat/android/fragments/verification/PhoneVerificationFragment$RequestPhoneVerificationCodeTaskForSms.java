// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.api.RequestTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.ViewUtils;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.snapchat.android.fragments.verification:
//            PhoneVerificationFragment

class b extends RequestTask
{

    final PhoneVerificationFragment a;
    private final String b;
    private String c;

    protected String a()
    {
        return "/bq/phone_verify";
    }

    protected void a(ServerResponse serverresponse)
    {
        if (a.isAdded())
        {
            a.g.setVisibility(8);
            a.b.setEnabled(true);
        }
        super.a(serverresponse);
    }

    protected void a(String s, int i)
    {
        super.a(s, i);
        if (a.isAdded())
        {
            a.h = "";
            a.q();
            PhoneVerificationFragment.a(a, s);
            ViewUtils.a(a.a, a.b);
        }
        a.a(s);
        RegistrationAnalytics.e();
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("action", b);
        bundle.putString("username", UserPrefs.k());
        bundle.putString("phoneNumber", a.h);
        bundle.putString("countryCode", PhoneVerificationFragment.i(a));
        bundle.putBoolean("skipConfirmation", a.t());
        if (c != null)
        {
            bundle.putString("method", c);
        }
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        super.b(serverresponse);
        if (!TextUtils.isEmpty(serverresponse.message_format))
        {
            UserPrefs.v(serverresponse.message_format);
        }
        if (a.isAdded())
        {
            PhoneVerificationFragment.b(a);
            a.e.requestFocus();
            PhoneVerificationFragment.a(a, new nit>(a, (int)TimeUnit.MINUTES.toSeconds(1L), TimeUnit.SECONDS.toMillis(1L), PhoneVerificationFragment.j(a)));
            PhoneVerificationFragment.a(a).a();
            a.q();
            if (b.equals("updatePhoneNumberWithCall"))
            {
                AlertDialogUtils.a(0x7f0c009c, a.a);
            }
        }
        RegistrationAnalytics.l();
    }

    protected String c()
    {
        return "RequestPhoneVerificationCodeTask";
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        a.b.setEnabled(false);
        a.f.setText("");
        a.f.setEnabled(false);
        a.g.setVisibility(0);
    }

    public (PhoneVerificationFragment phoneverificationfragment, boolean flag, boolean flag1)
    {
        a = phoneverificationfragment;
        super();
        c = null;
        phoneverificationfragment.h = phoneverificationfragment.b.getText().toString();
        if (flag1)
        {
            b = "requestPhoneVerification";
            if (flag)
            {
                c = "text";
                return;
            } else
            {
                c = "call";
                return;
            }
        }
        if (flag)
        {
            b = "updatePhoneNumber";
            return;
        } else
        {
            b = "updatePhoneNumberWithCall";
            return;
        }
    }
}
