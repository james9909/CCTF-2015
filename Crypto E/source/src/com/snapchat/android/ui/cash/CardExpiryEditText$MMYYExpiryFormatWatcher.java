// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.cash;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import com.snapchat.android.cash.ValidatedInputCallback;

// Referenced classes of package com.snapchat.android.ui.cash:
//            CardExpiryEditText

class <init>
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

    private (CardExpiryEditText cardexpiryedittext)
    {
        a = cardexpiryedittext;
        super();
        b = null;
        c = false;
        d = false;
    }

    d(CardExpiryEditText cardexpiryedittext, d d1)
    {
        this(cardexpiryedittext);
    }
}
