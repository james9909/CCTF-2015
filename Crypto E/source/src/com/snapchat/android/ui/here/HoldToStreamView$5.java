// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.view.View;

// Referenced classes of package com.snapchat.android.ui.here:
//            HoldToStreamView

class a
    implements android.view.r
{

    final HoldToStreamView a;

    public void onClick(View view)
    {
        HoldToStreamView.c(a).o();
    }

    ewCallback(HoldToStreamView holdtostreamview)
    {
        a = holdtostreamview;
        super();
    }
}
