// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.LoginAndSignupActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.api.RequestTask;
import com.snapchat.android.fragments.verification.NewUserPhoneVerificationFragment;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.model.server.UpdatesResponse;
import com.snapchat.android.ui.dialog.ConfirmTerminateSignupDialog;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class PickUsernameFragment extends SnapchatFragment
{
    class RegisterUsernameTask extends RequestTask
    {

        final PickUsernameFragment a;
        private User b;
        private String c;

        protected String a()
        {
            return "/loq/register_username";
        }

        protected void a(String s, int j)
        {
            super.a(s, j);
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
            int j;
            if (serverresponse == null)
            {
                j = 0x7ffffffa;
            } else
            {
                j = serverresponse.status;
            }
            switch (j)
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

        public RegisterUsernameTask(String s)
        {
            a = PickUsernameFragment.this;
            super();
            b = User.c();
            c = s;
        }
    }


    private FragmentActivity a;
    private TextView b;
    private ProgressBar c;
    private User d;
    private Button e;
    private int f;
    private TextView g;
    private View h;
    private boolean i;

    public PickUsernameFragment()
    {
        i = false;
    }

    static void a(PickUsernameFragment pickusernamefragment)
    {
        pickusernamefragment.b();
    }

    static void a(PickUsernameFragment pickusernamefragment, String s)
    {
        pickusernamefragment.a(s);
    }

    private void a(String s)
    {
        if (s == null)
        {
            g.setVisibility(4);
            h.setVisibility(4);
            return;
        } else
        {
            g.setVisibility(0);
            g.setText(s);
            h.setVisibility(0);
            return;
        }
    }

    static boolean a(PickUsernameFragment pickusernamefragment, boolean flag)
    {
        pickusernamefragment.i = flag;
        return flag;
    }

    private void b()
    {
        if (b.getText().toString().length() > 2)
        {
            e.setVisibility(0);
            e.setText(0x7f0c0179);
            e.setClickable(true);
            return;
        } else
        {
            e.setVisibility(4);
            return;
        }
    }

    static boolean b(PickUsernameFragment pickusernamefragment)
    {
        return pickusernamefragment.i;
    }

    static TextView c(PickUsernameFragment pickusernamefragment)
    {
        return pickusernamefragment.b;
    }

    static FragmentActivity d(PickUsernameFragment pickusernamefragment)
    {
        return pickusernamefragment.a;
    }

    static ProgressBar e(PickUsernameFragment pickusernamefragment)
    {
        return pickusernamefragment.c;
    }

    static Button f(PickUsernameFragment pickusernamefragment)
    {
        return pickusernamefragment.e;
    }

    static void g(PickUsernameFragment pickusernamefragment)
    {
        pickusernamefragment.h();
    }

    private void h()
    {
        try
        {
            a.getSupportFragmentManager().beginTransaction().replace(f, new NewUserPhoneVerificationFragment()).commit();
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.e("PickUsernameFragment", "Attempted to go to PhoneVerificationFragment", new Object[0]);
        }
    }

    public boolean e()
    {
        (new ConfirmTerminateSignupDialog(a, f)).show();
        return true;
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (FragmentActivity)activity;
        d = User.a(a);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04006b, null);
        c = (ProgressBar)d(0x7f0a024f);
        b = (TextView)d(0x7f0a024c);
        b.addTextChangedListener(new TextWatcher() {

            final PickUsernameFragment a;

            public void afterTextChanged(Editable editable)
            {
                PickUsernameFragment.a(a, null);
                PickUsernameFragment.a(a);
                if (!PickUsernameFragment.b(a))
                {
                    AnalyticsEvents.B();
                    PickUsernameFragment.a(a, true);
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int j, int k, int l)
            {
            }

            public void onTextChanged(CharSequence charsequence, int j, int k, int l)
            {
            }

            
            {
                a = PickUsernameFragment.this;
                super();
            }
        });
        b.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final PickUsernameFragment a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    AnalyticsEvents.A();
                    return;
                } else
                {
                    PickUsernameFragment.a(a, false);
                    return;
                }
            }

            
            {
                a = PickUsernameFragment.this;
                super();
            }
        });
        b.setInputType(0x80000);
        if (b.requestFocus())
        {
            ViewUtils.e(a);
        }
        g = (TextView)d(0x7f0a024e);
        h = d(0x7f0a024d);
        h.setOnClickListener(new android.view.View.OnClickListener() {

            final PickUsernameFragment a;

            public void onClick(View view)
            {
                PickUsernameFragment.a(a, null);
                PickUsernameFragment.c(a).setText("");
            }

            
            {
                a = PickUsernameFragment.this;
                super();
            }
        });
        e = (Button)d(0x7f0a0249);
        FontUtils.a(e, a.getAssets());
        e.setVisibility(4);
        e.setOnClickListener(new android.view.View.OnClickListener() {

            final PickUsernameFragment a;

            public void onClick(View view)
            {
                String s = PickUsernameFragment.c(a).getText().toString().trim();
                (a. new RegisterUsernameTask(s)).executeOnExecutor(ScExecutors.b, new String[0]);
                ViewUtils.a(PickUsernameFragment.d(a), PickUsernameFragment.c(a));
            }

            
            {
                a = PickUsernameFragment.this;
                super();
            }
        });
        f = viewgroup.getId();
        return x;
    }

    public void onDetach()
    {
        super.onDetach();
        a = null;
        d = null;
    }

    public void onResume()
    {
        super.onResume();
        if (UserPrefs.k() != null)
        {
            h();
        }
    }
}
