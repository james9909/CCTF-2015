// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.view.View;
import android.widget.EditText;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.SnapKidzLoginManager;
import java.util.GregorianCalendar;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            SignupFragment

class a
    implements android.view.er
{

    final SignupFragment a;

    public void onClick(View view)
    {
        String s = SignupFragment.c(a).getText().toString().trim().toLowerCase(Locale.US);
        String s1 = SignupFragment.f(a).getText().toString().trim();
        if (SignupFragment.h().a(s))
        {
            AlertDialogUtils.a(SignupFragment.i(a), a.getString(0x7f0c011f, new Object[] {
                s
            }));
            return;
        }
        GregorianCalendar gregoriancalendar = (GregorianCalendar)GregorianCalendar.getInstance();
        gregoriancalendar.add(1, -13);
        if (!SignupFragment.g(a).before(gregoriancalendar))
        {
            SignupFragment.h().a(s, s1);
            AlertDialogUtils.a(0x7f0c01f9, SignupFragment.i(a));
            SignupFragment.c(a, s);
            return;
        } else
        {
            SignupFragment.j(a);
            return;
        }
    }

    (SignupFragment signupfragment)
    {
        a = signupfragment;
        super();
    }
}
