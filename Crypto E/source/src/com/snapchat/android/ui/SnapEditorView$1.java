// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.snapchat.android.util.SnapTransitionDrawable;

// Referenced classes of package com.snapchat.android.ui:
//            SnapEditorView, SwipeImageView

class rawable extends SnapTransitionDrawable
{

    final Bitmap a;
    final SnapEditorView b;

    public void a()
    {
        b.a.a(a);
        SnapEditorView.a(b).setVisibility(8);
    }

    rawable(SnapEditorView snapeditorview, Drawable adrawable[], Bitmap bitmap)
    {
        b = snapeditorview;
        a = bitmap;
        super(adrawable);
    }
}
