// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            SignupFragment

class a
    implements android.view.ner
{

    final SignupFragment a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        android.view.eListener elistener = SignupFragment.f(a).getOnFocusChangeListener();
        if (1 == motionevent.getAction() && elistener != null)
        {
            SignupFragment.e(a);
            return true;
        } else
        {
            return false;
        }
    }

    (SignupFragment signupfragment)
    {
        a = signupfragment;
        super();
    }
}
