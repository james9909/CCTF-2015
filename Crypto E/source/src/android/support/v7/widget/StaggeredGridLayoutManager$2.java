// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.graphics.PointF;

// Referenced classes of package android.support.v7.widget:
//            LinearSmoothScroller, StaggeredGridLayoutManager

class  extends LinearSmoothScroller
{

    final StaggeredGridLayoutManager a;

    public PointF a(int i)
    {
        int j = StaggeredGridLayoutManager.a(a, i);
        if (j == 0)
        {
            return null;
        }
        if (StaggeredGridLayoutManager.b(a) == 0)
        {
            return new PointF(j, 0.0F);
        } else
        {
            return new PointF(0.0F, j);
        }
    }
}
