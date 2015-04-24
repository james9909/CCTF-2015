// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.cash;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import com.snapchat.android.cash.ValidatedInputCallback;

// Referenced classes of package com.snapchat.android.ui.cash:
//            ZipEditText

class <init>
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

    private (ZipEditText zipedittext)
    {
        a = zipedittext;
        super();
        b = null;
    }

    b(ZipEditText zipedittext, b b1)
    {
        this(zipedittext);
    }
}
