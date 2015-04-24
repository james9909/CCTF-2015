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

public class ZipEditText extends StickyEndEditText
{
    class ZipFormatWatcher
        implements TextWatcher
    {

        final ZipEditText a;
        private CharSequence b;

        public void afterTextChanged(Editable editable)
        {
            StringBuilder stringbuilder = new StringBuilder(editable);
            if (TextUtils.equals(b, stringbuilder)) goto _L2; else goto _L1
_L1:
            if (stringbuilder.length() != 5) goto _L4; else goto _L3
_L3:
            ZipEditText.a(a, true);
            if (ZipEditText.a(a) != null)
            {
                ZipEditText.a(a).b();
            }
_L6:
            b = stringbuilder;
_L2:
            return;
_L4:
            ZipEditText.a(a, false);
            if (ZipEditText.a(a) != null)
            {
                ZipEditText.a(a).a();
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

        private ZipFormatWatcher()
        {
            a = ZipEditText.this;
            super();
            b = null;
        }

    }


    private boolean a;
    private ValidatedInputCallback b;

    public ZipEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        addTextChangedListener(new ZipFormatWatcher());
        setKeyListener(DigitsKeyListener.getInstance("0123456789"));
    }

    static ValidatedInputCallback a(ZipEditText zipedittext)
    {
        return zipedittext.b;
    }

    static boolean a(ZipEditText zipedittext, boolean flag)
    {
        zipedittext.a = flag;
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
