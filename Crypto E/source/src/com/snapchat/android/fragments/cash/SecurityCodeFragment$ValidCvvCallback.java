// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.view.View;
import com.snapchat.android.cash.ValidatedInputCallback;
import com.snapchat.android.ui.cash.CardCvvEditText;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            SecurityCodeFragment

class <init>
    implements ValidatedInputCallback
{

    final SecurityCodeFragment a;

    public void a()
    {
        SecurityCodeFragment.c(a).setVisibility(8);
    }

    public void b()
    {
        if (SecurityCodeFragment.e(a) == null)
        {
            throw new RuntimeException("Forgot to set a callback on SecurityCodeFragment!");
        }
        if (SecurityCodeFragment.f(a))
        {
            SecurityCodeFragment.c(a, false);
            SecurityCodeFragment.g(a).setBackgroundColor(0xff000000);
        }
        SecurityCodeFragment.c(a).setVisibility(0);
        SecurityCodeFragment.b(a).setEnabled(false);
        SecurityCodeFragment.e(a).a(SecurityCodeFragment.b(a).getUnformattedText());
    }

    public void c()
    {
    }

    private ack(SecurityCodeFragment securitycodefragment)
    {
        a = securitycodefragment;
        super();
    }

    a(SecurityCodeFragment securitycodefragment, a a1)
    {
        this(securitycodefragment);
    }
}
