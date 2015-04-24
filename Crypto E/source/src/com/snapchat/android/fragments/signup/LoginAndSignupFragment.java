// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.snapchat.android.SnapchatCameraBackgroundActivity;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            LoginFragment, SignupFragment

public class LoginAndSignupFragment extends SnapchatFragment
{

    private FragmentActivity a;

    public LoginAndSignupFragment()
    {
    }

    static boolean a(LoginAndSignupFragment loginandsignupfragment)
    {
        return loginandsignupfragment.b();
    }

    private boolean b()
    {
        int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(a);
        if (i != 0)
        {
            GooglePlayServicesUtil.getErrorDialog(i, a, 0).show();
            return false;
        } else
        {
            return true;
        }
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = getActivity();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04005f, null);
        View view = d(0x7f0a020c);
        View view1 = d(0x7f0a020d);
        FontUtils.a(view, a.getAssets());
        FontUtils.a(view1, a.getAssets());
        view.setOnClickListener(new android.view.View.OnClickListener(viewgroup) {

            final ViewGroup a;
            final LoginAndSignupFragment b;

            public void onClick(View view2)
            {
                if (!LoginAndSignupFragment.a(b))
                {
                    return;
                } else
                {
                    b.getFragmentManager().beginTransaction().replace(a.getId(), new LoginFragment()).addToBackStack("LoginFragment").commit();
                    return;
                }
            }

            
            {
                b = LoginAndSignupFragment.this;
                a = viewgroup;
                super();
            }
        });
        view1.setOnClickListener(new android.view.View.OnClickListener(viewgroup) {

            final ViewGroup a;
            final LoginAndSignupFragment b;

            public void onClick(View view2)
            {
                if (!LoginAndSignupFragment.a(b))
                {
                    return;
                } else
                {
                    b.getFragmentManager().beginTransaction().replace(a.getId(), new SignupFragment()).addToBackStack("SignupFragment").commit();
                    UserPrefs.a(true);
                    AnalyticsEvents.k();
                    return;
                }
            }

            
            {
                b = LoginAndSignupFragment.this;
                a = viewgroup;
                super();
            }
        });
        return x;
    }

    public void onDetach()
    {
        super.onDetach();
        a = null;
    }

    public void onResume()
    {
        super.onResume();
        if (a != null && (a instanceof SnapchatCameraBackgroundActivity))
        {
            ((SnapchatCameraBackgroundActivity)a).a(getResources().getColor(0x7f080025));
        }
    }
}
