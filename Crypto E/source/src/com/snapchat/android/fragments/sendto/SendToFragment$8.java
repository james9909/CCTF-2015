// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToFragment

class a
    implements android.view.ner
{

    final SendToFragment a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (SendToFragment.h(a))
        {
            SendToFragment.b(a);
            SendToFragment.p(a).hideSoftInputFromWindow(a.getView().getWindowToken(), 0);
        }
        return false;
    }

    (SendToFragment sendtofragment)
    {
        a = sendtofragment;
        super();
    }
}
