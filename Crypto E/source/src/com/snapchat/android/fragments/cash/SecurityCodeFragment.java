// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.cash.ValidatedInputCallback;
import com.snapchat.android.ui.cash.CardCvvEditText;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SetPagingEnabledEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;

public class SecurityCodeFragment extends SnapchatFragment
{
    public static interface SecurityCodeCallback
    {

        public abstract void a();

        public abstract void a(String s);

        public abstract void b();
    }

    class ValidCvvCallback
        implements ValidatedInputCallback
    {

        final SecurityCodeFragment a;

        public void a()
        {
            SecurityCodeFragment.c(a).setVisibility(8);
        }

        public void b()
        {
            if (SecurityCodeFragment.e(a) == null)
            {
                throw new RuntimeException("Forgot to set a callback on SecurityCodeFragment!");
            }
            if (SecurityCodeFragment.f(a))
            {
                SecurityCodeFragment.c(a, false);
                SecurityCodeFragment.g(a).setBackgroundColor(0xff000000);
            }
            SecurityCodeFragment.c(a).setVisibility(0);
            SecurityCodeFragment.b(a).setEnabled(false);
            SecurityCodeFragment.e(a).a(SecurityCodeFragment.b(a).getUnformattedText());
        }

        public void c()
        {
        }

        private ValidCvvCallback()
        {
            a = SecurityCodeFragment.this;
            super();
        }

    }


    protected View a;
    private CardCvvEditText b;
    private View c;
    private TextView d;
    private boolean e;
    private boolean f;
    private boolean g;
    private SecurityCodeCallback h;

    public SecurityCodeFragment()
    {
        f = false;
        g = false;
    }

    private TextWatcher a(View view)
    {
        return new TextWatcher(view) {

            final View a;
            final SecurityCodeFragment b;
            private boolean c;

            public void afterTextChanged(Editable editable)
            {
                if (!c)
                {
                    SecurityCodeFragment.a(b, a, 0.6F, 1.0F);
                    c = true;
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                b = SecurityCodeFragment.this;
                a = view;
                super();
                c = false;
            }
        };
    }

    static TextView a(SecurityCodeFragment securitycodefragment)
    {
        return securitycodefragment.d;
    }

    static String a(SecurityCodeFragment securitycodefragment, ErrorType errortype, int i)
    {
        return securitycodefragment.b(errortype, i);
    }

    private void a(View view, float f1, float f2)
    {
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(view, View.ALPHA, new float[] {
            f1, f2
        });
        objectanimator.setDuration(1000L);
        objectanimator.start();
    }

    static void a(SecurityCodeFragment securitycodefragment, View view, float f1, float f2)
    {
        securitycodefragment.a(view, f1, f2);
    }

    static boolean a(SecurityCodeFragment securitycodefragment, boolean flag)
    {
        securitycodefragment.e = flag;
        return flag;
    }

    static CardCvvEditText b(SecurityCodeFragment securitycodefragment)
    {
        return securitycodefragment.b;
    }

    private String b(ErrorType errortype, int i)
    {
        String s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
        i;
        JVM INSTR lookupswitch 3: default 76
    //                   409: 165
    //                   422: 122
    //                   429: 165;
           goto _L1 _L2 _L3 _L2
_L1:
        if (errortype == null || errortype == ErrorType.UNKNOWN) goto _L5; else goto _L4
_L4:
        static class _cls5
        {

            static final int a[];

            static 
            {
                a = new int[ErrorType.values().length];
                try
                {
                    a[ErrorType.INVALID_PASSCODE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[ErrorType.TOO_MANY_ATTEMPTS.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[ErrorType.BLOCKED_CARD.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls5.a[errortype.ordinal()];
        JVM INSTR tableswitch 1 3: default 120
    //                   1 208
    //                   2 248
    //                   3 288;
           goto _L5 _L6 _L7 _L8
_L5:
        return s;
_L3:
        s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c010d, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
          goto _L1
_L2:
        s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c0210, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0165, new Object[0])).toString();
          goto _L1
_L6:
        return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c010d, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
_L7:
        return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c0210, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0165, new Object[0])).toString();
_L8:
        return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c004a, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0163, new Object[0])).toString();
    }

    static boolean b(SecurityCodeFragment securitycodefragment, boolean flag)
    {
        securitycodefragment.g = flag;
        return flag;
    }

    static View c(SecurityCodeFragment securitycodefragment)
    {
        return securitycodefragment.c;
    }

    static boolean c(SecurityCodeFragment securitycodefragment, boolean flag)
    {
        securitycodefragment.f = flag;
        return flag;
    }

    static View d(SecurityCodeFragment securitycodefragment)
    {
        return securitycodefragment.x;
    }

    static SecurityCodeCallback e(SecurityCodeFragment securitycodefragment)
    {
        return securitycodefragment.h;
    }

    static boolean f(SecurityCodeFragment securitycodefragment)
    {
        return securitycodefragment.f;
    }

    static View g(SecurityCodeFragment securitycodefragment)
    {
        return securitycodefragment.x;
    }

    private void h()
    {
        b = (CardCvvEditText)d(0x7f0a00aa);
        b.setValidatedInputCallback(new ValidCvvCallback());
        b.addTextChangedListener(a(b));
        b.setAlpha(0.6F);
        if (b.requestFocus())
        {
            ViewUtils.f(getActivity());
        }
        c = d(0x7f0a00ac);
        d = (TextView)d(0x7f0a00af);
        a = d(0x7f0a00ae);
        a.setOnClickListener(new android.view.View.OnClickListener() {

            final SecurityCodeFragment a;

            public void onClick(View view)
            {
                a.b();
            }

            
            {
                a = SecurityCodeFragment.this;
                super();
            }
        });
    }

    public void a(ErrorType errortype, int i)
    {
        ThreadUtils.a(new Runnable(errortype, i) {

            final ErrorType a;
            final int b;
            final SecurityCodeFragment c;

            public void run()
            {
                SecurityCodeFragment.a(c, false);
                SecurityCodeFragment.a(c).setText(SecurityCodeFragment.a(c, a, b));
                if (!ErrorType.isNonRecoverableError(a))
                {
                    SecurityCodeFragment.b(c).setText("");
                    SecurityCodeFragment.b(c).setEnabled(true);
                    if (SecurityCodeFragment.b(c).requestFocus())
                    {
                        ViewUtils.f(c.getActivity());
                    }
                } else
                {
                    SecurityCodeFragment.b(c, true);
                }
                SecurityCodeFragment.c(c).setVisibility(8);
                SecurityCodeFragment.d(c).setBackgroundColor(c.getResources().getColor(0x7f08003c));
                SecurityCodeFragment.c(c, true);
            }

            
            {
                c = SecurityCodeFragment.this;
                a = errortype;
                b = i;
                super();
            }
        });
    }

    public void a(SecurityCodeCallback securitycodecallback)
    {
        h = securitycodecallback;
    }

    protected void b()
    {
        ViewUtils.a(getActivity(), x);
        getActivity().onBackPressed();
    }

    public void d()
    {
        ThreadUtils.a(new Runnable() {

            final SecurityCodeFragment a;

            public void run()
            {
                SecurityCodeFragment.a(a, true);
                a.b();
            }

            
            {
                a = SecurityCodeFragment.this;
                super();
            }
        });
    }

    public boolean e()
    {
        if (!e && h != null)
        {
            if (g)
            {
                h.b();
            } else
            {
                h.a();
            }
        }
        h = null;
        return false;
    }

    public boolean e_()
    {
        return true;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040018, viewgroup, false);
        h();
        return x;
    }

    public void s_()
    {
        ViewUtils.a(G(), x, getActivity());
        BusProvider.a().a(new SetPagingEnabledEvent(false));
    }
}
