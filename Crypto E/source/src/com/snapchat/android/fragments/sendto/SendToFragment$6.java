// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToFragment

class a
    implements android.view.ner
{

    final SendToFragment a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            SendToFragment.o(a);
        }
        return false;
    }

    (SendToFragment sendtofragment)
    {
        a = sendtofragment;
        super();
    }
}
