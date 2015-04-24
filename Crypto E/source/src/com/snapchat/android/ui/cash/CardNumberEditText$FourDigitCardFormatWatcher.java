// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.cash;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import com.snapchat.android.cash.ValidatedInputCallback;

// Referenced classes of package com.snapchat.android.ui.cash:
//            CardNumberEditText

class <init>
    implements TextWatcher
{

    final CardNumberEditText a;
    private CharSequence b;
    private boolean c;
    private boolean d;
    private boolean e;
    private int f;

    public void afterTextChanged(Editable editable)
    {
        if (!c) goto _L2; else goto _L1
_L1:
        return;
_L2:
        StringBuilder stringbuilder;
        if (e)
        {
            c = true;
            editable.delete(-1 + f, f);
            e = false;
            c = false;
        }
        stringbuilder = CardNumberEditText.a(a, editable);
        if (TextUtils.equals(b, stringbuilder)) goto _L1; else goto _L3
_L3:
        if (stringbuilder.length() != 19) goto _L5; else goto _L4
_L4:
        int i;
        if (CardNumberEditText.a(a) != null)
        {
            if (a.a())
            {
                CardNumberEditText.a(a).b();
            } else
            {
                CardNumberEditText.a(a).a();
            }
        }
_L7:
        b = stringbuilder;
        c = true;
        editable.replace(0, editable.length(), stringbuilder);
        i = editable.length();
        if (d && i > 0 && (i % 4 == 0 || i == 3))
        {
            a.setSelection(1 + a.getSelectionStart());
        }
        c = false;
        return;
_L5:
        if (stringbuilder.length() > 19)
        {
            stringbuilder = new StringBuilder(b);
        } else
        if (CardNumberEditText.a(a) != null)
        {
            CardNumberEditText.a(a).a();
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (k < j)
        {
            d = true;
            if (charsequence.length() > 0 && charsequence.charAt(i) == ' ')
            {
                e = true;
                f = i;
            }
            return;
        } else
        {
            d = false;
            e = false;
            return;
        }
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    private (CardNumberEditText cardnumberedittext)
    {
        a = cardnumberedittext;
        super();
        b = null;
        c = false;
        e = false;
        f = 0;
    }

    f(CardNumberEditText cardnumberedittext, f f1)
    {
        this(cardnumberedittext);
    }
}
