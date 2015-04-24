// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.PhoneVerificationAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.api.RequestTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.model.server.VerificationNeededResponse;
import com.snapchat.android.receiver.SmsReceiver;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.VerificationCodeReceivedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.system.time.BlockingCountDownTimer;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public abstract class PhoneVerificationFragment extends SnapchatFragment
{
    class PhoneVerificationRetryCountDownTimer extends BlockingCountDownTimer
    {

        final PhoneVerificationFragment a;

        public void a()
        {
            if (!a.isAdded())
            {
                return;
            } else
            {
                PhoneVerificationFragment.k(a);
                a.q();
                return;
            }
        }

        public void b()
        {
            if (!a.isAdded())
            {
                return;
            } else
            {
                PhoneVerificationFragment.a(a, null);
                a.q();
                return;
            }
        }

        public PhoneVerificationRetryCountDownTimer(int i1, long l1, Handler handler)
        {
            a = PhoneVerificationFragment.this;
            super(i1, l1, handler);
            PhoneVerificationFragment.a(PhoneVerificationFragment.this, i1);
            q();
        }
    }

    class RequestPhoneVerificationCodeTaskForSms extends RequestTask
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

        protected void a(String s1, int i1)
        {
            super.a(s1, i1);
            if (a.isAdded())
            {
                a.h = "";
                a.q();
                PhoneVerificationFragment.a(a, s1);
                ViewUtils.a(a.a, a.b);
            }
            a.a(s1);
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
                PhoneVerificationFragment.a(a, a. new PhoneVerificationRetryCountDownTimer((int)TimeUnit.MINUTES.toSeconds(1L), TimeUnit.SECONDS.toMillis(1L), PhoneVerificationFragment.j(a)));
                PhoneVerificationFragment.a(a).d();
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

        public RequestPhoneVerificationCodeTaskForSms(boolean flag, boolean flag1)
        {
            a = PhoneVerificationFragment.this;
            super();
            c = null;
            h = PhoneVerificationFragment.this.b.getText().toString();
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

    public class VerifyCodeTask extends RequestTask
    {

        final PhoneVerificationFragment a;

        protected String a()
        {
            return "/bq/phone_verify";
        }

        protected void a(String s1, int i1)
        {
            super.a(s1, i1);
            if (a.isAdded())
            {
                a.q();
                a.g.setVisibility(4);
                a.b.setEnabled(true);
                a.e.setEnabled(true);
                PhoneVerificationFragment.b(a, s1);
            }
            a.a(s1);
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
            com.snapchat.android.analytics.PhoneVerificationAnalytics.VerificationType verificationtype;
            if (a.p())
            {
                verificationtype = com.snapchat.android.analytics.PhoneVerificationAnalytics.VerificationType.VERIFIED_NUMBER;
            } else
            if (UserPrefs.g())
            {
                verificationtype = com.snapchat.android.analytics.PhoneVerificationAnalytics.VerificationType.VERIFIED_NEW_NUMBER;
            } else
            {
                verificationtype = com.snapchat.android.analytics.PhoneVerificationAnalytics.VerificationType.REGISTERED_NUMBER;
            }
            PhoneVerificationAnalytics.a(verificationtype);
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

        protected VerifyCodeTask()
        {
            a = PhoneVerificationFragment.this;
            super();
        }
    }


    public FragmentActivity a;
    public EditText b;
    protected TextView c;
    protected View d;
    protected EditText e;
    public Button f;
    protected ProgressBar g;
    protected String h;
    protected boolean i;
    private String j;
    private View k;
    private View l;
    private TextView m;
    private boolean n;
    private boolean o;
    private boolean p;
    private Handler q;
    private PhoneVerificationRetryCountDownTimer r;
    private AlertDialog s;
    private int t;
    private SmsReceiver u;
    private boolean v;

    public PhoneVerificationFragment()
    {
        h = "";
        n = false;
        o = false;
        p = false;
        i = false;
        v = true;
    }

    static int a(PhoneVerificationFragment phoneverificationfragment, int i1)
    {
        phoneverificationfragment.t = i1;
        return i1;
    }

    private Pair a(String as[])
    {
        String s1 = Locale.getDefault().getCountry();
        for (int i1 = 0; i1 < as.length; i1++)
        {
            if (TextUtils.equals(s1, as[i1]))
            {
                return new Pair(Integer.valueOf(i1), s1);
            }
        }

        for (int j1 = 0; j1 < as.length; j1++)
        {
            if (TextUtils.equals(Locale.US.getCountry(), as[j1]))
            {
                return new Pair(Integer.valueOf(j1), Locale.US.getCountry());
            }
        }

        return new Pair(Integer.valueOf(0), as[0]);
    }

    static PhoneVerificationRetryCountDownTimer a(PhoneVerificationFragment phoneverificationfragment)
    {
        return phoneverificationfragment.r;
    }

    static PhoneVerificationRetryCountDownTimer a(PhoneVerificationFragment phoneverificationfragment, PhoneVerificationRetryCountDownTimer phoneverificationretrycountdowntimer)
    {
        phoneverificationfragment.r = phoneverificationretrycountdowntimer;
        return phoneverificationretrycountdowntimer;
    }

    static void a(PhoneVerificationFragment phoneverificationfragment, String s1)
    {
        phoneverificationfragment.d(s1);
    }

    static boolean a(PhoneVerificationFragment phoneverificationfragment, boolean flag)
    {
        phoneverificationfragment.n = flag;
        return flag;
    }

    static void b(PhoneVerificationFragment phoneverificationfragment)
    {
        phoneverificationfragment.w();
    }

    static void b(PhoneVerificationFragment phoneverificationfragment, String s1)
    {
        phoneverificationfragment.e(s1);
    }

    static boolean b(PhoneVerificationFragment phoneverificationfragment, boolean flag)
    {
        phoneverificationfragment.o = flag;
        return flag;
    }

    private CharSequence[] b(String as[])
    {
        String as1[] = new String[as.length];
        Locale locale = Locale.getDefault();
        for (int i1 = 0; i1 < as.length; i1++)
        {
            String s1 = as[i1];
            Locale locale1 = new Locale(locale.getLanguage(), s1);
            as1[i1] = (new StringBuilder()).append(s1).append(" - ").append(locale1.getDisplayCountry()).toString();
        }

        return as1;
    }

    static String c(PhoneVerificationFragment phoneverificationfragment, String s1)
    {
        phoneverificationfragment.j = s1;
        return s1;
    }

    static boolean c(PhoneVerificationFragment phoneverificationfragment)
    {
        return phoneverificationfragment.n;
    }

    private void d(String s1)
    {
        if (s1 == null)
        {
            m.setText("");
            m.setVisibility(4);
            l.setVisibility(4);
            return;
        } else
        {
            m.setVisibility(0);
            m.setText(s1);
            l.setVisibility(0);
            return;
        }
    }

    static boolean d(PhoneVerificationFragment phoneverificationfragment)
    {
        return phoneverificationfragment.o;
    }

    static void e(PhoneVerificationFragment phoneverificationfragment)
    {
        phoneverificationfragment.x();
    }

    private void e(String s1)
    {
        if (s1 == null)
        {
            c.setText("");
            TextView textview = c;
            byte byte0;
            if (e.getVisibility() == 0)
            {
                byte0 = 4;
            } else
            {
                byte0 = 8;
            }
            textview.setVisibility(byte0);
            d.setVisibility(4);
            return;
        } else
        {
            c.setVisibility(0);
            c.setText(s1);
            d.setVisibility(0);
            return;
        }
    }

    static boolean f(PhoneVerificationFragment phoneverificationfragment)
    {
        return phoneverificationfragment.p;
    }

    static void g(PhoneVerificationFragment phoneverificationfragment)
    {
        phoneverificationfragment.u();
    }

    static AlertDialog h(PhoneVerificationFragment phoneverificationfragment)
    {
        return phoneverificationfragment.s;
    }

    static String i(PhoneVerificationFragment phoneverificationfragment)
    {
        return phoneverificationfragment.j;
    }

    static Handler j(PhoneVerificationFragment phoneverificationfragment)
    {
        return phoneverificationfragment.q;
    }

    static int k(PhoneVerificationFragment phoneverificationfragment)
    {
        int i1 = phoneverificationfragment.t;
        phoneverificationfragment.t = i1 - 1;
        return i1;
    }

    private void u()
    {
        Timber.c("PhoneVerificationFragment", "registerSmsReceiver()", new Object[0]);
        if (u == null)
        {
            u = new SmsReceiver();
            getActivity().registerReceiver(u, new IntentFilter("android.provider.Telephony.SMS_RECEIVED"));
        }
    }

    private void v()
    {
        Timber.c("PhoneVerificationFragment", "unregisterSmsReceiver()", new Object[0]);
        if (u != null)
        {
            getActivity().unregisterReceiver(u);
            u = null;
        }
    }

    private void w()
    {
        if (!TextUtils.isEmpty(h) && TextUtils.equals(b.getText(), h))
        {
            e.setVisibility(0);
            c.setVisibility(4);
            return;
        } else
        {
            e.setText("");
            e.setVisibility(8);
            c.setVisibility(8);
            d.setVisibility(8);
            return;
        }
    }

    private void x()
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final PhoneVerificationFragment a;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                a.q();
                (a. new RequestPhoneVerificationCodeTaskForSms(false, a.p())).executeOnExecutor(ScExecutors.b, new String[0]);
                RegistrationAnalytics.j();
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        };
        android.content.DialogInterface.OnClickListener onclicklistener1 = new android.content.DialogInterface.OnClickListener() {

            final PhoneVerificationFragment a;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                PhoneVerificationFragment.g(a);
                a.q();
                (a. new RequestPhoneVerificationCodeTaskForSms(true, a.p())).executeOnExecutor(ScExecutors.b, new String[0]);
                RegistrationAnalytics.i();
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        };
        android.content.DialogInterface.OnClickListener onclicklistener2 = new android.content.DialogInterface.OnClickListener() {

            final PhoneVerificationFragment a;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                RegistrationAnalytics.k();
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        };
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a);
        Object aobj[] = new Object[1];
        aobj[0] = b.getText().toString();
        builder.setMessage(getString(0x7f0c0158, aobj)).setPositiveButton(0x7f0c00a0, onclicklistener1).setNegativeButton(0x7f0c003d, onclicklistener2).setNeutralButton(0x7f0c009b, onclicklistener).create().show();
    }

    public abstract void a(VerificationNeededResponse verificationneededresponse);

    public void a(String s1)
    {
    }

    public void a(boolean flag)
    {
        v = flag;
        if (k != null)
        {
            View view = k;
            int i1;
            if (flag)
            {
                i1 = 0;
            } else
            {
                i1 = 8;
            }
            view.setVisibility(i1);
        }
    }

    public abstract void b();

    public void h()
    {
        k();
        i();
    }

    protected void i()
    {
        String s1 = ((TelephonyManager)a.getApplicationContext().getSystemService("phone")).getLine1Number();
        if (s1 != null)
        {
            b.setText(s1);
            RegistrationAnalytics.c();
        }
    }

    protected void k()
    {
        b.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final PhoneVerificationFragment a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    ViewUtils.f(a.getActivity());
                    RegistrationAnalytics.b();
                    return;
                } else
                {
                    PhoneVerificationFragment.a(a, false);
                    return;
                }
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        });
        b.addTextChangedListener(new TextWatcher() {

            final PhoneVerificationFragment a;

            public void afterTextChanged(Editable editable)
            {
                a.h = "";
                if (PhoneVerificationFragment.a(a) != null)
                {
                    PhoneVerificationFragment.a(a).c();
                    PhoneVerificationFragment.a(a, null);
                }
                PhoneVerificationFragment.a(a, null);
                PhoneVerificationFragment.b(a);
                a.q();
                if (!PhoneVerificationFragment.c(a))
                {
                    RegistrationAnalytics.d();
                    PhoneVerificationFragment.a(a, true);
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        });
        l.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerificationFragment a;

            public void onClick(View view)
            {
                PhoneVerificationFragment.a(a, null);
                a.b.setText("");
                a.b.requestFocus();
                RegistrationAnalytics.q();
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        });
    }

    public void l()
    {
        e.addTextChangedListener(new TextWatcher() {

            final PhoneVerificationFragment a;

            public void afterTextChanged(Editable editable)
            {
                PhoneVerificationFragment.b(a, null);
                a.q();
                if (!PhoneVerificationFragment.d(a))
                {
                    RegistrationAnalytics.n();
                    PhoneVerificationFragment.b(a, true);
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        });
        e.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final PhoneVerificationFragment a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    RegistrationAnalytics.m();
                    return;
                } else
                {
                    PhoneVerificationFragment.b(a, false);
                    return;
                }
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        });
        d.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerificationFragment a;

            public void onClick(View view)
            {
                PhoneVerificationFragment.b(a, null);
                a.e.setText("");
                a.e.requestFocus();
                RegistrationAnalytics.s();
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        });
    }

    public void n()
    {
        FontUtils.a(f, I());
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerificationFragment a;

            public void onClick(View view)
            {
                if (TextUtils.equals(a.b.getText(), a.h) && a.e.length() == 6)
                {
                    (a. new VerifyCodeTask()).executeOnExecutor(ScExecutors.b, new String[0]);
                    RegistrationAnalytics.o();
                } else
                {
                    PhoneVerificationFragment.e(a);
                    RegistrationAnalytics.h();
                    if (PhoneVerificationFragment.f(a))
                    {
                        RegistrationAnalytics.r();
                        return;
                    }
                }
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        });
    }

    public void o()
    {
        b = (EditText)d(0x7f0a00cd);
        m = (TextView)d(0x7f0a00cf);
        l = d(0x7f0a00ce);
        e = (EditText)d(0x7f0a00d0);
        c = (TextView)d(0x7f0a00d2);
        d = d(0x7f0a00d1);
        f = (Button)d(0x7f0a00d4);
        FontUtils.a(f, I());
        g = (ProgressBar)d(0x7f0a00d5);
        k = d(0x7f0a0247);
        if (k != null)
        {
            View view = k;
            int i1;
            if (v)
            {
                i1 = 0;
            } else
            {
                i1 = 8;
            }
            view.setVisibility(i1);
        }
        q = new Handler();
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (FragmentActivity)activity;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04006a, null);
        o();
        n();
        r();
        h();
        l();
        return x;
    }

    public void onDetach()
    {
        super.onDetach();
        a = null;
    }

    public void onPause()
    {
        G().setSoftInputMode(3);
        super.onPause();
        if (s != null)
        {
            s.dismiss();
        }
        v();
    }

    public void onVerificationCodeReceivedEvent(VerificationCodeReceivedEvent verificationcodereceivedevent)
    {
        if (TextUtils.isEmpty(e.getText()))
        {
            e.setText(verificationcodereceivedevent.a);
            f.performClick();
        }
    }

    protected boolean p()
    {
        return i && TextUtils.equals(b.getText(), UserPrefs.f());
    }

    protected void q()
    {
        if (TextUtils.isEmpty(b.getText()) || !i && TextUtils.equals(b.getText(), UserPrefs.f()))
        {
            f.setVisibility(8);
            p = false;
            return;
        }
        if (!TextUtils.equals(b.getText(), h))
        {
            PhoneNumberUtil phonenumberutil = PhoneNumberUtil.a();
            if (TextUtils.isEmpty(j) || phonenumberutil.a(b.getText().toString(), j))
            {
                f.setVisibility(0);
                f.setText(0x7f0c00a3);
                f.setClickable(true);
                f.setEnabled(true);
            } else
            {
                f.setVisibility(8);
            }
            p = false;
            return;
        }
        f.setVisibility(0);
        p = false;
        if (e.length() == 6)
        {
            f.setText(0x7f0c00a3);
            f.setClickable(true);
            f.setEnabled(true);
            return;
        }
        if (r == null)
        {
            f.setText(0x7f0c015e);
            f.setClickable(true);
            f.setEnabled(true);
            return;
        } else
        {
            f.setText((new StringBuilder()).append(getString(0x7f0c015e)).append(" ").append(t).toString());
            f.setEnabled(false);
            p = true;
            return;
        }
    }

    public void r()
    {
        TextView textview = (TextView)d(0x7f0a00cc);
        String as[] = Locale.getISOCountries();
        Pair pair = a(as);
        j = (String)pair.second;
        CharSequence acharsequence[] = b(as);
        s = (new android.app.AlertDialog.Builder(a)).setInverseBackgroundForced(true).setSingleChoiceItems(acharsequence, ((Integer)pair.first).intValue(), new android.content.DialogInterface.OnClickListener(as, textview, acharsequence) {

            final String a[];
            final TextView b;
            final CharSequence c[];
            final PhoneVerificationFragment d;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                PhoneVerificationFragment.c(d, a[i1]);
                b.setText(c[i1]);
                d.q();
                dialoginterface.dismiss();
                RegistrationAnalytics.g();
            }

            
            {
                d = PhoneVerificationFragment.this;
                a = as;
                b = textview;
                c = acharsequence;
                super();
            }
        }).setCancelable(true).setTitle(0x7f0c009f).create();
        textview.setText(acharsequence[((Integer)pair.first).intValue()]);
        textview.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerificationFragment a;

            public void onClick(View view)
            {
                PhoneVerificationFragment.h(a).show();
                RegistrationAnalytics.f();
            }

            
            {
                a = PhoneVerificationFragment.this;
                super();
            }
        });
    }

    protected void s()
    {
        b();
    }

    protected boolean t()
    {
        return true;
    }

    public boolean t_()
    {
        return true;
    }
}
