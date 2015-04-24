// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            OrientationHelper

class ScrollbarHelper
{

    ScrollbarHelper()
    {
    }

    static int a(RecyclerView.State state, OrientationHelper orientationhelper, View view, View view1, RecyclerView.LayoutManager layoutmanager, boolean flag)
    {
        if (layoutmanager.n() == 0 || state.e() == 0 || view == null || view1 == null)
        {
            return 0;
        }
        if (!flag)
        {
            return 1 + Math.abs(layoutmanager.d(view) - layoutmanager.d(view1));
        } else
        {
            int i = orientationhelper.b(view1) - orientationhelper.a(view);
            return Math.min(orientationhelper.f(), i);
        }
    }

    static int a(RecyclerView.State state, OrientationHelper orientationhelper, View view, View view1, RecyclerView.LayoutManager layoutmanager, boolean flag, boolean flag1)
    {
        int i = layoutmanager.n();
        int j = 0;
        if (i != 0)
        {
            int k = state.e();
            j = 0;
            if (k != 0)
            {
                j = 0;
                if (view != null)
                {
                    j = 0;
                    if (view1 != null)
                    {
                        int l = Math.min(layoutmanager.d(view), layoutmanager.d(view1));
                        int i1 = Math.max(layoutmanager.d(view), layoutmanager.d(view1));
                        if (flag1)
                        {
                            j = Math.max(0, -1 + (state.e() - i1));
                        } else
                        {
                            j = Math.max(0, l);
                        }
                        if (flag)
                        {
                            int j1 = Math.abs(orientationhelper.b(view1) - orientationhelper.a(view));
                            int k1 = 1 + Math.abs(layoutmanager.d(view) - layoutmanager.d(view1));
                            return Math.round(((float)j1 / (float)k1) * (float)j + (float)(orientationhelper.c() - orientationhelper.a(view)));
                        }
                    }
                }
            }
        }
        return j;
    }

    static int b(RecyclerView.State state, OrientationHelper orientationhelper, View view, View view1, RecyclerView.LayoutManager layoutmanager, boolean flag)
    {
        if (layoutmanager.n() == 0 || state.e() == 0 || view == null || view1 == null)
        {
            return 0;
        }
        if (!flag)
        {
            return state.e();
        } else
        {
            int i = orientationhelper.b(view1) - orientationhelper.a(view);
            int j = 1 + Math.abs(layoutmanager.d(view) - layoutmanager.d(view1));
            return (int)(((float)i / (float)j) * (float)state.e());
        }
    }
}
