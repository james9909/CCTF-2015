// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.widget.HorizontalScrollView;
import com.snapchat.android.ui.SendToBottomPanelView;
import java.util.ArrayList;
import java.util.LinkedHashSet;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToFragment

class a
    implements Runnable
{

    final SendToFragment a;

    public void run()
    {
        SendToFragment.q(a).getScrollView().fullScroll(66);
        if (SendToFragment.c(a).isEmpty() && SendToFragment.e(a).isEmpty())
        {
            SendToFragment.r(a);
            return;
        }
        if (SendToFragment.q(a).getVisibility() == 8)
        {
            SendToFragment.s(a);
            return;
        } else
        {
            SendToFragment.q(a).a(true);
            return;
        }
    }

    (SendToFragment sendtofragment)
    {
        a = sendtofragment;
        super();
    }
}
