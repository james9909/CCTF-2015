// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.CardInputError;
import com.snapchat.android.api2.cash.blockers.ValidatedCardInputCallback;
import com.snapchat.android.cash.ValidatedInputCallback;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.cash.CardCvvEditText;
import com.snapchat.android.ui.cash.CardExpiryEditText;
import com.snapchat.android.ui.cash.CardNumberEditText;
import com.snapchat.android.ui.cash.ZipEditText;
import com.snapchat.android.ui.listeners.DisableCustomSelectionActionModeCallback;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.threading.ThreadUtils;

public class CardLinkFragment extends SnapchatFragment
    implements ValidatedCardInputCallback
{
    public static interface CardDetailsListener
    {

        public abstract void a(String s1, String s2, String s3, String s4, ValidatedCardInputCallback validatedcardinputcallback);

        public abstract void e();
    }

    static class ClearErrorStateOnInputTextWatcher
        implements TextWatcher
    {

        private TextView a;
        private ImageView b;

        public void afterTextChanged(Editable editable)
        {
        }

        public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
        {
            if (a.getVisibility() == 0)
            {
                a.setText("");
                a.setVisibility(4);
                b.setVisibility(8);
            }
        }

        ClearErrorStateOnInputTextWatcher(TextView textview, ImageView imageview)
        {
            a = textview;
            b = imageview;
        }
    }


    private ScrollView a;
    private CardNumberEditText b;
    private ImageView c;
    private TextView d;
    private CardExpiryEditText e;
    private ImageView f;
    private TextView g;
    private CardCvvEditText h;
    private ImageView i;
    private ImageView j;
    private TextView k;
    private ZipEditText l;
    private ImageView m;
    private TextView n;
    private Button o;
    private ProgressBar p;
    private boolean q;
    private boolean r;
    private Animation s;
    private boolean t;
    private CardDetailsListener u;

    public CardLinkFragment()
    {
        q = true;
        r = false;
    }

    private void a(EditText edittext)
    {
        if (edittext.requestFocus())
        {
            ViewUtils.f(getActivity());
        }
    }

    static void a(CardLinkFragment cardlinkfragment)
    {
        cardlinkfragment.i();
    }

    static void a(CardLinkFragment cardlinkfragment, EditText edittext)
    {
        cardlinkfragment.a(edittext);
    }

    static void a(CardLinkFragment cardlinkfragment, CardInputError cardinputerror)
    {
        cardlinkfragment.b(cardinputerror);
    }

    static boolean a(CardLinkFragment cardlinkfragment, boolean flag)
    {
        cardlinkfragment.t = flag;
        return flag;
    }

    static CardNumberEditText b(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.b;
    }

    private void b(CardInputError cardinputerror)
    {
        a.pageScroll(33);
        d.setText(g(cardinputerror));
        d.setVisibility(0);
        c.setVisibility(0);
        b.startAnimation(s);
        b.requestFocus();
    }

    static void b(CardLinkFragment cardlinkfragment, CardInputError cardinputerror)
    {
        cardlinkfragment.c(cardinputerror);
    }

    static boolean b(CardLinkFragment cardlinkfragment, boolean flag)
    {
        cardlinkfragment.q = flag;
        return flag;
    }

    private void c(CardInputError cardinputerror)
    {
        g.setText(g(cardinputerror));
        g.setVisibility(0);
        f.setVisibility(0);
        e.startAnimation(s);
        e.requestFocus();
    }

    static void c(CardLinkFragment cardlinkfragment, CardInputError cardinputerror)
    {
        cardlinkfragment.d(cardinputerror);
    }

    static boolean c(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.k();
    }

    static CardExpiryEditText d(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.e;
    }

    private void d(CardInputError cardinputerror)
    {
        k.setText(g(cardinputerror));
        k.setVisibility(0);
        j.setVisibility(0);
        i.setVisibility(8);
        h.startAnimation(s);
        h.requestFocus();
    }

    static void d(CardLinkFragment cardlinkfragment, CardInputError cardinputerror)
    {
        cardlinkfragment.e(cardinputerror);
    }

    static CardCvvEditText e(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.h;
    }

    private void e(CardInputError cardinputerror)
    {
        n.setText(g(cardinputerror));
        n.setVisibility(0);
        m.setVisibility(0);
        l.startAnimation(s);
        l.requestFocus();
        a.pageScroll(130);
    }

    static void e(CardLinkFragment cardlinkfragment, CardInputError cardinputerror)
    {
        cardlinkfragment.f(cardinputerror);
    }

    static ImageView f(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.i;
    }

    private void f(CardInputError cardinputerror)
    {
        AlertDialogUtils.a(getActivity(), h(cardinputerror), g(cardinputerror));
    }

    static ZipEditText g(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.l;
    }

    private String g(CardInputError cardinputerror)
    {
        static class _cls14
        {

            static final int a[];

            static 
            {
                a = new int[CardInputError.values().length];
                try
                {
                    a[CardInputError.INVALID_CARD_NUMBER.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[CardInputError.BLOCKED_CARD.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[CardInputError.INVALID_EXPIRATION.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[CardInputError.INVALID_SECURITY_CODE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[CardInputError.INVALID_POSTAL_CODE.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[CardInputError.CARD_TYPE_UNSUPPORTED.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[CardInputError.UNSUPPORTED_REGION.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[CardInputError.TOO_MANY_ATTEMPTS.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[CardInputError.NETWORK_FAILURE.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8)
                {
                    return;
                }
            }
        }

        switch (_cls14.a[cardinputerror.ordinal()])
        {
        default:
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append(" ").append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();

        case 6: // '\006'
        case 7: // '\007'
            return LocalizationUtils.a(0x7f0c0051, new Object[0]);

        case 1: // '\001'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c010c, new Object[0])).append(" ").append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();

        case 3: // '\003'
        case 4: // '\004'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c010e, new Object[0])).append(" ").append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();

        case 5: // '\005'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c010f, new Object[0])).append(" ").append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();

        case 8: // '\b'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c0210, new Object[0])).append(" ").append(LocalizationUtils.a(0x7f0c0165, new Object[0])).toString();

        case 2: // '\002'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c004a, new Object[0])).append(" ").append(LocalizationUtils.a(0x7f0c0163, new Object[0])).toString();

        case 9: // '\t'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c0132, new Object[0])).append(" ").append(LocalizationUtils.a(0x7f0c0171, new Object[0])).toString();
        }
    }

    private String h(CardInputError cardinputerror)
    {
        switch (_cls14.a[cardinputerror.ordinal()])
        {
        default:
            return LocalizationUtils.a(0x7f0c002b, new Object[0]);

        case 6: // '\006'
        case 7: // '\007'
            return LocalizationUtils.a(0x7f0c0050, new Object[0]);
        }
    }

    private void h()
    {
        TextView textview = (TextView)d(0x7f0a00b2);
        ImageView imageview = (ImageView)d(0x7f0a0030);
        Button button = (Button)d(0x7f0a00b5);
        Bundle bundle = getArguments();
        if (bundle != null && bundle.getBoolean("use_default_green"))
        {
            textview.setTextColor(getResources().getColor(0x7f08002a));
            imageview.setBackgroundResource(0x7f020015);
            button.setBackgroundResource(0x7f0201c9);
        } else
        {
            textview.setTextColor(getResources().getColor(0x7f080046));
            imageview.setBackgroundResource(0x7f02009d);
            button.setBackgroundResource(0x7f02009f);
        }
        a = (ScrollView)d(0x7f0a00b4);
        d(0x7f0a00b1).setOnClickListener(new android.view.View.OnClickListener() {

            final CardLinkFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
        b = (CardNumberEditText)d(0x7f0a00b6);
        b.setValidatedInputCallback(new ValidatedInputCallback() {

            final CardLinkFragment a;

            public void a()
            {
                CardLinkFragment.a(a);
                CardInputError cardinputerror = CardLinkFragment.b(a).getCardInputError();
                if (cardinputerror != null)
                {
                    a.a(cardinputerror);
                }
            }

            public void b()
            {
                if (!CardLinkFragment.c(a))
                {
                    CardLinkFragment.d(a).requestFocus();
                }
            }

            public void c()
            {
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
        b.setCustomSelectionActionModeCallback(new DisableCustomSelectionActionModeCallback());
        c = (ImageView)d(0x7f0a00b7);
        c.setOnClickListener(new android.view.View.OnClickListener() {

            final CardLinkFragment a;

            public void onClick(View view)
            {
                CardLinkFragment.b(a).setText(null);
                CardLinkFragment.a(a, CardLinkFragment.b(a));
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
        d = (TextView)d(0x7f0a00b8);
        b.addTextChangedListener(new ClearErrorStateOnInputTextWatcher(d, c));
        b.requestFocus();
        e = (CardExpiryEditText)d(0x7f0a00b9);
        e.setValidatedInputCallback(new ValidatedInputCallback() {

            final CardLinkFragment a;

            public void a()
            {
                CardLinkFragment.a(a);
            }

            public void b()
            {
                if (!CardLinkFragment.c(a))
                {
                    CardLinkFragment.e(a).requestFocus();
                }
            }

            public void c()
            {
                CardLinkFragment.b(a).requestFocus();
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
        e.setCustomSelectionActionModeCallback(new DisableCustomSelectionActionModeCallback());
        f = (ImageView)d(0x7f0a00ba);
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final CardLinkFragment a;

            public void onClick(View view)
            {
                CardLinkFragment.d(a).setText(null);
                CardLinkFragment.a(a, CardLinkFragment.d(a));
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
        g = (TextView)d(0x7f0a00bb);
        e.addTextChangedListener(new ClearErrorStateOnInputTextWatcher(g, f));
        h = (CardCvvEditText)d(0x7f0a00aa);
        h.setValidatedInputCallback(new ValidatedInputCallback() {

            final CardLinkFragment a;

            public void a()
            {
                CardLinkFragment.a(a);
                CardLinkFragment.f(a).setVisibility(8);
            }

            public void b()
            {
                if (!CardLinkFragment.c(a))
                {
                    CardLinkFragment.g(a).requestFocus();
                }
                CardLinkFragment.f(a).setVisibility(0);
            }

            public void c()
            {
                CardLinkFragment.d(a).requestFocus();
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
        h.setCustomSelectionActionModeCallback(new DisableCustomSelectionActionModeCallback());
        j = (ImageView)d(0x7f0a00bd);
        j.setOnClickListener(new android.view.View.OnClickListener() {

            final CardLinkFragment a;

            public void onClick(View view)
            {
                CardLinkFragment.e(a).setText(null);
                CardLinkFragment.a(a, CardLinkFragment.e(a));
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
        k = (TextView)d(0x7f0a00be);
        i = (ImageView)d(0x7f0a00bc);
        h.addTextChangedListener(new ClearErrorStateOnInputTextWatcher(k, j));
        l = (ZipEditText)d(0x7f0a00ab);
        l.setValidatedInputCallback(new ValidatedInputCallback() {

            final CardLinkFragment a;

            public void a()
            {
                CardLinkFragment.a(a);
            }

            public void b()
            {
                CardLinkFragment.c(a);
            }

            public void c()
            {
                CardLinkFragment.e(a).requestFocus();
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
        l.setCustomSelectionActionModeCallback(new DisableCustomSelectionActionModeCallback());
        m = (ImageView)d(0x7f0a00bf);
        m.setOnClickListener(new android.view.View.OnClickListener() {

            final CardLinkFragment a;

            public void onClick(View view)
            {
                CardLinkFragment.g(a).setText(null);
                CardLinkFragment.a(a, CardLinkFragment.g(a));
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
        n = (TextView)d(0x7f0a00c0);
        l.addTextChangedListener(new ClearErrorStateOnInputTextWatcher(n, m));
        o = (Button)d(0x7f0a00b5);
        FontUtils.a(o, I());
        o.setOnClickListener(new android.view.View.OnClickListener() {

            final CardLinkFragment a;

            public void onClick(View view)
            {
                CardLinkFragment.h(a);
                CardLinkFragment.i(a).setText("");
                CardLinkFragment.i(a).setClickable(false);
                CardLinkFragment.j(a).setVisibility(0);
                CardLinkFragment.k(a).a(CardLinkFragment.b(a).getUnformattedText(), CardLinkFragment.d(a).getUnformattedText(), CardLinkFragment.e(a).getUnformattedText(), CardLinkFragment.g(a).getUnformattedText(), a);
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
        p = (ProgressBar)d(0x7f0a00c2);
    }

    static void h(CardLinkFragment cardlinkfragment)
    {
        cardlinkfragment.l();
    }

    static Button i(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.o;
    }

    private void i()
    {
        if (o.getVisibility() == 0)
        {
            o.setEnabled(false);
            o.setClickable(false);
            o.setVisibility(8);
        }
    }

    static ProgressBar j(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.p;
    }

    static CardDetailsListener k(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.u;
    }

    private boolean k()
    {
        if (b.a() && e.b() && h.b() && l.b())
        {
            o.setText(0x7f0c0179);
            o.setEnabled(true);
            o.setClickable(true);
            o.setVisibility(0);
            if (q)
            {
                a.post(new Runnable() {

                    final CardLinkFragment a;

                    public void run()
                    {
                        CardLinkFragment.b(a, false);
                        CardLinkFragment.m(a).fullScroll(130);
                    }

            
            {
                a = CardLinkFragment.this;
                super();
            }
                });
            }
            return true;
        } else
        {
            return false;
        }
    }

    private void l()
    {
        d.setText(null);
        d.setVisibility(4);
        c.setVisibility(8);
        g.setText(null);
        g.setVisibility(4);
        f.setVisibility(8);
        k.setText(null);
        k.setVisibility(4);
        j.setVisibility(8);
        n.setText(null);
        n.setVisibility(4);
        m.setVisibility(8);
    }

    static boolean l(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.y;
    }

    static ScrollView m(CardLinkFragment cardlinkfragment)
    {
        return cardlinkfragment.a;
    }

    public void a(CardInputError cardinputerror)
    {
        ThreadUtils.a(new Runnable(cardinputerror) {

            final CardInputError a;
            final CardLinkFragment b;

            public void run()
            {
                _cls14.a[a.ordinal()];
                JVM INSTR tableswitch 1 5: default 44
            //                           1 86
            //                           2 86
            //                           3 100
            //                           4 100
            //                           5 125;
                   goto _L1 _L2 _L2 _L3 _L3 _L4
_L1:
                CardLinkFragment.e(b, a);
_L6:
                AnalyticsEvents.y(a.name());
                CardLinkFragment.j(b).setVisibility(8);
                CardLinkFragment.c(b);
                return;
_L2:
                CardLinkFragment.a(b, a);
                continue; /* Loop/switch isn't completed */
_L3:
                CardLinkFragment.b(b, a);
                CardLinkFragment.c(b, a);
                continue; /* Loop/switch isn't completed */
_L4:
                CardLinkFragment.d(b, a);
                if (true) goto _L6; else goto _L5
_L5:
            }

            
            {
                b = CardLinkFragment.this;
                a = cardinputerror;
                super();
            }
        });
    }

    public void a(CardDetailsListener carddetailslistener)
    {
        u = carddetailslistener;
    }

    public void b()
    {
        AnalyticsEvents.j(r);
        ThreadUtils.a(new Runnable() {

            final CardLinkFragment a;

            public void run()
            {
                CardLinkFragment.a(a, true);
                FragmentActivity fragmentactivity = a.getActivity();
                if (CardLinkFragment.l(a) && fragmentactivity != null)
                {
                    fragmentactivity.onBackPressed();
                }
            }

            
            {
                a = CardLinkFragment.this;
                super();
            }
        });
    }

    public boolean e()
    {
        if (!t)
        {
            u.e();
        }
        u = null;
        ViewUtils.a(getActivity(), x);
        getActivity().getWindow().clearFlags(8192);
        return false;
    }

    public boolean e_()
    {
        return true;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            getActivity().getWindow().setFlags(8192, 8192);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040019, viewgroup, false);
        h();
        s = AnimationUtils.loadAnimation(getActivity(), 0x7f050001);
        return x;
    }

    public void s_()
    {
        super.s_();
        ViewUtils.a(false, G());
        ViewUtils.f(getActivity());
        r = false;
        if (UserPrefs.aa())
        {
            AlertDialogUtils.a(getActivity(), getString(0x7f0c017e), getString(0x7f0c017f));
            AnalyticsEvents.R();
            r = true;
        }
    }
}
