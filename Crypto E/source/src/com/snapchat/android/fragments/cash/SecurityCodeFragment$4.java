// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            SecurityCodeFragment

class c
    implements TextWatcher
{

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

    (SecurityCodeFragment securitycodefragment, View view)
    {
        b = securitycodefragment;
        a = view;
        super();
        c = false;
    }
}
