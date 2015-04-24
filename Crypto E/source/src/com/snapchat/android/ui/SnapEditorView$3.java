// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.snapchat.android.ui.caption.SnapCaptionView;

// Referenced classes of package com.snapchat.android.ui:
//            SnapEditorView

class d
    implements android.view.OnPreDrawListener
{

    final Bundle a;
    final boolean b;
    final ViewTreeObserver c;
    final View d;
    final SnapEditorView e;

    public boolean onPreDraw()
    {
        SnapEditorView.d(e).a(a, b);
        if (c.isAlive())
        {
            c.removeOnPreDrawListener(this);
        }
        SnapEditorView.e(e).removeView(d);
        return false;
    }

    onView(SnapEditorView snapeditorview, Bundle bundle, boolean flag, ViewTreeObserver viewtreeobserver, View view)
    {
        e = snapeditorview;
        a = bundle;
        b = flag;
        c = viewtreeobserver;
        d = view;
        super();
    }
}
