// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.ui.cash.CardCvvEditText;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            SecurityCodeFragment

class b
    implements Runnable
{

    final ErrorType a;
    final int b;
    final SecurityCodeFragment c;

    public void run()
    {
        SecurityCodeFragment.a(c, false);
        SecurityCodeFragment.a(c).setText(SecurityCodeFragment.a(c, a, b));
        if (!ErrorType.isNonRecoverableError(a))
        {
            SecurityCodeFragment.b(c).setText("");
            SecurityCodeFragment.b(c).setEnabled(true);
            if (SecurityCodeFragment.b(c).requestFocus())
            {
                ViewUtils.f(c.getActivity());
            }
        } else
        {
            SecurityCodeFragment.b(c, true);
        }
        SecurityCodeFragment.c(c).setVisibility(8);
        SecurityCodeFragment.d(c).setBackgroundColor(c.getResources().getColor(0x7f08003c));
        SecurityCodeFragment.c(c, true);
    }

    (SecurityCodeFragment securitycodefragment, ErrorType errortype, int i)
    {
        c = securitycodefragment;
        a = errortype;
        b = i;
        super();
    }
}
