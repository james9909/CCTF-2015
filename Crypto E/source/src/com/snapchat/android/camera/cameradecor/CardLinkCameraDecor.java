// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.cash.ValidatedInputCallback;
import com.snapchat.android.ui.cash.CardCvvEditText;
import com.snapchat.android.ui.cash.CardExpiryEditText;
import com.snapchat.android.ui.cash.CardNumberEditText;
import com.snapchat.android.ui.cash.ZipEditText;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.ViewUtils;
import java.util.StringTokenizer;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            CameraDecor

public class CardLinkCameraDecor extends CameraDecor
{
    public static interface CardDetailsListener
    {

        public abstract void a(String s1, String s2, String s3, String s4);

        public abstract void h();
    }

    public static final class CardInputError extends Enum
    {

        public static final CardInputError a;
        public static final CardInputError b;
        public static final CardInputError c;
        public static final CardInputError d;
        public static final CardInputError e;
        public static final CardInputError f;
        public static final CardInputError g;
        public static final CardInputError h;
        public static final CardInputError i;
        public static final CardInputError j;
        public static final CardInputError k;
        public static final CardInputError l;
        private static final CardInputError m[];

        public static CardInputError valueOf(String s1)
        {
            return (CardInputError)Enum.valueOf(com/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError, s1);
        }

        public static CardInputError[] values()
        {
            return (CardInputError[])m.clone();
        }

        static 
        {
            a = new CardInputError("UNKNOWN", 0);
            b = new CardInputError("TOO_MANY_ATTEMPTS", 1);
            c = new CardInputError("BLOCKED_CARD", 2);
            d = new CardInputError("CARD_BLOCKED", 3);
            e = new CardInputError("CARD_LINKED_TOO_MANY_ACCOUNTS", 4);
            f = new CardInputError("CARD_TYPE_UNSUPPORTED", 5);
            g = new CardInputError("INVALID_CARD_NUMBER", 6);
            h = new CardInputError("INVALID_EXPIRATION", 7);
            i = new CardInputError("INVALID_SECURITY_CODE", 8);
            j = new CardInputError("INVALID_POSTAL_CODE", 9);
            k = new CardInputError("UNSUPPORTED_REGION", 10);
            l = new CardInputError("NETWORK_FAILURE", 11);
            CardInputError acardinputerror[] = new CardInputError[12];
            acardinputerror[0] = a;
            acardinputerror[1] = b;
            acardinputerror[2] = c;
            acardinputerror[3] = d;
            acardinputerror[4] = e;
            acardinputerror[5] = f;
            acardinputerror[6] = g;
            acardinputerror[7] = h;
            acardinputerror[8] = i;
            acardinputerror[9] = j;
            acardinputerror[10] = k;
            acardinputerror[11] = l;
            m = acardinputerror;
        }

        private CardInputError(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    class ValidCardNumberCallback
        implements ValidatedInputCallback
    {

        final CardLinkCameraDecor a;
        private boolean b;

        public void a()
        {
            CardLinkCameraDecor.a(a, false);
            if (b)
            {
                b = false;
                CardLinkCameraDecor.b(a, true);
                CardLinkCameraDecor.f(a).setBackgroundDrawable(null);
                ((TransitionDrawable)CardLinkCameraDecor.g(a).getBackground()).reverseTransition(1000);
                CardLinkCameraDecor.c(a, false);
            }
        }

        public void b()
        {
            CardLinkCameraDecor.b(a, false);
            if (!b)
            {
                b = true;
                ((TransitionDrawable)CardLinkCameraDecor.g(a).getBackground()).startTransition(1000);
            }
            CardLinkCameraDecor.h(a).requestFocus();
            if (CardLinkCameraDecor.h(a).b())
            {
                CardLinkCameraDecor.a(a, true);
                CardLinkCameraDecor.c(a, true);
            }
        }

        public void c()
        {
            CardLinkCameraDecor.i(a).setText(" ");
        }

        private ValidCardNumberCallback()
        {
            a = CardLinkCameraDecor.this;
            super();
        }

    }

    class ValidCvvCallback
        implements ValidatedInputCallback
    {

        final CardLinkCameraDecor a;

        public void a()
        {
            CardLinkCameraDecor.a(a, false);
        }

        public void b()
        {
            CardLinkCameraDecor.j(a).requestFocus();
            if (CardLinkCameraDecor.j(a).b())
            {
                CardLinkCameraDecor.a(a, true);
            }
        }

        public void c()
        {
            CardLinkCameraDecor.k(a).setText(" ");
            CardLinkCameraDecor.e(a);
        }

        private ValidCvvCallback()
        {
            a = CardLinkCameraDecor.this;
            super();
        }

    }

    class ValidExpiryCallback
        implements ValidatedInputCallback
    {

        final CardLinkCameraDecor a;

        public void a()
        {
            CardLinkCameraDecor.a(a, false);
            CardLinkCameraDecor.c(a, false);
        }

        public void b()
        {
            if (CardLinkCameraDecor.i(a).a())
            {
                CardLinkCameraDecor.a(a, true);
                CardLinkCameraDecor.c(a, true);
            }
        }

        public void c()
        {
            CardLinkCameraDecor.h(a).setText(" ");
            CardLinkCameraDecor.i(a).requestFocus();
        }

        private ValidExpiryCallback()
        {
            a = CardLinkCameraDecor.this;
            super();
        }

    }

    class ValidZipCallback
        implements ValidatedInputCallback
    {

        final CardLinkCameraDecor a;

        public void a()
        {
            CardLinkCameraDecor.a(a, false);
        }

        public void b()
        {
            if (CardLinkCameraDecor.k(a).b())
            {
                CardLinkCameraDecor.a(a, true);
            }
        }

        public void c()
        {
            CardLinkCameraDecor.j(a).setText(" ");
            CardLinkCameraDecor.k(a).requestFocus();
        }

        private ValidZipCallback()
        {
            a = CardLinkCameraDecor.this;
            super();
        }

    }


    private final Context b;
    private final RelativeLayout c;
    private CardNumberEditText d;
    private CardExpiryEditText e;
    private CardCvvEditText f;
    private ZipEditText g;
    private View h;
    private TextView i;
    private View j;
    private Button k;
    private View l;
    private View m;
    private View n;
    private EditText o;
    private boolean p;
    private boolean q;
    private final CardDetailsListener r;
    private android.view.View.OnClickListener s;
    private android.view.View.OnClickListener t;

    public CardLinkCameraDecor(Context context, RelativeLayout relativelayout, CardDetailsListener carddetailslistener)
    {
        super(context, relativelayout, null);
        q = true;
        s = new android.view.View.OnClickListener() {

            final CardLinkCameraDecor a;

            public void onClick(View view)
            {
                CardLinkCameraDecor.a(a);
            }

            
            {
                a = CardLinkCameraDecor.this;
                super();
            }
        };
        t = new android.view.View.OnClickListener() {

            final CardLinkCameraDecor a;

            public void onClick(View view)
            {
                CardLinkCameraDecor.b(a);
            }

            
            {
                a = CardLinkCameraDecor.this;
                super();
            }
        };
        SnapchatApplication.e().a(this);
        b = context;
        LayoutInflater layoutinflater = (LayoutInflater)context.getSystemService("layout_inflater");
        relativelayout.removeAllViews();
        c = (RelativeLayout)layoutinflater.inflate(0x7f04001b, relativelayout, true);
        if (c == null)
        {
            throw new NullPointerException();
        } else
        {
            p = true;
            ViewUtils.f(b);
            r = carddetailslistener;
            g();
            return;
        }
    }

    private TextWatcher a(View view)
    {
        return new TextWatcher(view) {

            final View a;
            final CardLinkCameraDecor b;
            private boolean c;

            public void afterTextChanged(Editable editable)
            {
                if (!c && TextUtils.getTrimmedLength(editable) != 0)
                {
                    CardLinkCameraDecor.a(b, a, 0.6F, 1.0F);
                    c = true;
                } else
                if (TextUtils.getTrimmedLength(editable) == 0)
                {
                    CardLinkCameraDecor.a(b, a, 1.0F, 0.6F);
                    c = false;
                    return;
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            
            {
                b = CardLinkCameraDecor.this;
                a = view;
                super();
                c = false;
            }
        };
    }

    private void a(View view, float f1, float f2)
    {
        ObjectAnimator objectanimator = (ObjectAnimator)view.getTag();
        if (objectanimator != null)
        {
            objectanimator.cancel();
        }
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(view, View.ALPHA, new float[] {
            f1, f2
        });
        view.setTag(objectanimator1);
        objectanimator1.setDuration(1000L);
        objectanimator1.start();
    }

    static void a(CardLinkCameraDecor cardlinkcameradecor)
    {
        cardlinkcameradecor.i();
    }

    static void a(CardLinkCameraDecor cardlinkcameradecor, View view, float f1, float f2)
    {
        cardlinkcameradecor.a(view, f1, f2);
    }

    static void a(CardLinkCameraDecor cardlinkcameradecor, String s1)
    {
        cardlinkcameradecor.a(s1);
    }

    static void a(CardLinkCameraDecor cardlinkcameradecor, boolean flag)
    {
        cardlinkcameradecor.c(flag);
    }

    private void a(String s1)
    {
        int i1 = (new StringTokenizer(s1, System.getProperty("line.separator"))).countTokens();
        if (i1 <= 1)
        {
            i.setTextSize(0, b.getResources().getDimension(0x7f09000d));
        } else
        if (i1 == 2)
        {
            i.setTextSize(0, b.getResources().getDimension(0x7f09000c));
        } else
        {
            i.setTextSize(0, b.getResources().getDimension(0x7f09000e));
        }
        i.setText(s1);
    }

    public static String b(CardInputError cardinputerror)
    {
        static class _cls8
        {

            static final int a[];

            static 
            {
                a = new int[CardInputError.values().length];
                try
                {
                    a[CardInputError.d.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[CardInputError.e.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[CardInputError.f.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[CardInputError.g.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[CardInputError.k.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[CardInputError.h.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[CardInputError.i.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[CardInputError.j.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[CardInputError.b.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[CardInputError.c.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[CardInputError.l.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror10)
                {
                    return;
                }
            }
        }

        switch (_cls8.a[cardinputerror.ordinal()])
        {
        default:
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();

        case 1: // '\001'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c0047, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0166, new Object[0])).toString();

        case 2: // '\002'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c004e, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0166, new Object[0])).toString();

        case 3: // '\003'
        case 5: // '\005'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c0050, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0051, new Object[0])).toString();

        case 4: // '\004'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c010c, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();

        case 6: // '\006'
        case 7: // '\007'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c010e, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();

        case 8: // '\b'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c010f, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();

        case 9: // '\t'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c0210, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0165, new Object[0])).toString();

        case 10: // '\n'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c004a, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0163, new Object[0])).toString();

        case 11: // '\013'
            return (new StringBuilder()).append(LocalizationUtils.a(0x7f0c0132, new Object[0])).append(" ").append(LocalizationUtils.a(0x7f0c0171, new Object[0])).toString();
        }
    }

    static void b(CardLinkCameraDecor cardlinkcameradecor)
    {
        cardlinkcameradecor.j();
    }

    static boolean b(CardLinkCameraDecor cardlinkcameradecor, boolean flag)
    {
        cardlinkcameradecor.p = flag;
        return flag;
    }

    static CardDetailsListener c(CardLinkCameraDecor cardlinkcameradecor)
    {
        return cardlinkcameradecor.r;
    }

    static void c(CardLinkCameraDecor cardlinkcameradecor, boolean flag)
    {
        cardlinkcameradecor.e(flag);
    }

    private void c(boolean flag)
    {
        k.setClickable(flag);
        Button button = k;
        int i1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 4;
        }
        button.setVisibility(i1);
        if (flag)
        {
            ViewUtils.a(b, c);
        }
    }

    private void d(boolean flag)
    {
        if (flag)
        {
            n.setBackgroundColor(c.getResources().getColor(0x7f08000a));
            return;
        } else
        {
            n.setBackgroundResource(0);
            return;
        }
    }

    static boolean d(CardLinkCameraDecor cardlinkcameradecor)
    {
        return cardlinkcameradecor.q;
    }

    static void e(CardLinkCameraDecor cardlinkcameradecor)
    {
        cardlinkcameradecor.h();
    }

    private void e(boolean flag)
    {
        if (flag)
        {
            j.setOnClickListener(new android.view.View.OnClickListener() {

                final CardLinkCameraDecor a;

                public void onClick(View view)
                {
                    if (CardLinkCameraDecor.d(a))
                    {
                        CardLinkCameraDecor.a(a);
                        return;
                    } else
                    {
                        CardLinkCameraDecor.e(a);
                        return;
                    }
                }

            
            {
                a = CardLinkCameraDecor.this;
                super();
            }
            });
            return;
        } else
        {
            j.setOnClickListener(null);
            return;
        }
    }

    static View f(CardLinkCameraDecor cardlinkcameradecor)
    {
        return cardlinkcameradecor.m;
    }

    static View g(CardLinkCameraDecor cardlinkcameradecor)
    {
        return cardlinkcameradecor.j;
    }

    private void g()
    {
        j = c.findViewById(0x7f0a00b0);
        d = (CardNumberEditText)c.findViewById(0x7f0a00b6);
        d.setValidatedInputCallback(new ValidCardNumberCallback());
        d.addTextChangedListener(a(d));
        d.requestFocus();
        d.setAlpha(0.6F);
        e = (CardExpiryEditText)c.findViewById(0x7f0a00b9);
        e.setValidatedInputCallback(new ValidExpiryCallback());
        e.addTextChangedListener(a(e));
        e.setAlpha(0.6F);
        m = c.findViewById(0x7f0a00c4);
        n = c.findViewById(0x7f0a00c5);
        c.findViewById(0x7f0a00c6).setOnClickListener(new android.view.View.OnClickListener() {

            final CardLinkCameraDecor a;

            public void onClick(View view)
            {
                CardLinkCameraDecor.c(a).h();
            }

            
            {
                a = CardLinkCameraDecor.this;
                super();
            }
        });
        k = (Button)c.findViewById(0x7f0a00c8);
        FontUtils.a(k, b.getAssets());
        k.setOnClickListener(s);
        l = c.findViewById(0x7f0a00c9);
        c(false);
        i = (TextView)c.findViewById(0x7f0a00af);
        h = c.findViewById(0x7f0a00a9);
        h.setVisibility(8);
        f = (CardCvvEditText)c.findViewById(0x7f0a00aa);
        f.setValidatedInputCallback(new ValidCvvCallback());
        f.addTextChangedListener(a(f));
        f.setAlpha(0.6F);
        f.setVisibility(8);
        f.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final CardLinkCameraDecor a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    CardLinkCameraDecor.a(a, LocalizationUtils.a(0x7f0c0045, new Object[0]));
                }
            }

            
            {
                a = CardLinkCameraDecor.this;
                super();
            }
        });
        g = (ZipEditText)c.findViewById(0x7f0a00ab);
        g.setValidatedInputCallback(new ValidZipCallback());
        g.addTextChangedListener(a(g));
        g.setAlpha(0.6F);
        g.setVisibility(8);
        g.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final CardLinkCameraDecor a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    CardLinkCameraDecor.a(a, LocalizationUtils.a(0x7f0c0046, new Object[0]));
                }
            }

            
            {
                a = CardLinkCameraDecor.this;
                super();
            }
        });
    }

    static CardExpiryEditText h(CardLinkCameraDecor cardlinkcameradecor)
    {
        return cardlinkcameradecor.e;
    }

    private void h()
    {
        h.setVisibility(8);
        f.setVisibility(8);
        g.setVisibility(8);
        boolean flag;
        if (e.b() && d.a())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c(flag);
        q = true;
        p = true;
        k.setOnClickListener(s);
        a(LocalizationUtils.a(0x7f0c004c, new Object[0]));
        d.setVisibility(0);
        e.setVisibility(0);
        if (o != null && o.requestFocus())
        {
            ViewUtils.f(b);
        }
    }

    static CardNumberEditText i(CardLinkCameraDecor cardlinkcameradecor)
    {
        return cardlinkcameradecor.d;
    }

    private void i()
    {
        Object obj;
        boolean flag;
        if (d.hasFocus())
        {
            obj = d;
        } else
        {
            obj = e;
        }
        o = ((EditText) (obj));
        d.setVisibility(8);
        e.setVisibility(8);
        if (f.b() && g.b())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c(flag);
        q = false;
        p = false;
        k.setOnClickListener(t);
        a(LocalizationUtils.a(0x7f0c0045, new Object[0]));
        h.setVisibility(0);
        f.setVisibility(0);
        g.setVisibility(0);
        if (f.requestFocus())
        {
            ViewUtils.f(b);
        }
    }

    static ZipEditText j(CardLinkCameraDecor cardlinkcameradecor)
    {
        return cardlinkcameradecor.g;
    }

    private void j()
    {
        l.setVisibility(0);
        k.setText("");
        k.setClickable(false);
        r.a(d.getUnformattedText(), e.getUnformattedText(), f.getUnformattedText(), g.getUnformattedText());
    }

    static CardCvvEditText k(CardLinkCameraDecor cardlinkcameradecor)
    {
        return cardlinkcameradecor.f;
    }

    public void a(int i1, int j1)
    {
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        bundle.putBoolean("savedCardLinkIsFrontKey", q);
    }

    public void a(CardInputError cardinputerror)
    {
        String s1;
        int i1;
        Object obj;
        s1 = b(cardinputerror);
        AlertDialogUtils.a(s1, b);
        k.setText(0x7f0c0179);
        k.setClickable(true);
        l.setVisibility(8);
        c(false);
        i1 = _cls8.a[cardinputerror.ordinal()];
        obj = null;
        i1;
        JVM INSTR tableswitch 1 8: default 104
    //                   1 135
    //                   2 135
    //                   3 135
    //                   4 135
    //                   5 135
    //                   6 183
    //                   7 211
    //                   8 230;
           goto _L1 _L2 _L2 _L2 _L2 _L2 _L3 _L4 _L5
_L1:
        d(true);
        a(s1);
        if (obj != null && ((View) (obj)).requestFocus())
        {
            ViewUtils.f(b);
        }
        return;
_L2:
        o = null;
        f.setText("");
        e.setText("");
        g.setText("");
        obj = d;
        h();
        continue; /* Loop/switch isn't completed */
_L3:
        o = null;
        e.setText("");
        obj = e;
        h();
        continue; /* Loop/switch isn't completed */
_L4:
        f.setText("");
        obj = f;
        continue; /* Loop/switch isn't completed */
_L5:
        g.setText("");
        obj = g;
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void b(Bundle bundle)
    {
        super.b(bundle);
        if (bundle.getBoolean("savedCardLinkIsFrontKey", true))
        {
            h();
            return;
        } else
        {
            i();
            return;
        }
    }

    public boolean e()
    {
        if (q)
        {
            r.h();
        } else
        {
            h();
        }
        return true;
    }

    public boolean f()
    {
        return p;
    }
}
