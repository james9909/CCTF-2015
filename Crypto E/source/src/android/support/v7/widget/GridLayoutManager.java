// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import java.util.Arrays;

// Referenced classes of package android.support.v7.widget:
//            LinearLayoutManager, OrientationHelper, RecyclerView

public class GridLayoutManager extends LinearLayoutManager
{
    public static final class DefaultSpanSizeLookup extends SpanSizeLookup
    {

        public int a(int i)
        {
            return 1;
        }

        public int a(int i, int j)
        {
            return i % j;
        }

        public DefaultSpanSizeLookup()
        {
        }
    }

    public static class LayoutParams extends RecyclerView.LayoutParams
    {

        private int e;
        private int f;

        static int a(LayoutParams layoutparams)
        {
            return layoutparams.e;
        }

        static int a(LayoutParams layoutparams, int i)
        {
            layoutparams.f = i;
            return i;
        }

        static int b(LayoutParams layoutparams)
        {
            return layoutparams.f;
        }

        static int b(LayoutParams layoutparams, int i)
        {
            layoutparams.e = i;
            return i;
        }

        public int a()
        {
            return e;
        }

        public int b()
        {
            return f;
        }

        public LayoutParams(int i, int j)
        {
            super(i, j);
            e = -1;
            f = 0;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            e = -1;
            f = 0;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            e = -1;
            f = 0;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            e = -1;
            f = 0;
        }
    }

    public static abstract class SpanSizeLookup
    {

        final SparseIntArray a = new SparseIntArray();
        private boolean b;

        public abstract int a(int i);

        public int a(int i, int j)
        {
            int l = a(i);
            if (l != j) goto _L2; else goto _L1
_L1:
            return 0;
_L2:
            int i1;
            int j1;
            if (!b || a.size() <= 0)
            {
                break MISSING_BLOCK_LABEL_134;
            }
            int j2 = b(i);
            if (j2 < 0)
            {
                break MISSING_BLOCK_LABEL_134;
            }
            j1 = a.get(j2) + a(j2);
            i1 = j2 + 1;
_L8:
            int k1 = i1;
_L4:
            int l1;
            int i2;
            if (k1 >= i)
            {
                continue; /* Loop/switch isn't completed */
            }
            l1 = a(k1);
            i2 = j1 + l1;
            if (i2 != j)
            {
                break; /* Loop/switch isn't completed */
            }
            l1 = 0;
_L6:
            k1++;
            j1 = l1;
            if (true) goto _L4; else goto _L3
_L3:
            if (i2 > j) goto _L6; else goto _L5
_L5:
            l1 = i2;
              goto _L6
            if (j1 + l > j) goto _L1; else goto _L7
_L7:
            return j1;
            i1 = 0;
            j1 = 0;
              goto _L8
        }

        public void a()
        {
            a.clear();
        }

        int b(int i)
        {
            int j = 0;
            for (int l = -1 + a.size(); j <= l;)
            {
                int j1 = j + l >>> 1;
                if (a.keyAt(j1) < i)
                {
                    j = j1 + 1;
                } else
                {
                    l = j1 - 1;
                }
            }

            int i1 = j - 1;
            if (i1 >= 0 && i1 < a.size())
            {
                return a.keyAt(i1);
            } else
            {
                return -1;
            }
        }

        int b(int i, int j)
        {
            int l;
            if (!b)
            {
                l = a(i, j);
            } else
            {
                l = a.get(i, -1);
                if (l == -1)
                {
                    int i1 = a(i, j);
                    a.put(i, i1);
                    return i1;
                }
            }
            return l;
        }

        public int c(int i, int j)
        {
            int l = a(i);
            int i1 = 0;
            int j1 = 0;
            int k1 = 0;
            while (i1 < i) 
            {
                int l1 = a(i1);
                int i2 = k1 + l1;
                if (i2 == j)
                {
                    j1++;
                    l1 = 0;
                } else
                if (i2 > j)
                {
                    j1++;
                } else
                {
                    l1 = i2;
                }
                i1++;
                k1 = l1;
            }
            if (k1 + l > j)
            {
                j1++;
            }
            return j1;
        }

        public SpanSizeLookup()
        {
            b = false;
        }
    }


    static final int a = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
    int b;
    int c;
    View d[];
    final SparseIntArray e;
    final SparseIntArray f;
    SpanSizeLookup g;
    final Rect h;

    private void A()
    {
        int i = n();
        for (int j = 0; j < i; j++)
        {
            LayoutParams layoutparams = (LayoutParams)g(j).getLayoutParams();
            int l = layoutparams.e();
            e.put(l, layoutparams.b());
            f.put(l, layoutparams.a());
        }

    }

    private void B()
    {
        int i;
        if (f() == 1)
        {
            i = o() - s() - q();
        } else
        {
            i = p() - t() - r();
        }
        c = i / b;
    }

    private int a(int i, int j, int l)
    {
        int i1;
        if (j != 0 || l != 0)
        {
            if ((i1 = android.view.View.MeasureSpec.getMode(i)) == 0x80000000 || i1 == 0x40000000)
            {
                return android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(i) - j - l, i1);
            }
        }
        return i;
    }

    private int a(RecyclerView.Recycler recycler, RecyclerView.State state, int i)
    {
        if (!state.a())
        {
            return g.c(i, b);
        }
        int j = recycler.b(i);
        if (j == -1)
        {
            Log.w("GridLayoutManager", (new StringBuilder()).append("Cannot find span size for pre layout position. ").append(i).toString());
            return 0;
        } else
        {
            return g.c(j, b);
        }
    }

    private void a(LinearLayoutManager.AnchorInfo anchorinfo)
    {
        for (int i = g.b(anchorinfo.a, b); i > 0 && anchorinfo.a > 0; i = g.b(anchorinfo.a, b))
        {
            anchorinfo.a = -1 + anchorinfo.a;
        }

    }

    private void a(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int j, boolean flag)
    {
        int l;
        int i1;
        byte byte0;
        int j1;
        int k1;
        int l1;
        if (flag)
        {
            i1 = 1;
            l = 0;
        } else
        {
            l = i - 1;
            i1 = -1;
            i = -1;
        }
        if (this.i == 1 && g())
        {
            j1 = j - 1;
            byte0 = -1;
        } else
        {
            byte0 = 1;
            j1 = 0;
        }
        k1 = j1;
        l1 = l;
        while (l1 != i) 
        {
            View view = d[l1];
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            LayoutParams.a(layoutparams, c(recycler, state, d(view)));
            if (byte0 == -1 && LayoutParams.b(layoutparams) > 1)
            {
                LayoutParams.b(layoutparams, k1 - (-1 + LayoutParams.b(layoutparams)));
            } else
            {
                LayoutParams.b(layoutparams, k1);
            }
            k1 += byte0 * LayoutParams.b(layoutparams);
            l1 += i1;
        }
    }

    private int b(RecyclerView.Recycler recycler, RecyclerView.State state, int i)
    {
        int j;
        if (!state.a())
        {
            j = g.b(i, b);
        } else
        {
            j = f.get(i, -1);
            if (j == -1)
            {
                int l = recycler.b(i);
                if (l == -1)
                {
                    Log.w("GridLayoutManager", (new StringBuilder()).append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:").append(i).toString());
                    return 0;
                } else
                {
                    return g.b(l, b);
                }
            }
        }
        return j;
    }

    private void b(View view, int i, int j)
    {
        a(view, h);
        RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
        view.measure(a(i, layoutparams.leftMargin + h.left, layoutparams.rightMargin + h.right), a(j, layoutparams.topMargin + h.top, layoutparams.bottomMargin + h.bottom));
    }

    private int c(RecyclerView.Recycler recycler, RecyclerView.State state, int i)
    {
        int j;
        if (!state.a())
        {
            j = g.a(i);
        } else
        {
            j = e.get(i, -1);
            if (j == -1)
            {
                int l = recycler.b(i);
                if (l == -1)
                {
                    Log.w("GridLayoutManager", (new StringBuilder()).append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:").append(i).toString());
                    return 1;
                } else
                {
                    return g.a(l);
                }
            }
        }
        return j;
    }

    private int k(int i)
    {
        if (i < 0)
        {
            return a;
        } else
        {
            return android.view.View.MeasureSpec.makeMeasureSpec(i, 0x40000000);
        }
    }

    private void z()
    {
        e.clear();
        f.clear();
    }

    public int a(RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        if (i == 0)
        {
            return b;
        }
        if (state.e() < 1)
        {
            return 0;
        } else
        {
            return a(recycler, state, -1 + state.e());
        }
    }

    public RecyclerView.LayoutParams a()
    {
        return new LayoutParams(-2, -2);
    }

    public RecyclerView.LayoutParams a(Context context, AttributeSet attributeset)
    {
        return new LayoutParams(context, attributeset);
    }

    public RecyclerView.LayoutParams a(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
        {
            return new LayoutParams((android.view.ViewGroup.MarginLayoutParams)layoutparams);
        } else
        {
            return new LayoutParams(layoutparams);
        }
    }

    void a(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.LayoutState layoutstate, LinearLayoutManager.LayoutChunkResult layoutchunkresult)
    {
        boolean flag;
        int i;
        int j;
        int l;
        int l6;
        int k6;
        if (layoutstate.e == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = b;
        j = 0;
        l = 0;
        if (!flag)
        {
            i = b(recycler, state, layoutstate.d) + c(recycler, state, layoutstate.d);
        }
_L6:
        if (j >= b || !layoutstate.a(state) || i <= 0) goto _L2; else goto _L1
_L1:
        k6 = layoutstate.d;
        l6 = c(recycler, state, k6);
        if (l6 > b)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Item at position ").append(k6).append(" requires ").append(l6).append(" spans but GridLayoutManager has only ").append(b).append(" spans.").toString());
        }
        i -= l6;
        if (i >= 0) goto _L3; else goto _L2
_L2:
        View view3;
        if (j == 0)
        {
            layoutchunkresult.b = true;
            return;
        }
        break; /* Loop/switch isn't completed */
_L3:
        if ((view3 = layoutstate.a(recycler)) == null) goto _L2; else goto _L4
_L4:
        l += l6;
        d[j] = view3;
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        a(recycler, state, j, l, flag);
        int i1 = 0;
        int j1 = 0;
        while (i1 < j) 
        {
            View view2 = d[i1];
            int i6;
            LayoutParams layoutparams1;
            int j6;
            if (layoutstate.j == null)
            {
                if (flag)
                {
                    b(view2);
                } else
                {
                    b(view2, 0);
                }
            } else
            if (flag)
            {
                a(view2);
            } else
            {
                a(view2, 0);
            }
            i6 = android.view.View.MeasureSpec.makeMeasureSpec(c(recycler, state, d(view2)) * c, 0x40000000);
            layoutparams1 = (LayoutParams)view2.getLayoutParams();
            if (this.i == 1)
            {
                b(view2, i6, k(layoutparams1.height));
            } else
            {
                b(view2, k(layoutparams1.width), i6);
            }
            j6 = this.j.c(view2);
            int k1;
            int l1;
            int i2;
            int j2;
            int k2;
            int l2;
            int i3;
            int j3;
            int k3;
            int l3;
            int i4;
            View view;
            LayoutParams layoutparams;
            int j4;
            int k4;
            int l4;
            int i5;
            int j5;
            int k5;
            View view1;
            int l5;
            if (j6 <= j1)
            {
                j6 = j1;
            }
            i1++;
            j1 = j6;
        }
        k1 = k(j1);
        l1 = 0;
        while (l1 < j) 
        {
            view1 = d[l1];
            if (this.j.c(view1) != j1)
            {
                l5 = android.view.View.MeasureSpec.makeMeasureSpec(c(recycler, state, d(view1)) * c, 0x40000000);
                if (this.i == 1)
                {
                    b(view1, l5, k1);
                } else
                {
                    b(view1, k1, l5);
                }
            }
            l1++;
        }
        layoutchunkresult.a = j1;
        if (this.i == 1)
        {
            if (layoutstate.f == -1)
            {
                k2 = layoutstate.b;
                l2 = k2 - j1;
                j2 = 0;
                i2 = 0;
            } else
            {
                k5 = layoutstate.b;
                k2 = k5 + j1;
                l2 = k5;
                j2 = 0;
                i2 = 0;
            }
        } else
        if (layoutstate.f == -1)
        {
            i5 = layoutstate.b;
            j5 = i5 - j1;
            j2 = i5;
            i2 = j5;
            k2 = 0;
            l2 = 0;
        } else
        {
            i2 = layoutstate.b;
            j2 = j1 + i2;
            k2 = 0;
            l2 = 0;
        }
        i3 = 0;
        j3 = i2;
        k3 = j2;
        l3 = l2;
        i4 = k2;
        while (i3 < j) 
        {
            view = d[i3];
            layoutparams = (LayoutParams)view.getLayoutParams();
            if (this.i == 1)
            {
                l4 = q() + c * LayoutParams.a(layoutparams);
                j4 = l4 + this.j.d(view);
                k4 = l4;
            } else
            {
                l3 = r() + c * LayoutParams.a(layoutparams);
                i4 = l3 + this.j.d(view);
                j4 = k3;
                k4 = j3;
            }
            a(view, k4 + layoutparams.leftMargin, l3 + layoutparams.topMargin, j4 - layoutparams.rightMargin, i4 - layoutparams.bottomMargin);
            if (layoutparams.c() || layoutparams.d())
            {
                layoutchunkresult.c = true;
            }
            layoutchunkresult.d = layoutchunkresult.d | view.isFocusable();
            i3++;
            k3 = j4;
            j3 = k4;
        }
        Arrays.fill(d, null);
        return;
    }

    public void a(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
    {
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        if (!(layoutparams instanceof LayoutParams))
        {
            super.a(view, accessibilitynodeinfocompat);
            return;
        }
        LayoutParams layoutparams1 = (LayoutParams)layoutparams;
        int i = a(recycler, state, layoutparams1.e());
        if (this.i == 0)
        {
            int i1 = layoutparams1.a();
            int j1 = layoutparams1.b();
            boolean flag1;
            if (b > 1 && layoutparams1.b() == b)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            accessibilitynodeinfocompat.setCollectionItemInfo(android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i1, j1, i, 1, flag1, false));
            return;
        }
        int j = layoutparams1.a();
        int l = layoutparams1.b();
        boolean flag;
        if (b > 1 && layoutparams1.b() == b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        accessibilitynodeinfocompat.setCollectionItemInfo(android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i, 1, j, l, flag, false));
    }

    void a(RecyclerView.State state, LinearLayoutManager.AnchorInfo anchorinfo)
    {
        super.a(state, anchorinfo);
        B();
        if (state.e() > 0 && !state.a())
        {
            a(anchorinfo);
        }
        if (d == null || d.length != b)
        {
            d = new View[b];
        }
    }

    public void a(RecyclerView recyclerview)
    {
        g.a();
    }

    public void a(RecyclerView recyclerview, int i, int j)
    {
        g.a();
    }

    public void a(RecyclerView recyclerview, int i, int j, int l)
    {
        g.a();
    }

    public boolean a(RecyclerView.LayoutParams layoutparams)
    {
        return layoutparams instanceof LayoutParams;
    }

    public int b(RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        if (i == 1)
        {
            return b;
        }
        if (state.e() < 1)
        {
            return 0;
        } else
        {
            return a(recycler, state, -1 + state.e());
        }
    }

    public void b(RecyclerView recyclerview, int i, int j)
    {
        g.a();
    }

    public boolean b()
    {
        return n == null;
    }

    public void c(RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        if (state.a())
        {
            A();
        }
        super.c(recycler, state);
        z();
    }

    public void c(RecyclerView recyclerview, int i, int j)
    {
        g.a();
    }

}
