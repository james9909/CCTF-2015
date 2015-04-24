// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.ptr;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import in.srain.cube.views.ptr.PtrFrameLayout;

// Referenced classes of package com.snapchat.android.ui.ptr:
//            DancingGhostPtrHeader

public class SnapchatPtrFrameLayout extends PtrFrameLayout
{

    private final DancingGhostPtrHeader e;

    public SnapchatPtrFrameLayout(Context context)
    {
        this(context, null, 0);
    }

    public SnapchatPtrFrameLayout(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SnapchatPtrFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        setResistance(1.7F);
        setRatioOfHeaderHeightToRefresh(1.2F);
        setDurationToClose(300);
        setDurationToCloseHeader(600);
        setKeepHeaderWhenRefresh(true);
        a(true);
        e = new DancingGhostPtrHeader(context);
        setHeaderView(e);
        a(e);
    }

    public void a()
    {
        super.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 3, 0.0F, 0.0F, 0));
    }

    public boolean b()
    {
        return e.a();
    }
}
