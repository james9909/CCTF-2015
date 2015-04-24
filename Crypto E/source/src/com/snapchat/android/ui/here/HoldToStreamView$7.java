// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.view.View;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.ui.here:
//            HoldToStreamView

class a
    implements Runnable
{

    final boolean a;
    final HoldToStreamView b;

    public void run()
    {
        HoldToStreamView.d(b).b(a);
        View view = b.g;
        int i;
        if (a)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        view.setVisibility(i);
        HoldToStreamView.c(b).c(a);
        HoldToStreamView.e(b);
        HoldToStreamView.f(b);
        if (a)
        {
            HoldToStreamView.g(b);
            HoldToStreamView.c(b).o();
        } else
        {
            HoldToStreamView.h(b);
        }
        HoldToStreamView.i(b).a(a);
        b.invalidate();
    }

    ewCallback(HoldToStreamView holdtostreamview, boolean flag)
    {
        b = holdtostreamview;
        a = flag;
        super();
    }
}
