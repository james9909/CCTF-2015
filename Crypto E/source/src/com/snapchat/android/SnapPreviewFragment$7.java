// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.view.View;
import com.snapchat.android.util.SnapUtils;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.view.gment._cls7
{

    final SnapPreviewFragment a;

    public void onClick(View view)
    {
        if (SnapUtils.a(SnapPreviewFragment.e(a)))
        {
            SnapPreviewFragment.f(a);
            return;
        } else
        {
            SnapPreviewFragment.g(a);
            return;
        }
    }

    (SnapPreviewFragment snappreviewfragment)
    {
        a = snappreviewfragment;
        super();
    }
}
