// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.view.View;
import android.widget.RelativeLayout;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.view.gment._cls8
{

    final SnapPreviewFragment a;

    public void onClick(View view)
    {
        if (SnapPreviewFragment.h(a).getVisibility() == 8)
        {
            if (SnapPreviewFragment.i(a))
            {
                SnapPreviewFragment.c(a);
            }
            SnapPreviewFragment.j(a);
        }
    }

    (SnapPreviewFragment snappreviewfragment)
    {
        a = snappreviewfragment;
        super();
    }
}
