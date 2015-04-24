// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.cash;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.snapchat.android.cash.ValidatedInputCallback;
import com.snapchat.android.ui.StickyEndEditText;
import java.util.Calendar;

public class CardExpiryEditText extends StickyEndEditText
{
    class MMYYExpiryFormatWatcher
        implements TextWatcher
    {

        final CardExpiryEditText a;
        private CharSequence b;
        private boolean c;
        private boolean d;

        public void afterTextChanged(Editable editable)
        {
            StringBuilder stringbuilder;
            if (d)
            {
                return;
            }
            stringbuilder = CardExpiryEditText.a(a, editable);
            if (c)
            {
                stringbuilder.delete(-2 + stringbuilder.length(), stringbuilder.length());
            }
            if (TextUtils.equals(b, stringbuilder.toString())) goto _L2; else goto _L1
_L1:
            if (!a.a(stringbuilder.toString())) goto _L4; else goto _L3
_L3:
            CardExpiryEditText.a(a, true);
            if (CardExpiryEditText.a(a) != null)
            {
                CardExpiryEditText.a(a).b();
            }
_L6:
            b = stringbuilder;
_L2:
            d = true;
            editable.replace(0, editable.length(), stringbuilder);
            d = false;
            return;
_L4:
            CardExpiryEditText.a(a, false);
            if (CardExpiryEditText.a(a) != null)
            {
                CardExpiryEditText.a(a).a();
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
            boolean flag;
            if (k == 0 && charsequence.subSequence(i, i + j).toString().equals("/"))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            c = flag;
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        private MMYYExpiryFormatWatcher()
        {
            a = CardExpiryEditText.this;
            super();
            b = null;
            c = false;
            d = false;
        }

    }


    private final Calendar a = Calendar.getInstance();
    private final Calendar b = Calendar.getInstance();
    private boolean c;
    private Animation d;
    private ValidatedInputCallback e;

    public CardExpiryEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = false;
        d = AnimationUtils.loadAnimation(context, 0x7f050001);
        addTextChangedListener(new MMYYExpiryFormatWatcher());
        setKeyListener(DigitsKeyListener.getInstance("0123456789//"));
    }

    static ValidatedInputCallback a(CardExpiryEditText cardexpiryedittext)
    {
        return cardexpiryedittext.e;
    }

    private StringBuilder a(Editable editable)
    {
        StringBuilder stringbuilder;
        int i;
        stringbuilder = new StringBuilder();
        i = 0;
_L14:
        if (i >= editable.length()) goto _L2; else goto _L1
_L1:
        char c1 = editable.charAt(i);
        if (!Character.isDigit(c1)) goto _L4; else goto _L3
_L3:
        i;
        JVM INSTR tableswitch 0 4: default 72
    //                   0 100
    //                   1 116
    //                   2 72
    //                   3 172
    //                   4 203;
           goto _L5 _L6 _L7 _L5 _L8 _L9
_L5:
        stringbuilder.append(c1);
        if (stringbuilder.length() == 2)
        {
            stringbuilder.append('/');
        }
_L4:
        i++;
        continue; /* Loop/switch isn't completed */
_L6:
        if (c1 > '1')
        {
            stringbuilder.append(0);
        }
          goto _L5
_L7:
        if ((editable.charAt(0) != '1' || c1 >= '0' && c1 <= '2') && (editable.charAt(0) != '0' || c1 != '0')) goto _L5; else goto _L10
_L10:
        startAnimation(d);
          goto _L4
_L8:
        if (a(Integer.parseInt(String.valueOf(editable.charAt(i))))) goto _L5; else goto _L11
_L11:
        startAnimation(d);
          goto _L4
_L9:
        if (a(Integer.parseInt(editable.subSequence(i - 1, i + 1).toString()), Integer.parseInt(editable.subSequence(0, 2).toString()))) goto _L5; else goto _L12
_L12:
        startAnimation(d);
          goto _L4
_L2:
        return stringbuilder;
        if (true) goto _L14; else goto _L13
_L13:
    }

    static StringBuilder a(CardExpiryEditText cardexpiryedittext, Editable editable)
    {
        return cardexpiryedittext.a(editable);
    }

    private boolean a(int i)
    {
        int j = a.get(1);
        int k = j - j % 100;
        int l = 9 + (k + i * 10);
        int i1 = k + i * 10;
        return l >= j && i1 < j + 25;
    }

    private boolean a(int i, int j)
    {
        int k;
        int l;
        k = a.get(1);
        l = i + (k - k % 100);
        if (l < k)
        {
            l += 100;
        }
        if (l != k) goto _L2; else goto _L1
_L1:
        if (j <= a.get(2)) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (l - k > 25)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    static boolean a(CardExpiryEditText cardexpiryedittext, boolean flag)
    {
        cardexpiryedittext.c = flag;
        return flag;
    }

    protected boolean a()
    {
        if (getEditableText().length() == 0 && e != null)
        {
            e.c();
            return true;
        } else
        {
            return false;
        }
    }

    protected boolean a(String s)
    {
        if (s.matches("[0-9]{2}/[0-9]{2}"))
        {
            String as[] = s.split("/");
            int i = Integer.parseInt(as[0]);
            if (i >= 1 && i <= 12)
            {
                int j = Integer.parseInt(as[1]);
                int k = a.get(1);
                int l = j + (k - k % 100);
                if (l < k)
                {
                    l += 100;
                }
                b.set(1, l);
                b.set(2, i - 1);
                b.set(5, b.getActualMaximum(5));
                b.add(5, 1);
                boolean flag;
                if (!b.before(a) && l - k <= 25)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                return flag;
            }
        }
        return false;
    }

    public boolean b()
    {
        return !TextUtils.isEmpty(getText()) && c;
    }

    public String getUnformattedText()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < getText().length(); i++)
        {
            char c1 = getText().charAt(i);
            if (Character.isDigit(c1))
            {
                stringbuilder.append(c1);
            }
        }

        return stringbuilder.toString();
    }

    public void setValidatedInputCallback(ValidatedInputCallback validatedinputcallback)
    {
        e = validatedinputcallback;
    }
}
