// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.LoginAndSignupActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.captcha.CaptchaFragment;
import com.snapchat.android.fragments.signup.NewUserContactBookFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.VerificationNeededResponse;
import com.snapchat.android.ui.dialog.ConfirmExitSignupDialog;
import com.snapchat.android.ui.dialog.ConfirmTerminateSignupDialog;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.VerificationCodeReceivedEvent;

// Referenced classes of package com.snapchat.android.fragments.verification:
//            PhoneVerificationFragment

public class NewUserPhoneVerificationFragment extends PhoneVerificationFragment
{

    private int j;

    public NewUserPhoneVerificationFragment()
    {
    }

    private void u()
    {
        try
        {
            a.getSupportFragmentManager().beginTransaction().replace(j, new CaptchaFragment(((LoginAndSignupActivity)a).c())).commit();
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.e("NewUserPhoneVerificationFragment", "Attempted to go to CaptchaFragment", new Object[0]);
        }
    }

    private void v()
    {
        UserPrefs.a(false);
        try
        {
            a.getSupportFragmentManager().beginTransaction().replace(j, new NewUserContactBookFragment()).commit();
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.e("NewUserPhoneVerificationFragment", "Attempted to go to NewUserAddFriendsFragment", new Object[0]);
        }
    }

    private void w()
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
        editor.putBoolean(SharedPreferenceKey.x.a(), true);
        editor.apply();
        UserPrefs.a(false);
        startActivity(new Intent(a, com/snapchat/android/LandingPageActivity));
        a.finish();
    }

    protected void a(VerificationNeededResponse verificationneededresponse)
    {
        ((LoginAndSignupActivity)getActivity()).a(verificationneededresponse);
    }

    protected void b()
    {
        if (((LoginAndSignupActivity)a).b())
        {
            u();
            return;
        }
        if (UserPrefs.g())
        {
            v();
            return;
        } else
        {
            w();
            return;
        }
    }

    public boolean e()
    {
        LoginAndSignupActivity loginandsignupactivity = (LoginAndSignupActivity)a;
        if (loginandsignupactivity.b() || loginandsignupactivity.a())
        {
            (new ConfirmTerminateSignupDialog(a, j)).show();
        } else
        {
            (new ConfirmExitSignupDialog(a)).show();
        }
        return true;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        j = viewgroup.getId();
        Button button = (Button)d(0x7f0a000f);
        FontUtils.a(button, I());
        if (!((LoginAndSignupActivity)a).a())
        {
            button.setVisibility(0);
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final NewUserPhoneVerificationFragment a;

                public void onClick(View view)
                {
                    a.b();
                }

            
            {
                a = NewUserPhoneVerificationFragment.this;
                super();
            }
            });
        }
        if (b.requestFocus())
        {
            ViewUtils.e(a);
        }
        return x;
    }

    public void onResume()
    {
        super.onResume();
        if (UserPrefs.g())
        {
            b();
        }
    }

    public void onVerificationCodeReceivedEvent(VerificationCodeReceivedEvent verificationcodereceivedevent)
    {
        super.onVerificationCodeReceivedEvent(verificationcodereceivedevent);
    }
}
