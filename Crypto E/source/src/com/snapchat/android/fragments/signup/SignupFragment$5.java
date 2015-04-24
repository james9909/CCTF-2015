// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            SignupFragment

class a
    implements android.widget.ActionListener
{

    final SignupFragment a;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        SignupFragment.e(a);
        return true;
    }

    (SignupFragment signupfragment)
    {
        a = signupfragment;
        super();
    }
}
