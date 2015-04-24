// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            LoginFragment

class a
    implements TextWatcher
{

    final LoginFragment a;

    public void afterTextChanged(Editable editable)
    {
        LoginFragment.d(a);
        LoginFragment.b(a, null);
        LoginFragment.c(a, null);
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    (LoginFragment loginfragment)
    {
        a = loginfragment;
        super();
    }
}
