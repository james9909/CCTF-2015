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
import com.snapchat.android.cash.ValidatedInputCallback;
import com.snapchat.android.ui.StickyEndEditText;

public class CardCvvEditText extends StickyEndEditText
{
    class CvvFormatWatcher
        implements TextWatcher
    {

        final CardCvvEditText a;
        private CharSequence b;

        public void afterTextChanged(Editable editable)
        {
            StringBuilder stringbuilder = new StringBuilder(editable);
            if (TextUtils.equals(b, stringbuilder)) goto _L2; else goto _L1
_L1:
            if (stringbuilder.length() != 3) goto _L4; else goto _L3
_L3:
            CardCvvEditText.a(a, true);
            if (CardCvvEditText.a(a) != null)
            {
                CardCvvEditText.a(a).b();
            }
_L6:
            b = stringbuilder;
_L2:
            return;
_L4:
            CardCvvEditText.a(a, false);
            if (CardCvvEditText.a(a) != null)
            {
                CardCvvEditText.a(a).a();
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        private CvvFormatWatcher()
        {
            a = CardCvvEditText.this;
            super();
            b = null;
        }

    }


    private boolean a;
    private ValidatedInputCallback b;

    public CardCvvEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        addTextChangedListener(new CvvFormatWatcher());
        setKeyListener(DigitsKeyListener.getInstance("0123456789"));
    }

    static ValidatedInputCallback a(CardCvvEditText cardcvvedittext)
    {
        return cardcvvedittext.b;
    }

    static boolean a(CardCvvEditText cardcvvedittext, boolean flag)
    {
        cardcvvedittext.a = flag;
        return flag;
    }

    protected boolean a()
    {
        if (getEditableText().length() == 0 && b != null)
        {
            b.c();
            return true;
        } else
        {
            return false;
        }
    }

    public boolean b()
    {
        return !TextUtils.isEmpty(getText()) && a;
    }

    public String getUnformattedText()
    {
        return getText().toString().trim();
    }

    public void setValidatedInputCallback(ValidatedInputCallback validatedinputcallback)
    {
        b = validatedinputcallback;
    }
}
