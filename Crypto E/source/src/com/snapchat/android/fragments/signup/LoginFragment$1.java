// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.SnapKidzLoginManager;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            LoginFragment

class a
    implements android.view.ener
{

    final LoginFragment a;

    public void onClick(View view)
    {
        ((InputMethodManager)a.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(LoginFragment.a(a).getApplicationWindowToken(), 0);
        String s = LoginFragment.a(a).getText().toString().trim().toLowerCase(Locale.US);
        String s1 = LoginFragment.b(a).getText().toString().trim();
        if (LoginFragment.b().a(s))
        {
            if (LoginFragment.b().b(s, s1))
            {
                LoginFragment.a(a, s);
                return;
            } else
            {
                AlertDialogUtils.a(a.getActivity(), a.getString(0x7f0c010b));
                return;
            }
        } else
        {
            LoginFragment.c(a);
            return;
        }
    }

    (LoginFragment loginfragment)
    {
        a = loginfragment;
        super();
    }
}
