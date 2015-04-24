// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.view.View;
import com.snapchat.android.ui.SnapEditorView;
import com.snapchat.android.ui.caption.SnapCaptionView;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.view.gment._cls3
{

    final SnapPreviewFragment a;

    public void onClick(View view)
    {
        if (SnapPreviewFragment.b(a).getCaptionView().j() && !SnapPreviewFragment.b(a).getCaptionView().g())
        {
            SnapPreviewFragment.b(a).getCaptionView().e();
            return;
        } else
        {
            SnapPreviewFragment.b(a).b(true);
            return;
        }
    }

    View(SnapPreviewFragment snappreviewfragment)
    {
        a = snappreviewfragment;
        super();
    }
}
