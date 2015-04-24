// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.SnapchatCameraBackgroundActivity;
import com.snapchat.android.SnapkidzHomeActivity;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.LoginTask;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.PreferenceUtils;
import com.snapchat.android.util.SnapKidzLoginManager;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.crypto.DeviceToken;
import com.snapchat.android.util.crypto.DeviceTokenManager;
import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.util.Locale;
import javax.inject.Provider;

public class LoginFragment extends SnapchatFragment
    implements com.snapchat.android.api2.LoginTask.LoginCallback
{

    private static int b = -1;
    private static int c = -1;
    private static int d = -1;
    private static SnapKidzLoginManager e;
    SlightlySecurePreferences a;
    private EditText f;
    private TextView g;
    private TextView h;
    private ImageView i;
    private ImageView j;
    private EditText k;
    private View l;
    private Button m;
    private boolean n;
    private long o;
    private Drawable p;
    private final Bus q;
    private final Provider r;
    private final DeviceTokenManager s;
    private final android.view.View.OnClickListener t;
    private final TextWatcher u;

    public LoginFragment()
    {
        this(BusProvider.a(), User.UNSAFE_USER_PROVIDER, DeviceTokenManager.a());
    }

    protected LoginFragment(Bus bus, Provider provider, DeviceTokenManager devicetokenmanager)
    {
        n = false;
        t = new android.view.View.OnClickListener() {

            final LoginFragment a;

            public void onClick(View view)
            {
                ((InputMethodManager)a.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(LoginFragment.a(a).getApplicationWindowToken(), 0);
                String s1 = LoginFragment.a(a).getText().toString().trim().toLowerCase(Locale.US);
                String s2 = LoginFragment.b(a).getText().toString().trim();
                if (LoginFragment.b().a(s1))
                {
                    if (LoginFragment.b().b(s1, s2))
                    {
                        LoginFragment.a(a, s1);
                        return;
                    } else
                    {
                        AlertDialogUtils.a(a.getActivity(), a.getString(0x7f0c010b));
                        return;
                    }
                } else
                {
                    LoginFragment.c(a);
                    return;
                }
            }

            
            {
                a = LoginFragment.this;
                super();
            }
        };
        u = new TextWatcher() {

            final LoginFragment a;

            public void afterTextChanged(Editable editable)
            {
                LoginFragment.d(a);
                LoginFragment.b(a, null);
                LoginFragment.c(a, null);
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            
            {
                a = LoginFragment.this;
                super();
            }
        };
        SnapchatApplication.e().a(this);
        q = bus;
        r = provider;
        s = devicetokenmanager;
    }

    static EditText a(LoginFragment loginfragment)
    {
        return loginfragment.f;
    }

    static void a(LoginFragment loginfragment, String s1)
    {
        loginfragment.f(s1);
    }

    static EditText b(LoginFragment loginfragment)
    {
        return loginfragment.k;
    }

    static SnapKidzLoginManager b()
    {
        return e;
    }

    static void b(LoginFragment loginfragment, String s1)
    {
        loginfragment.d(s1);
    }

    static void c(LoginFragment loginfragment)
    {
        loginfragment.n();
    }

    static void c(LoginFragment loginfragment, String s1)
    {
        loginfragment.e(s1);
    }

    static void d(LoginFragment loginfragment)
    {
        loginfragment.l();
    }

    private void d(String s1)
    {
        if (s1 == null)
        {
            g.setVisibility(4);
            i.setVisibility(4);
            return;
        } else
        {
            g.setVisibility(0);
            g.setText(s1);
            i.setVisibility(0);
            return;
        }
    }

    static Drawable e(LoginFragment loginfragment)
    {
        return loginfragment.p;
    }

    private void e(String s1)
    {
        if (s1 == null)
        {
            h.setVisibility(4);
            j.setVisibility(4);
            return;
        } else
        {
            h.setVisibility(0);
            h.setText(s1);
            j.setVisibility(0);
            return;
        }
    }

    static Button f(LoginFragment loginfragment)
    {
        return loginfragment.m;
    }

    private void f(String s1)
    {
        User user = (User)r.get();
        if (user != null)
        {
            UserPrefs.c(s1);
            user.H();
        }
        FragmentActivity fragmentactivity = getActivity();
        Intent intent = new Intent(fragmentactivity, com/snapchat/android/SnapkidzHomeActivity);
        intent.addFlags(0x4000000);
        startActivity(intent);
        fragmentactivity.finish();
    }

    static int h()
    {
        return d;
    }

    static int i()
    {
        return c;
    }

    private void k()
    {
        FragmentActivity fragmentactivity;
        String s1;
        fragmentactivity = getActivity();
        f = (EditText)d(0x7f0a0210);
        f.addTextChangedListener(u);
        g = (TextView)d(0x7f0a0212);
        i = (ImageView)d(0x7f0a0211);
        i.setOnClickListener(new android.view.View.OnClickListener() {

            final LoginFragment a;

            public void onClick(View view)
            {
                LoginFragment.a(a).setText("");
                LoginFragment.b(a, null);
            }

            
            {
                a = LoginFragment.this;
                super();
            }
        });
        k = (EditText)d(0x7f0a0213);
        k.setTypeface(Typeface.DEFAULT);
        k.setTransformationMethod(new PasswordTransformationMethod());
        k.addTextChangedListener(u);
        k.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final LoginFragment a;

            public boolean onEditorAction(TextView textview, int i1, KeyEvent keyevent)
            {
                LoginFragment.c(a);
                return false;
            }

            
            {
                a = LoginFragment.this;
                super();
            }
        });
        h = (TextView)d(0x7f0a0215);
        j = (ImageView)d(0x7f0a0214);
        j.setOnClickListener(new android.view.View.OnClickListener() {

            final LoginFragment a;

            public void onClick(View view)
            {
                LoginFragment.b(a).setText("");
                LoginFragment.c(a, null);
            }

            
            {
                a = LoginFragment.this;
                super();
            }
        });
        m = (Button)d(0x7f0a0217);
        FontUtils.a(m, fragmentactivity.getAssets());
        m.setOnClickListener(t);
        m.setOnTouchListener(new android.view.View.OnTouchListener() {

            final LoginFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                LoginFragment.f(a).setBackgroundDrawable(LoginFragment.e(a));
                return false;
            }

            
            {
                a = LoginFragment.this;
                super();
            }
        });
        l = d(0x7f0a0218);
        s1 = PreferenceManager.getDefaultSharedPreferences(fragmentactivity).getString(SharedPreferenceKey.a.a(), null);
        if (s1 == null) goto _L2; else goto _L1
_L1:
        f.setText(s1);
        if (k.requestFocus())
        {
            ViewUtils.e(fragmentactivity);
        }
_L4:
        m.setVisibility(4);
        return;
_L2:
        if (f.requestFocus())
        {
            ViewUtils.e(fragmentactivity);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void l()
    {
        if (TextUtils.isEmpty(f.getText()) || TextUtils.isEmpty(k.getText())) goto _L2; else goto _L1
_L1:
        m.setText(0x7f0c0112);
        m.setClickable(true);
        m.setVisibility(0);
        if (!n) goto _L4; else goto _L3
_L3:
        return;
_L4:
        n = true;
        Drawable adrawable[] = new Drawable[2];
        adrawable[0] = new ColorDrawable(c);
        adrawable[1] = new ColorDrawable(d);
        TransitionDrawable transitiondrawable = new TransitionDrawable(adrawable);
        int i1 = m.getPaddingBottom();
        m.setBackgroundDrawable(transitiondrawable);
        m.setPadding(i1, i1, i1, i1);
        transitiondrawable.startTransition(400);
        o = System.nanoTime();
        return;
_L2:
        m.setVisibility(4);
        if (n)
        {
            n = false;
            Runnable runnable = new Runnable() {

                final LoginFragment a;

                public void run()
                {
                    Drawable adrawable1[] = new Drawable[2];
                    adrawable1[0] = new ColorDrawable(LoginFragment.h());
                    adrawable1[1] = new ColorDrawable(LoginFragment.i());
                    TransitionDrawable transitiondrawable1 = new TransitionDrawable(adrawable1);
                    int j1 = LoginFragment.f(a).getPaddingBottom();
                    LoginFragment.f(a).setBackgroundDrawable(transitiondrawable1);
                    LoginFragment.f(a).setPadding(j1, j1, j1, j1);
                    transitiondrawable1.startTransition(400);
                }

            
            {
                a = LoginFragment.this;
                super();
            }
            };
            long l1 = 400L - 0xf4240L * (System.nanoTime() - o);
            (new Handler()).postDelayed(runnable, l1);
            return;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    private void n()
    {
        l.setVisibility(0);
        m.setClickable(false);
        m.setText("");
        (new LoginTask(f.getText().toString().trim().toLowerCase(Locale.US), k.getText().toString().trim(), this)).g();
    }

    public void a(int i1, String s1)
    {
        if (!isAdded())
        {
            return;
        }
        l.setVisibility(4);
        m.setVisibility(4);
        if (i1 == -101)
        {
            d(s1);
            return;
        }
        if (i1 == -100)
        {
            e(s1);
            return;
        } else
        {
            l();
            (new android.app.AlertDialog.Builder(getActivity())).setMessage(s1).setCancelable(false).setNegativeButton(0x7f0c0121, new android.content.DialogInterface.OnClickListener() {

                final LoginFragment a;

                public void onClick(DialogInterface dialoginterface, int j1)
                {
                    dialoginterface.cancel();
                }

            
            {
                a = LoginFragment.this;
                super();
            }
            }).show();
            return;
        }
    }

    protected void a(com.snapchat.android.api2.LoginTask.ResponsePayload responsepayload)
    {
        User user = (User)r.get();
        if (user != null)
        {
            user.a(responsepayload, true);
            user.H();
        }
        if (UserPrefs.k() != null)
        {
            FragmentActivity fragmentactivity = getActivity();
            Intent intent = new Intent(fragmentactivity, com/snapchat/android/LandingPageActivity);
            intent.addFlags(0x4000000);
            startActivity(intent);
            fragmentactivity.finish();
        }
    }

    void a(String s1)
    {
        String s2 = PreferenceUtils.a(SharedPreferenceKey.a.a(), null);
        PreferenceUtils.b(SharedPreferenceKey.a.a(), s1);
        if (!TextUtils.equals(s2, s1))
        {
            a.e();
        }
        UserPrefs.a(false);
    }

    public void a(String s1, com.snapchat.android.api2.LoginTask.ResponsePayload responsepayload)
    {
        if (!isAdded())
        {
            return;
        }
        ThreadUtils.b(new Runnable(s1) {

            final String a;
            final LoginFragment b;

            public void run()
            {
                b.a(a);
            }

            
            {
                b = LoginFragment.this;
                a = s1;
                super();
            }
        });
        a(responsepayload);
        if (responsepayload.mDeviceTokenId != null && responsepayload.mDeviceTokenValue != null)
        {
            s.a(new DeviceToken(responsepayload.mDeviceTokenId, responsepayload.mDeviceTokenValue));
        }
        AnalyticsEvents.l();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        e = SnapKidzLoginManager.a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040060, viewgroup, false);
        if (b == -1)
        {
            b = getResources().getColor(0x7f08005a);
        }
        if (c == -1)
        {
            c = getResources().getColor(0x7f08003f);
        }
        if (d == -1)
        {
            d = getResources().getColor(0x7f080040);
        }
        k();
        p = getResources().getDrawable(0x7f0201c9);
        return x;
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        f = null;
        k = null;
        l = null;
        m = null;
    }

    public void onResume()
    {
        super.onResume();
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity instanceof SnapchatCameraBackgroundActivity)
        {
            ((SnapchatCameraBackgroundActivity)fragmentactivity).a(b);
        }
    }

}
