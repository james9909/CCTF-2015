// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.DatePickerDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.Patterns;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.SnapchatCameraBackgroundActivity;
import com.snapchat.android.SnapkidzHomeActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.SignupTask;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.SnapKidzLoginManager;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.crypto.DeviceToken;
import com.snapchat.android.util.crypto.DeviceTokenManager;
import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            PickUsernameFragment

public class SignupFragment extends SnapchatFragment
    implements com.snapchat.android.api2.SignupTask.SignupCallback
{

    private static SnapKidzLoginManager c;
    private static int d = -1;
    private static int e = -1;
    private static int f = -1;
    private final DeviceTokenManager B;
    SlightlySecurePreferences a;
    protected final android.app.DatePickerDialog.OnDateSetListener b;
    private FragmentActivity g;
    private int h;
    private EditText i;
    private EditText j;
    private EditText k;
    private GregorianCalendar l;
    private View m;
    private Button n;
    private TextView o;
    private ImageView p;
    private TextView q;
    private ImageView r;
    private boolean s;
    private boolean t;
    private final Provider u;
    private final Bus v;

    public SignupFragment()
    {
        this(BusProvider.a(), User.UNSAFE_USER_PROVIDER, DeviceTokenManager.a());
    }

    protected SignupFragment(Bus bus, Provider provider, DeviceTokenManager devicetokenmanager)
    {
        s = false;
        t = false;
        b = new android.app.DatePickerDialog.OnDateSetListener() {

            final SignupFragment a;

            public void onDateSet(DatePicker datepicker, int i1, int j1, int k1)
            {
                GregorianCalendar gregoriancalendar = new GregorianCalendar(i1, j1, k1);
                if (SignupFragment.g(a).get(1) != gregoriancalendar.get(1) || SignupFragment.g(a).get(2) != gregoriancalendar.get(2) || SignupFragment.g(a).get(5) != gregoriancalendar.get(5))
                {
                    SignupFragment.a(a, gregoriancalendar);
                    SignupFragment.h(a).setText((new SimpleDateFormat("MM/dd/yyyy")).format(SignupFragment.g(a).getTime()));
                    SignupFragment.a(a);
                    AnalyticsEvents.y();
                }
            }

            
            {
                a = SignupFragment.this;
                super();
            }
        };
        SnapchatApplication.e().a(this);
        v = bus;
        u = provider;
        B = devicetokenmanager;
    }

    static GregorianCalendar a(SignupFragment signupfragment, GregorianCalendar gregoriancalendar)
    {
        signupfragment.l = gregoriancalendar;
        return gregoriancalendar;
    }

    static void a(SignupFragment signupfragment)
    {
        signupfragment.q();
    }

    static void a(SignupFragment signupfragment, String s1)
    {
        signupfragment.d(s1);
    }

    private void a(String s1)
    {
        User user = (User)u.get();
        if (user != null)
        {
            UserPrefs.c(s1);
            user.H();
        }
        Intent intent = new Intent(g, com/snapchat/android/SnapkidzHomeActivity);
        intent.addFlags(0x4000000);
        startActivity(intent);
        g.finish();
    }

    static boolean a(SignupFragment signupfragment, boolean flag)
    {
        signupfragment.s = flag;
        return flag;
    }

    static void b(SignupFragment signupfragment, String s1)
    {
        signupfragment.e(s1);
    }

    static boolean b(SignupFragment signupfragment)
    {
        return signupfragment.s;
    }

    static boolean b(SignupFragment signupfragment, boolean flag)
    {
        signupfragment.t = flag;
        return flag;
    }

    static EditText c(SignupFragment signupfragment)
    {
        return signupfragment.i;
    }

    static void c(SignupFragment signupfragment, String s1)
    {
        signupfragment.a(s1);
    }

    private void d(String s1)
    {
        if (s1 == null)
        {
            o.setText("");
            o.setVisibility(4);
            p.setVisibility(4);
            return;
        } else
        {
            o.setText(s1);
            o.setVisibility(0);
            p.setVisibility(0);
            return;
        }
    }

    static boolean d(SignupFragment signupfragment)
    {
        return signupfragment.t;
    }

    static void e(SignupFragment signupfragment)
    {
        signupfragment.o();
    }

    private void e(String s1)
    {
        if (s1 == null)
        {
            q.setText("");
            q.setVisibility(4);
            r.setVisibility(4);
            return;
        } else
        {
            q.setText(s1);
            q.setVisibility(0);
            r.setVisibility(0);
            return;
        }
    }

    static EditText f(SignupFragment signupfragment)
    {
        return signupfragment.j;
    }

    static GregorianCalendar g(SignupFragment signupfragment)
    {
        return signupfragment.l;
    }

    static EditText h(SignupFragment signupfragment)
    {
        return signupfragment.k;
    }

    static SnapKidzLoginManager h()
    {
        return c;
    }

    static FragmentActivity i(SignupFragment signupfragment)
    {
        return signupfragment.g;
    }

    private void i()
    {
        i = (EditText)d(0x7f0a02b0);
        o = (TextView)d(0x7f0a02b2);
        p = (ImageView)d(0x7f0a02b1);
        j = (EditText)d(0x7f0a02b3);
        q = (TextView)d(0x7f0a02b5);
        r = (ImageView)d(0x7f0a02b4);
        k = (EditText)d(0x7f0a02b6);
        n = (Button)d(0x7f0a02b8);
        k();
        l();
        n();
        p();
        m = d(0x7f0a02b9);
    }

    static void j(SignupFragment signupfragment)
    {
        signupfragment.r();
    }

    private void k()
    {
        Account aaccount[];
        int i1;
        int j1;
        i.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final SignupFragment a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    AnalyticsEvents.m();
                    return;
                } else
                {
                    SignupFragment.a(a, false);
                    return;
                }
            }

            
            {
                a = SignupFragment.this;
                super();
            }
        });
        aaccount = AccountManager.get(g.getApplicationContext()).getAccounts();
        i1 = aaccount.length;
        j1 = 0;
_L3:
        Account account;
        if (j1 >= i1)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        account = aaccount[j1];
        if (!Patterns.EMAIL_ADDRESS.matcher(account.name).matches()) goto _L2; else goto _L1
_L1:
        AnalyticsEvents.n();
_L4:
        if (account == null)
        {
            i.setHint(0x7f0c01ee);
        } else
        {
            i.setText(account.name);
        }
        i.addTextChangedListener(new TextWatcher() {

            final SignupFragment a;

            public void afterTextChanged(Editable editable)
            {
                SignupFragment.a(a);
                SignupFragment.a(a, null);
                if (!SignupFragment.b(a))
                {
                    AnalyticsEvents.o();
                    SignupFragment.a(a, true);
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int k1, int l1, int i2)
            {
            }

            public void onTextChanged(CharSequence charsequence, int k1, int l1, int i2)
            {
            }

            
            {
                a = SignupFragment.this;
                super();
            }
        });
        p.setOnClickListener(new android.view.View.OnClickListener() {

            final SignupFragment a;

            public void onClick(View view)
            {
                SignupFragment.c(a).setText("");
            }

            
            {
                a = SignupFragment.this;
                super();
            }
        });
        if (i.requestFocus())
        {
            ViewUtils.e(g);
        }
        return;
_L2:
        j1++;
          goto _L3
        account = null;
          goto _L4
    }

    private void l()
    {
        j.setTypeface(Typeface.DEFAULT);
        j.setTransformationMethod(new PasswordTransformationMethod());
        j.addTextChangedListener(new TextWatcher() {

            final SignupFragment a;

            public void afterTextChanged(Editable editable)
            {
                SignupFragment.a(a);
                SignupFragment.b(a, null);
                if (!SignupFragment.d(a))
                {
                    AnalyticsEvents.s();
                    SignupFragment.b(a, true);
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            
            {
                a = SignupFragment.this;
                super();
            }
        });
        j.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final SignupFragment a;

            public boolean onEditorAction(TextView textview, int i1, KeyEvent keyevent)
            {
                SignupFragment.e(a);
                return true;
            }

            
            {
                a = SignupFragment.this;
                super();
            }
        });
        j.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final SignupFragment a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    AnalyticsEvents.r();
                    return;
                } else
                {
                    SignupFragment.b(a, false);
                    return;
                }
            }

            
            {
                a = SignupFragment.this;
                super();
            }
        });
        r.setOnClickListener(new android.view.View.OnClickListener() {

            final SignupFragment a;

            public void onClick(View view)
            {
                SignupFragment.f(a).setText("");
            }

            
            {
                a = SignupFragment.this;
                super();
            }
        });
    }

    private void n()
    {
        k.setOnTouchListener(new android.view.View.OnTouchListener() {

            final SignupFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                android.view.View.OnFocusChangeListener onfocuschangelistener = SignupFragment.f(a).getOnFocusChangeListener();
                if (1 == motionevent.getAction() && onfocuschangelistener != null)
                {
                    SignupFragment.e(a);
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                a = SignupFragment.this;
                super();
            }
        });
    }

    private void o()
    {
        j.getOnFocusChangeListener().onFocusChange(null, false);
        DatePickerDialog datepickerdialog = new DatePickerDialog(g, b, l.get(1), l.get(2), l.get(5));
        datepickerdialog.getDatePicker().setMaxDate((new Date()).getTime());
        datepickerdialog.show();
        ViewUtils.a(g, k);
        AnalyticsEvents.x();
    }

    private void p()
    {
        n.setOnClickListener(new android.view.View.OnClickListener() {

            final SignupFragment a;

            public void onClick(View view)
            {
                String s1 = SignupFragment.c(a).getText().toString().trim().toLowerCase(Locale.US);
                String s2 = SignupFragment.f(a).getText().toString().trim();
                if (SignupFragment.h().a(s1))
                {
                    AlertDialogUtils.a(SignupFragment.i(a), a.getString(0x7f0c011f, new Object[] {
                        s1
                    }));
                    return;
                }
                GregorianCalendar gregoriancalendar = (GregorianCalendar)GregorianCalendar.getInstance();
                gregoriancalendar.add(1, -13);
                if (!SignupFragment.g(a).before(gregoriancalendar))
                {
                    SignupFragment.h().a(s1, s2);
                    AlertDialogUtils.a(0x7f0c01f9, SignupFragment.i(a));
                    SignupFragment.c(a, s1);
                    return;
                } else
                {
                    SignupFragment.j(a);
                    return;
                }
            }

            
            {
                a = SignupFragment.this;
                super();
            }
        });
        FontUtils.a(n, g.getAssets());
    }

    private void q()
    {
        if (!TextUtils.isEmpty(i.getText()) && !TextUtils.isEmpty(j.getText()) && !TextUtils.isEmpty(k.getText()))
        {
            n.setVisibility(0);
            n.setText(0x7f0c0113);
            n.setClickable(true);
            return;
        } else
        {
            n.setVisibility(8);
            return;
        }
    }

    private void r()
    {
        m.setVisibility(0);
        n.setClickable(false);
        n.setText("");
        String s1 = i.getText().toString().trim().toLowerCase(Locale.US);
        String s2 = j.getText().toString().trim();
        AnalyticsEvents.z();
        a.e();
        (new SignupTask(s1, s2, l, this)).g();
    }

    public void a(int i1, String s1)
    {
        if (!isAdded())
        {
            return;
        }
        m.setVisibility(8);
        n.setVisibility(8);
        switch (i1)
        {
        default:
            q();
            AlertDialogUtils.a(g, s1);
            return;

        case -200: 
            AnalyticsEvents.q();
            d(s1);
            return;

        case -201: 
            AnalyticsEvents.p();
            d(s1);
            return;

        case 7: // '\007'
            AnalyticsEvents.t();
            e(s1);
            return;

        case 8: // '\b'
            AnalyticsEvents.u();
            e(s1);
            return;

        case 9: // '\t'
            AnalyticsEvents.v();
            e(s1);
            return;

        case 10: // '\n'
            AnalyticsEvents.w();
            break;
        }
        e(s1);
    }

    protected void a(com.snapchat.android.api2.SignupTask.ResponsePayload responsepayload)
    {
        User user = (User)u.get();
        if (user != null)
        {
            UserPrefs.a(responsepayload);
            user.H();
        }
        b();
    }

    public void a(String s1, String s2, com.snapchat.android.api2.SignupTask.ResponsePayload responsepayload)
    {
        if (isAdded())
        {
            a(responsepayload);
            if (responsepayload.mDeviceTokenId != null && responsepayload.mDeviceTokenValue != null)
            {
                B.a(new DeviceToken(responsepayload.mDeviceTokenId, responsepayload.mDeviceTokenValue));
            }
        }
        AnalyticsEvents.b(s1, s2);
    }

    protected void b()
    {
        try
        {
            g.getSupportFragmentManager().beginTransaction().replace(h, new PickUsernameFragment()).commit();
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.e("SignupFragment", "Attempted to go to PickUsernameFragment", new Object[0]);
        }
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        g = (FragmentActivity)activity;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04007c, viewgroup, false);
        if (d == -1)
        {
            d = getResources().getColor(0x7f08005a);
        }
        if (e == -1)
        {
            e = getResources().getColor(0x7f08003f);
        }
        if (f == -1)
        {
            f = getResources().getColor(0x7f080040);
        }
        l = (GregorianCalendar)GregorianCalendar.getInstance();
        c = SnapKidzLoginManager.a();
        h = viewgroup.getId();
        i();
        return x;
    }

    public void onDetach()
    {
        super.onDetach();
        g = null;
    }

    public void onResume()
    {
        super.onResume();
        if (g != null && (g instanceof SnapchatCameraBackgroundActivity))
        {
            ((SnapchatCameraBackgroundActivity)g).a(d);
        }
        if (UserPrefs.n())
        {
            b();
        }
    }

}
