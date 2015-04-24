// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.os.Bundle;
import android.widget.Button;
import android.widget.ProgressBar;
import com.snapchat.android.LoginAndSignupActivity;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.api.RequestTask;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.model.server.UpdatesResponse;
import com.snapchat.android.util.AlertDialogUtils;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            PickUsernameFragment

class c extends RequestTask
{

    final PickUsernameFragment a;
    private User b;
    private String c;

    protected String a()
    {
        return "/loq/register_username";
    }

    protected void a(String s, int i)
    {
        super.a(s, i);
        if (!a.isAdded())
        {
            return;
        } else
        {
            PickUsernameFragment.e(a).setVisibility(4);
            PickUsernameFragment.f(a).setVisibility(4);
            return;
        }
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("selected_username", c);
        bundle.putString("username", UserPrefs.v());
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        super.b(serverresponse);
        if (a.isAdded())
        {
            UserPrefs.a(serverresponse.updates_response);
            UserPrefs.b(serverresponse.updates_response.username);
            com.snapchat.android.model.server.VerificationNeededResponse verificationneededresponse = serverresponse.verification_needed;
            LoginAndSignupActivity loginandsignupactivity = (LoginAndSignupActivity)a.getActivity();
            loginandsignupactivity.a(verificationneededresponse);
            if (!loginandsignupactivity.b() && !loginandsignupactivity.a())
            {
                UserPrefs.a(false);
                RegistrationAnalytics.a(false);
            } else
            {
                RegistrationAnalytics.a(true);
            }
            b.H();
            PickUsernameFragment.g(a);
        }
        AnalyticsEvents.E();
    }

    protected String c()
    {
        return "RegisterUsernameTask";
    }

    protected void d(ServerResponse serverresponse)
    {
        super.d(serverresponse);
        if (!a.isAdded())
        {
            return;
        }
        int i;
        if (serverresponse == null)
        {
            i = 0x7ffffffa;
        } else
        {
            i = serverresponse.status;
        }
        switch (i)
        {
        case 70: // 'F'
        default:
            PickUsernameFragment.a(a);
            AlertDialogUtils.a(PickUsernameFragment.d(a), mFailureMessage);
            return;

        case 69: // 'E'
            AnalyticsEvents.c(c.length());
            PickUsernameFragment.a(a, mFailureMessage);
            return;

        case 71: // 'G'
            AnalyticsEvents.D();
            PickUsernameFragment.a(a, mFailureMessage);
            return;

        case 72: // 'H'
            AnalyticsEvents.C();
            break;
        }
        PickUsernameFragment.a(a, mFailureMessage);
    }

    protected void onPreExecute()
    {
        PickUsernameFragment.e(a).setVisibility(0);
        PickUsernameFragment.f(a).setClickable(false);
        PickUsernameFragment.f(a).setText("");
    }

    public (PickUsernameFragment pickusernamefragment, String s)
    {
        a = pickusernamefragment;
        super();
        b = User.c();
        c = s;
    }
}
