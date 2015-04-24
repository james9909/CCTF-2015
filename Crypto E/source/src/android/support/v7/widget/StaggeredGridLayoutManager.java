// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            LayoutState, OrientationHelper, ScrollbarHelper, RecyclerView, 
//            LinearSmoothScroller

public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager
{
    class AnchorInfo
    {

        int a;
        int b;
        boolean c;
        boolean d;
        final StaggeredGridLayoutManager e;

        void a()
        {
            a = -1;
            b = 0x80000000;
            c = false;
            d = false;
        }

        void a(int i1)
        {
            if (c)
            {
                b = e.a.d() - i1;
                return;
            } else
            {
                b = i1 + e.a.c();
                return;
            }
        }

        void b()
        {
            int i1;
            if (c)
            {
                i1 = e.a.d();
            } else
            {
                i1 = e.a.c();
            }
            b = i1;
        }
    }

    public static class LayoutParams extends RecyclerView.LayoutParams
    {

        Span e;
        boolean f;

        public final int a()
        {
            if (e == null)
            {
                return -1;
            } else
            {
                return e.d;
            }
        }

        public LayoutParams(int i1, int j1)
        {
            super(i1, j1);
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
        }
    }

    static class LazySpanLookup
    {

        int a[];
        List b;

        private void c(int i1, int j1)
        {
            if (b != null)
            {
                int k1 = i1 + j1;
                int l1 = -1 + b.size();
                while (l1 >= 0) 
                {
                    FullSpanItem fullspanitem = (FullSpanItem)b.get(l1);
                    if (fullspanitem.a >= i1)
                    {
                        if (fullspanitem.a < k1)
                        {
                            b.remove(l1);
                        } else
                        {
                            fullspanitem.a = fullspanitem.a - j1;
                        }
                    }
                    l1--;
                }
            }
        }

        private void d(int i1, int j1)
        {
            if (b != null)
            {
                int k1 = -1 + b.size();
                while (k1 >= 0) 
                {
                    FullSpanItem fullspanitem = (FullSpanItem)b.get(k1);
                    if (fullspanitem.a >= i1)
                    {
                        fullspanitem.a = j1 + fullspanitem.a;
                    }
                    k1--;
                }
            }
        }

        private int g(int i1)
        {
            int j1;
            int k1;
            if (b == null)
            {
                return -1;
            }
            FullSpanItem fullspanitem = f(i1);
            if (fullspanitem != null)
            {
                b.remove(fullspanitem);
            }
            j1 = b.size();
            k1 = 0;
_L3:
            if (k1 >= j1)
            {
                break MISSING_BLOCK_LABEL_118;
            }
            if (((FullSpanItem)b.get(k1)).a < i1) goto _L2; else goto _L1
_L1:
            if (k1 != -1)
            {
                FullSpanItem fullspanitem1 = (FullSpanItem)b.get(k1);
                b.remove(k1);
                return fullspanitem1.a;
            } else
            {
                return -1;
            }
_L2:
            k1++;
              goto _L3
            k1 = -1;
              goto _L1
        }

        int a(int i1)
        {
            if (b != null)
            {
                for (int j1 = -1 + b.size(); j1 >= 0; j1--)
                {
                    if (((FullSpanItem)b.get(j1)).a >= i1)
                    {
                        b.remove(j1);
                    }
                }

            }
            return b(i1);
        }

        public FullSpanItem a(int i1, int j1, int k1)
        {
            if (b != null) goto _L2; else goto _L1
_L1:
            FullSpanItem fullspanitem = null;
_L4:
            return fullspanitem;
_L2:
            int l1 = 0;
label0:
            do
            {
label1:
                {
                    if (l1 >= b.size())
                    {
                        break label1;
                    }
                    fullspanitem = (FullSpanItem)b.get(l1);
                    if (fullspanitem.a >= j1)
                    {
                        return null;
                    }
                    if (fullspanitem.a >= i1 && (k1 == 0 || fullspanitem.b == k1))
                    {
                        break label0;
                    }
                    l1++;
                }
            } while (true);
            if (true) goto _L4; else goto _L3
_L3:
            return null;
        }

        void a()
        {
            if (a != null)
            {
                Arrays.fill(a, -1);
            }
            b = null;
        }

        void a(int i1, int j1)
        {
            if (a == null || i1 >= a.length)
            {
                return;
            } else
            {
                e(i1 + j1);
                System.arraycopy(a, i1 + j1, a, i1, a.length - i1 - j1);
                Arrays.fill(a, a.length - j1, a.length, -1);
                c(i1, j1);
                return;
            }
        }

        void a(int i1, Span span)
        {
            e(i1);
            a[i1] = span.d;
        }

        public void a(FullSpanItem fullspanitem)
        {
            if (b == null)
            {
                b = new ArrayList();
            }
            int i1 = b.size();
            for (int j1 = 0; j1 < i1; j1++)
            {
                FullSpanItem fullspanitem1 = (FullSpanItem)b.get(j1);
                if (fullspanitem1.a == fullspanitem.a)
                {
                    b.remove(j1);
                }
                if (fullspanitem1.a >= fullspanitem.a)
                {
                    b.add(j1, fullspanitem);
                    return;
                }
            }

            b.add(fullspanitem);
        }

        int b(int i1)
        {
            while (a == null || i1 >= a.length) 
            {
                return -1;
            }
            int j1 = g(i1);
            if (j1 == -1)
            {
                Arrays.fill(a, i1, a.length, -1);
                return a.length;
            } else
            {
                Arrays.fill(a, i1, j1 + 1, -1);
                return j1 + 1;
            }
        }

        void b(int i1, int j1)
        {
            if (a == null || i1 >= a.length)
            {
                return;
            } else
            {
                e(i1 + j1);
                System.arraycopy(a, i1, a, i1 + j1, a.length - i1 - j1);
                Arrays.fill(a, i1, i1 + j1, -1);
                d(i1, j1);
                return;
            }
        }

        int c(int i1)
        {
            if (a == null || i1 >= a.length)
            {
                return -1;
            } else
            {
                return a[i1];
            }
        }

        int d(int i1)
        {
            int j1;
            for (j1 = a.length; j1 <= i1; j1 *= 2) { }
            return j1;
        }

        void e(int i1)
        {
            if (a == null)
            {
                a = new int[1 + Math.max(i1, 10)];
                Arrays.fill(a, -1);
            } else
            if (i1 >= a.length)
            {
                int ai[] = a;
                a = new int[d(i1)];
                System.arraycopy(ai, 0, a, 0, ai.length);
                Arrays.fill(a, ai.length, a.length, -1);
                return;
            }
        }

        public FullSpanItem f(int i1)
        {
            if (b != null) goto _L2; else goto _L1
_L1:
            FullSpanItem fullspanitem = null;
_L4:
            return fullspanitem;
_L2:
            int j1 = -1 + b.size();
label0:
            do
            {
label1:
                {
                    if (j1 < 0)
                    {
                        break label1;
                    }
                    fullspanitem = (FullSpanItem)b.get(j1);
                    if (fullspanitem.a == i1)
                    {
                        break label0;
                    }
                    j1--;
                }
            } while (true);
            if (true) goto _L4; else goto _L3
_L3:
            return null;
        }

        LazySpanLookup()
        {
        }
    }

    static class LazySpanLookup.FullSpanItem
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public LazySpanLookup.FullSpanItem a(Parcel parcel)
            {
                return new LazySpanLookup.FullSpanItem(parcel);
            }

            public LazySpanLookup.FullSpanItem[] a(int i1)
            {
                return new LazySpanLookup.FullSpanItem[i1];
            }

            public Object createFromParcel(Parcel parcel)
            {
                return a(parcel);
            }

            public Object[] newArray(int i1)
            {
                return a(i1);
            }

        };
        int a;
        int b;
        int c[];

        int a(int i1)
        {
            if (c == null)
            {
                return 0;
            } else
            {
                return c[i1];
            }
        }

        public int describeContents()
        {
            return 0;
        }

        public String toString()
        {
            return (new StringBuilder()).append("FullSpanItem{mPosition=").append(a).append(", mGapDir=").append(b).append(", mGapPerSpan=").append(Arrays.toString(c)).append('}').toString();
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            parcel.writeInt(a);
            parcel.writeInt(b);
            if (c != null && c.length > 0)
            {
                parcel.writeInt(c.length);
                parcel.writeIntArray(c);
                return;
            } else
            {
                parcel.writeInt(0);
                return;
            }
        }


        public LazySpanLookup.FullSpanItem()
        {
        }

        public LazySpanLookup.FullSpanItem(Parcel parcel)
        {
            a = parcel.readInt();
            b = parcel.readInt();
            int i1 = parcel.readInt();
            if (i1 > 0)
            {
                c = new int[i1];
                parcel.readIntArray(c);
            }
        }
    }

    static class SavedState
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState a(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public SavedState[] a(int i1)
            {
                return new SavedState[i1];
            }

            public Object createFromParcel(Parcel parcel)
            {
                return a(parcel);
            }

            public Object[] newArray(int i1)
            {
                return a(i1);
            }

        };
        int a;
        int b;
        int c;
        int d[];
        int e;
        int f[];
        List g;
        boolean h;
        boolean i;
        boolean j;

        void a()
        {
            d = null;
            c = 0;
            e = 0;
            f = null;
            g = null;
        }

        void b()
        {
            d = null;
            c = 0;
            a = -1;
            b = -1;
        }

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            int j1 = 1;
            parcel.writeInt(a);
            parcel.writeInt(b);
            parcel.writeInt(c);
            if (c > 0)
            {
                parcel.writeIntArray(d);
            }
            parcel.writeInt(e);
            if (e > 0)
            {
                parcel.writeIntArray(f);
            }
            int k1;
            int l1;
            if (h)
            {
                k1 = j1;
            } else
            {
                k1 = 0;
            }
            parcel.writeInt(k1);
            if (i)
            {
                l1 = j1;
            } else
            {
                l1 = 0;
            }
            parcel.writeInt(l1);
            if (!j)
            {
                j1 = 0;
            }
            parcel.writeInt(j1);
            parcel.writeList(g);
        }


        public SavedState()
        {
        }

        SavedState(Parcel parcel)
        {
            boolean flag = true;
            super();
            a = parcel.readInt();
            b = parcel.readInt();
            c = parcel.readInt();
            if (c > 0)
            {
                d = new int[c];
                parcel.readIntArray(d);
            }
            e = parcel.readInt();
            if (e > 0)
            {
                f = new int[e];
                parcel.readIntArray(f);
            }
            boolean flag1;
            boolean flag2;
            if (parcel.readInt() == flag)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            h = flag1;
            if (parcel.readInt() == flag)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            i = flag2;
            if (parcel.readInt() != flag)
            {
                flag = false;
            }
            j = flag;
            g = parcel.readArrayList(android/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.getClassLoader());
        }

        public SavedState(SavedState savedstate)
        {
            c = savedstate.c;
            a = savedstate.a;
            b = savedstate.b;
            d = savedstate.d;
            e = savedstate.e;
            f = savedstate.f;
            h = savedstate.h;
            i = savedstate.i;
            j = savedstate.j;
            g = savedstate.g;
        }
    }

    class Span
    {

        int a;
        int b;
        int c;
        final int d;
        final StaggeredGridLayoutManager e;
        private ArrayList f;

        static ArrayList a(Span span)
        {
            return span.f;
        }

        int a(int i1)
        {
            if (a != 0x80000000)
            {
                i1 = a;
            } else
            if (f.size() != 0)
            {
                a();
                return a;
            }
            return i1;
        }

        void a()
        {
            View view = (View)f.get(0);
            LayoutParams layoutparams = c(view);
            a = e.a.a(view);
            if (layoutparams.f)
            {
                LazySpanLookup.FullSpanItem fullspanitem = e.f.f(layoutparams.e());
                if (fullspanitem != null && fullspanitem.b == -1)
                {
                    a = a - fullspanitem.a(d);
                }
            }
        }

        void a(View view)
        {
            LayoutParams layoutparams = c(view);
            layoutparams.e = this;
            f.add(0, view);
            a = 0x80000000;
            if (f.size() == 1)
            {
                b = 0x80000000;
            }
            if (layoutparams.c() || layoutparams.d())
            {
                c = c + e.a.c(view);
            }
        }

        void a(boolean flag, int i1)
        {
            int j1;
            if (flag)
            {
                j1 = b(0x80000000);
            } else
            {
                j1 = a(0x80000000);
            }
            e();
            while (j1 == 0x80000000 || flag && j1 < e.a.d() || !flag && j1 > e.a.c()) 
            {
                return;
            }
            if (i1 != 0x80000000)
            {
                j1 += i1;
            }
            b = j1;
            a = j1;
        }

        int b()
        {
            if (a != 0x80000000)
            {
                return a;
            } else
            {
                a();
                return a;
            }
        }

        int b(int i1)
        {
            if (b != 0x80000000)
            {
                i1 = b;
            } else
            if (f.size() != 0)
            {
                c();
                return b;
            }
            return i1;
        }

        void b(View view)
        {
            LayoutParams layoutparams = c(view);
            layoutparams.e = this;
            f.add(view);
            b = 0x80000000;
            if (f.size() == 1)
            {
                a = 0x80000000;
            }
            if (layoutparams.c() || layoutparams.d())
            {
                c = c + e.a.c(view);
            }
        }

        LayoutParams c(View view)
        {
            return (LayoutParams)view.getLayoutParams();
        }

        void c()
        {
            View view = (View)f.get(-1 + f.size());
            LayoutParams layoutparams = c(view);
            b = e.a.b(view);
            if (layoutparams.f)
            {
                LazySpanLookup.FullSpanItem fullspanitem = e.f.f(layoutparams.e());
                if (fullspanitem != null && fullspanitem.b == 1)
                {
                    b = b + fullspanitem.a(d);
                }
            }
        }

        void c(int i1)
        {
            a = i1;
            b = i1;
        }

        int d()
        {
            if (b != 0x80000000)
            {
                return b;
            } else
            {
                c();
                return b;
            }
        }

        void d(int i1)
        {
            if (a != 0x80000000)
            {
                a = i1 + a;
            }
            if (b != 0x80000000)
            {
                b = i1 + b;
            }
        }

        void e()
        {
            f.clear();
            f();
            c = 0;
        }

        void f()
        {
            a = 0x80000000;
            b = 0x80000000;
        }

        void g()
        {
            int i1 = f.size();
            View view = (View)f.remove(i1 - 1);
            LayoutParams layoutparams = c(view);
            layoutparams.e = null;
            if (layoutparams.c() || layoutparams.d())
            {
                c = c - e.a.c(view);
            }
            if (i1 == 1)
            {
                a = 0x80000000;
            }
            b = 0x80000000;
        }

        void h()
        {
            View view = (View)f.remove(0);
            LayoutParams layoutparams = c(view);
            layoutparams.e = null;
            if (f.size() == 0)
            {
                b = 0x80000000;
            }
            if (layoutparams.c() || layoutparams.d())
            {
                c = c - e.a.c(view);
            }
            a = 0x80000000;
        }

        public int i()
        {
            return c;
        }
    }


    private final Runnable A;
    OrientationHelper a;
    OrientationHelper b;
    boolean c;
    int d;
    int e;
    LazySpanLookup f;
    private int g;
    private Span h[];
    private int i;
    private int j;
    private LayoutState k;
    private boolean l;
    private BitSet m;
    private int n;
    private boolean o;
    private boolean s;
    private SavedState t;
    private int u;
    private int v;
    private int w;
    private final AnchorInfo x;
    private boolean y;
    private boolean z;

    private void A()
    {
        boolean flag = true;
        if (i == flag || !g())
        {
            c = l;
            return;
        }
        if (l)
        {
            flag = false;
        }
        c = flag;
    }

    private int B()
    {
        int i1 = n();
        if (i1 == 0)
        {
            return 0;
        } else
        {
            return d(g(i1 - 1));
        }
    }

    private int C()
    {
        if (n() == 0)
        {
            return 0;
        } else
        {
            return d(g(0));
        }
    }

    private int a(int i1, int j1, int k1)
    {
        int l1;
        if (j1 != 0 || k1 != 0)
        {
            if ((l1 = android.view.View.MeasureSpec.getMode(i1)) == 0x80000000 || l1 == 0x40000000)
            {
                return android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(i1) - j1 - k1, l1);
            }
        }
        return i1;
    }

    private int a(RecyclerView.Recycler recycler, LayoutState layoutstate, RecyclerView.State state)
    {
        m.set(0, g, true);
        int k1;
        int l1;
        int i2;
        if (layoutstate.d == 1)
        {
            int i5 = a.d() + k.a;
            int j5 = i5 + k.e + a.g();
            k1 = i5;
            l1 = j5;
        } else
        {
            int i1 = a.c() - k.a;
            int j1 = i1 - k.e - a.c();
            k1 = i1;
            l1 = j1;
        }
        c(layoutstate.d, l1);
        if (c)
        {
            i2 = a.d();
        } else
        {
            i2 = a.c();
        }
        while (layoutstate.a(state) && !m.isEmpty()) 
        {
            View view = layoutstate.a(recycler);
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            int l2;
            int i3;
            boolean flag;
            Span span;
            if (layoutstate.d == 1)
            {
                b(view);
            } else
            {
                b(view, 0);
            }
            a(view, layoutparams);
            l2 = layoutparams.e();
            i3 = f.c(l2);
            if (i3 == -1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                LazySpanLookup.FullSpanItem fullspanitem1;
                Span span1;
                if (layoutparams.f)
                {
                    span1 = h[0];
                } else
                {
                    span1 = a(layoutstate);
                }
                f.a(l2, span1);
                span = span1;
            } else
            {
                span = h[i3];
            }
            if (layoutstate.d == 1)
            {
                int k3;
                int l3;
                int i4;
                int j4;
                int l4;
                if (layoutparams.f)
                {
                    l4 = m(i2);
                } else
                {
                    l4 = span.b(i2);
                }
                l3 = l4 + a.c(view);
                int j2;
                int k2;
                int j3;
                int k4;
                LazySpanLookup.FullSpanItem fullspanitem;
                if (flag && layoutparams.f)
                {
                    fullspanitem1 = a(l4);
                    fullspanitem1.b = -1;
                    fullspanitem1.a = l2;
                    f.a(fullspanitem1);
                    k3 = l4;
                } else
                {
                    k3 = l4;
                }
            } else
            {
                if (layoutparams.f)
                {
                    j3 = l(i2);
                } else
                {
                    j3 = span.a(i2);
                }
                k3 = j3 - a.c(view);
                if (flag && layoutparams.f)
                {
                    fullspanitem = c(j3);
                    fullspanitem.b = 1;
                    fullspanitem.a = l2;
                    f.a(fullspanitem);
                }
                l3 = j3;
            }
            if (layoutparams.f && layoutstate.c == -1 && flag)
            {
                y = true;
            }
            layoutparams.e = span;
            a(view, layoutparams, layoutstate);
            if (layoutparams.f)
            {
                i4 = b.c();
            } else
            {
                i4 = span.d * j + b.c();
            }
            j4 = i4 + b.c(view);
            if (i == 1)
            {
                b(view, i4, k3, j4, l3);
            } else
            {
                b(view, k3, i4, l3, j4);
            }
            if (layoutparams.f)
            {
                c(k.d, l1);
            } else
            {
                k4 = k.d;
                a(span, k4, l1);
            }
            a(recycler, k, span, k1);
        }
        if (k.d == -1)
        {
            k2 = l(a.c());
            return Math.max(0, k.a + (k1 - k2));
        } else
        {
            j2 = m(a.d());
            return Math.max(0, k.a + (j2 - k1));
        }
    }

    private int a(RecyclerView.State state)
    {
        boolean flag = true;
        if (n() == 0)
        {
            return 0;
        }
        z();
        OrientationHelper orientationhelper = a;
        boolean flag1;
        View view;
        if (!z)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        view = b(flag1);
        if (z)
        {
            flag = false;
        }
        return ScrollbarHelper.a(state, orientationhelper, view, c(flag), this, z, c);
    }

    static int a(StaggeredGridLayoutManager staggeredgridlayoutmanager, int i1)
    {
        return staggeredgridlayoutmanager.p(i1);
    }

    private LazySpanLookup.FullSpanItem a(int i1)
    {
        LazySpanLookup.FullSpanItem fullspanitem = new LazySpanLookup.FullSpanItem();
        fullspanitem.c = new int[g];
        for (int j1 = 0; j1 < g; j1++)
        {
            fullspanitem.c[j1] = i1 - h[j1].b(i1);
        }

        return fullspanitem;
    }

    private Span a(LayoutState layoutstate)
    {
        Span span = null;
        byte byte0 = -1;
        int i1;
        int j1;
        if (o(layoutstate.d))
        {
            j1 = -1 + g;
            i1 = byte0;
        } else
        {
            i1 = g;
            byte0 = 1;
            j1 = 0;
        }
        if (layoutstate.d == 1)
        {
            int k2 = a.c();
            int l2 = j1;
            int i3 = 0x7fffffff;
            while (l2 != i1) 
            {
                Span span3 = h[l2];
                int j3 = span3.b(k2);
                int k1;
                int l1;
                int i2;
                Span span1;
                int j2;
                Span span2;
                Span span4;
                if (j3 < i3)
                {
                    span4 = span3;
                } else
                {
                    j3 = i3;
                    span4 = span;
                }
                l2 += byte0;
                span = span4;
                i3 = j3;
            }
        } else
        {
            k1 = a.d();
            l1 = j1;
            i2 = 0x80000000;
            while (l1 != i1) 
            {
                span1 = h[l1];
                j2 = span1.a(k1);
                if (j2 > i2)
                {
                    span2 = span1;
                } else
                {
                    j2 = i2;
                    span2 = span;
                }
                l1 += byte0;
                span = span2;
                i2 = j2;
            }
        }
        return span;
    }

    private void a(int i1, RecyclerView.State state)
    {
        int j1 = 1;
        k.a = 0;
        k.b = i1;
        if (l())
        {
            int k1 = state.c();
            int l1 = c;
            LayoutState layoutstate;
            int i2;
            if (k1 < i1)
            {
                i2 = j1;
            } else
            {
                i2 = 0;
            }
            if (l1 == i2)
            {
                k.e = 0;
            } else
            {
                k.e = a.f();
            }
        } else
        {
            k.e = 0;
        }
        k.d = -1;
        layoutstate = k;
        if (!c)
        {
            j1 = -1;
        }
        layoutstate.c = j1;
    }

    private void a(RecyclerView.Recycler recycler, int i1)
    {
        View view;
        for (; n() > 0; a(view, recycler))
        {
            view = g(0);
            if (a.b(view) >= i1)
            {
                break;
            }
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (layoutparams.f)
            {
                for (int j1 = 0; j1 < g; j1++)
                {
                    h[j1].h();
                }

            } else
            {
                layoutparams.e.h();
            }
        }

    }

    private void a(RecyclerView.Recycler recycler, LayoutState layoutstate, Span span, int i1)
    {
        if (layoutstate.d == -1)
        {
            b(recycler, Math.max(i1, k(span.b())) + (a.e() - a.c()));
            return;
        } else
        {
            a(recycler, Math.min(i1, n(span.d())) - (a.e() - a.c()));
            return;
        }
    }

    private void a(RecyclerView.Recycler recycler, RecyclerView.State state, boolean flag)
    {
        int i1 = m(a.d());
        int j1 = a.d() - i1;
        if (j1 > 0)
        {
            int k1 = j1 - -c(-j1, recycler, state);
            if (flag && k1 > 0)
            {
                a.a(k1);
            }
        }
    }

    private void a(AnchorInfo anchorinfo)
    {
        if (t.c > 0)
        {
            if (t.c == g)
            {
                int i1 = 0;
                while (i1 < g) 
                {
                    h[i1].e();
                    int j1 = t.d[i1];
                    if (j1 != 0x80000000)
                    {
                        if (t.i)
                        {
                            j1 += a.d();
                        } else
                        {
                            j1 += a.c();
                        }
                    }
                    h[i1].c(j1);
                    i1++;
                }
            } else
            {
                t.a();
                t.a = t.b;
            }
        }
        s = t.j;
        a(t.h);
        A();
        if (t.a != -1)
        {
            d = t.a;
            anchorinfo.c = t.i;
        } else
        {
            anchorinfo.c = c;
        }
        if (t.e > 1)
        {
            f.a = t.f;
            f.b = t.g;
        }
    }

    private void a(Span span, int i1, int j1)
    {
        int k1 = span.i();
        if (i1 == -1)
        {
            if (k1 + span.b() < j1)
            {
                m.set(span.d, false);
            }
        } else
        if (span.d() - k1 > j1)
        {
            m.set(span.d, false);
            return;
        }
    }

    static void a(StaggeredGridLayoutManager staggeredgridlayoutmanager)
    {
        staggeredgridlayoutmanager.j();
    }

    private void a(View view, LayoutParams layoutparams)
    {
        if (layoutparams.f)
        {
            if (i == 1)
            {
                b(view, u, w);
                return;
            } else
            {
                b(view, v, u);
                return;
            }
        } else
        {
            b(view, v, w);
            return;
        }
    }

    private void a(View view, LayoutParams layoutparams, LayoutState layoutstate)
    {
        if (layoutstate.d == 1)
        {
            if (layoutparams.f)
            {
                o(view);
                return;
            } else
            {
                layoutparams.e.b(view);
                return;
            }
        }
        if (layoutparams.f)
        {
            p(view);
            return;
        } else
        {
            layoutparams.e.a(view);
            return;
        }
    }

    private boolean a(Span span)
    {
        return c ? span.d() < a.d() : span.b() > a.c();
    }

    static int b(StaggeredGridLayoutManager staggeredgridlayoutmanager)
    {
        return staggeredgridlayoutmanager.i;
    }

    private void b(int i1, int j1, int k1)
    {
        int l1;
        if (c)
        {
            l1 = B();
        } else
        {
            l1 = C();
        }
        f.b(i1);
        k1;
        JVM INSTR tableswitch 0 3: default 52
    //                   0 70
    //                   1 82
    //                   2 52
    //                   3 94;
           goto _L1 _L2 _L3 _L1 _L4
_L1:
        if (i1 + j1 > l1) goto _L6; else goto _L5
_L5:
        return;
_L2:
        f.b(i1, j1);
        continue; /* Loop/switch isn't completed */
_L3:
        f.a(i1, j1);
        continue; /* Loop/switch isn't completed */
_L4:
        f.a(i1, 1);
        f.b(j1, 1);
        continue; /* Loop/switch isn't completed */
_L6:
        int i2;
        if (c)
        {
            i2 = C();
        } else
        {
            i2 = B();
        }
        if (i1 > i2) goto _L5; else goto _L7
_L7:
        k();
        return;
        if (true) goto _L1; else goto _L8
_L8:
    }

    private void b(int i1, RecyclerView.State state)
    {
        int j1 = 1;
        k.a = 0;
        k.b = i1;
        if (l())
        {
            int k1 = state.c();
            int l1 = c;
            LayoutState layoutstate;
            int i2;
            if (k1 > i1)
            {
                i2 = j1;
            } else
            {
                i2 = 0;
            }
            if (l1 == i2)
            {
                k.e = 0;
            } else
            {
                k.e = a.f();
            }
        } else
        {
            k.e = 0;
        }
        k.d = j1;
        layoutstate = k;
        if (c)
        {
            j1 = -1;
        }
        layoutstate.c = j1;
    }

    private void b(RecyclerView.Recycler recycler, int i1)
    {
        int j1 = -1 + n();
        do
        {
            if (j1 < 0)
            {
                break;
            }
            View view = g(j1);
            if (a.a(view) <= i1)
            {
                break;
            }
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (layoutparams.f)
            {
                for (int k1 = 0; k1 < g; k1++)
                {
                    h[k1].g();
                }

            } else
            {
                layoutparams.e.g();
            }
            a(view, recycler);
            j1--;
        } while (true);
    }

    private void b(RecyclerView.Recycler recycler, RecyclerView.State state, boolean flag)
    {
        int i1 = l(a.c()) - a.c();
        if (i1 > 0)
        {
            int j1 = i1 - c(i1, recycler, state);
            if (flag && j1 > 0)
            {
                a.a(-j1);
            }
        }
    }

    private void b(View view, int i1, int j1)
    {
        Rect rect = q.f(view);
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        view.measure(a(i1, layoutparams.leftMargin + rect.left, layoutparams.rightMargin + rect.right), a(j1, layoutparams.topMargin + rect.top, layoutparams.bottomMargin + rect.bottom));
    }

    private void b(View view, int i1, int j1, int k1, int l1)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        a(view, i1 + layoutparams.leftMargin, j1 + layoutparams.topMargin, k1 - layoutparams.rightMargin, l1 - layoutparams.bottomMargin);
    }

    private LazySpanLookup.FullSpanItem c(int i1)
    {
        LazySpanLookup.FullSpanItem fullspanitem = new LazySpanLookup.FullSpanItem();
        fullspanitem.c = new int[g];
        for (int j1 = 0; j1 < g; j1++)
        {
            fullspanitem.c[j1] = h[j1].a(i1) - i1;
        }

        return fullspanitem;
    }

    private void c(int i1, int j1)
    {
        int k1 = 0;
        while (k1 < g) 
        {
            if (!Span.a(h[k1]).isEmpty())
            {
                a(h[k1], i1, j1);
            }
            k1++;
        }
    }

    private boolean c(RecyclerView.State state, AnchorInfo anchorinfo)
    {
        int i1;
        if (o)
        {
            i1 = r(state.e());
        } else
        {
            i1 = q(state.e());
        }
        anchorinfo.a = i1;
        anchorinfo.b = 0x80000000;
        return true;
    }

    private int h(RecyclerView.State state)
    {
        boolean flag = true;
        if (n() == 0)
        {
            return 0;
        }
        z();
        OrientationHelper orientationhelper = a;
        boolean flag1;
        View view;
        if (!z)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        view = b(flag1);
        if (z)
        {
            flag = false;
        }
        return ScrollbarHelper.a(state, orientationhelper, view, c(flag), this, z);
    }

    private int i(RecyclerView.State state)
    {
        boolean flag = true;
        if (n() == 0)
        {
            return 0;
        }
        z();
        OrientationHelper orientationhelper = a;
        boolean flag1;
        View view;
        if (!z)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        view = b(flag1);
        if (z)
        {
            flag = false;
        }
        return ScrollbarHelper.b(state, orientationhelper, view, c(flag), this, z);
    }

    private void j()
    {
        if (n() != 0 && n != 0)
        {
            int k1;
            int l1;
            if (c)
            {
                int i2 = B();
                int j2 = C();
                k1 = i2;
                l1 = j2;
            } else
            {
                int i1 = C();
                int j1 = B();
                k1 = i1;
                l1 = j1;
            }
            if (k1 == 0 && f() != null)
            {
                f.a();
                y();
                k();
                return;
            }
            if (y)
            {
                byte byte0;
                LazySpanLookup.FullSpanItem fullspanitem;
                if (c)
                {
                    byte0 = -1;
                } else
                {
                    byte0 = 1;
                }
                fullspanitem = f.a(k1, l1 + 1, byte0);
                if (fullspanitem == null)
                {
                    y = false;
                    f.a(l1 + 1);
                    return;
                }
                LazySpanLookup.FullSpanItem fullspanitem1 = f.a(k1, fullspanitem.a, byte0 * -1);
                if (fullspanitem1 == null)
                {
                    f.a(fullspanitem.a);
                } else
                {
                    f.a(1 + fullspanitem1.a);
                }
                y();
                k();
                return;
            }
        }
    }

    private int k(int i1)
    {
        int j1 = h[0].a(i1);
        for (int k1 = 1; k1 < g; k1++)
        {
            int l1 = h[k1].a(i1);
            if (l1 > j1)
            {
                j1 = l1;
            }
        }

        return j1;
    }

    private int l(int i1)
    {
        int j1 = h[0].a(i1);
        for (int k1 = 1; k1 < g; k1++)
        {
            int l1 = h[k1].a(i1);
            if (l1 < j1)
            {
                j1 = l1;
            }
        }

        return j1;
    }

    private int m(int i1)
    {
        int j1 = h[0].b(i1);
        for (int k1 = 1; k1 < g; k1++)
        {
            int l1 = h[k1].b(i1);
            if (l1 > j1)
            {
                j1 = l1;
            }
        }

        return j1;
    }

    private int n(int i1)
    {
        int j1 = h[0].b(i1);
        for (int k1 = 1; k1 < g; k1++)
        {
            int l1 = h[k1].b(i1);
            if (l1 < j1)
            {
                j1 = l1;
            }
        }

        return j1;
    }

    private void o(View view)
    {
        for (int i1 = -1 + g; i1 >= 0; i1--)
        {
            h[i1].b(view);
        }

    }

    private boolean o(int i1)
    {
        if (i != 0) goto _L2; else goto _L1
_L1:
        boolean flag2;
        if (i1 == -1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag2 == c) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        boolean flag;
        boolean flag1;
        if (i1 == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag == c)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1 != g())
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    private int p(int i1)
    {
        byte byte0 = -1;
        if (n() == 0)
        {
            if (c)
            {
                return 1;
            } else
            {
                return byte0;
            }
        }
        boolean flag;
        if (i1 < C())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag == c)
        {
            byte0 = 1;
        }
        return byte0;
    }

    private void p(View view)
    {
        for (int i1 = -1 + g; i1 >= 0; i1--)
        {
            h[i1].a(view);
        }

    }

    private int q(int i1)
    {
        int j1 = n();
        for (int k1 = 0; k1 < j1; k1++)
        {
            int l1 = d(g(k1));
            if (l1 >= 0 && l1 < i1)
            {
                return l1;
            }
        }

        return 0;
    }

    private int r(int i1)
    {
        for (int j1 = -1 + n(); j1 >= 0; j1--)
        {
            int k1 = d(g(j1));
            if (k1 >= 0 && k1 < i1)
            {
                return k1;
            }
        }

        return 0;
    }

    private void z()
    {
        if (a == null)
        {
            a = OrientationHelper.a(this, i);
            b = OrientationHelper.a(this, 1 - i);
            k = new LayoutState();
        }
    }

    public int a(int i1, RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        return c(i1, recycler, state);
    }

    public int a(RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        if (i == 0)
        {
            return g;
        } else
        {
            return super.a(recycler, state);
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

    public void a(Parcelable parcelable)
    {
        if (parcelable instanceof SavedState)
        {
            t = (SavedState)parcelable;
            k();
        }
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
        if (i == 0)
        {
            int k1 = layoutparams1.a();
            int l1;
            if (layoutparams1.f)
            {
                l1 = g;
            } else
            {
                l1 = 1;
            }
            accessibilitynodeinfocompat.setCollectionItemInfo(android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(k1, l1, -1, -1, layoutparams1.f, false));
            return;
        }
        int i1 = layoutparams1.a();
        int j1;
        if (layoutparams1.f)
        {
            j1 = g;
        } else
        {
            j1 = 1;
        }
        accessibilitynodeinfocompat.setCollectionItemInfo(android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(-1, -1, i1, j1, layoutparams1.f, false));
    }

    void a(RecyclerView.State state, AnchorInfo anchorinfo)
    {
        while (b(state, anchorinfo) || c(state, anchorinfo)) 
        {
            return;
        }
        anchorinfo.b();
        anchorinfo.a = 0;
    }

    public void a(RecyclerView recyclerview)
    {
        f.a();
        k();
    }

    public void a(RecyclerView recyclerview, int i1, int j1)
    {
        b(i1, j1, 0);
    }

    public void a(RecyclerView recyclerview, int i1, int j1, int k1)
    {
        b(i1, j1, 3);
    }

    public void a(RecyclerView recyclerview, RecyclerView.Recycler recycler)
    {
        for (int i1 = 0; i1 < g; i1++)
        {
            h[i1].e();
        }

    }

    public void a(AccessibilityEvent accessibilityevent)
    {
        AccessibilityRecordCompat accessibilityrecordcompat;
        View view;
        View view1;
label0:
        {
            super.a(accessibilityevent);
            if (n() > 0)
            {
                accessibilityrecordcompat = AccessibilityEventCompat.asRecord(accessibilityevent);
                view = b(false);
                view1 = c(false);
                if (view != null && view1 != null)
                {
                    break label0;
                }
            }
            return;
        }
        int i1 = d(view);
        int j1 = d(view1);
        if (i1 < j1)
        {
            accessibilityrecordcompat.setFromIndex(i1);
            accessibilityrecordcompat.setToIndex(j1);
            return;
        } else
        {
            accessibilityrecordcompat.setFromIndex(j1);
            accessibilityrecordcompat.setToIndex(i1);
            return;
        }
    }

    public void a(String s1)
    {
        if (t == null)
        {
            super.a(s1);
        }
    }

    public void a(boolean flag)
    {
        a(((String) (null)));
        if (t != null && t.h != flag)
        {
            t.h = flag;
        }
        l = flag;
        k();
    }

    public boolean a(RecyclerView.LayoutParams layoutparams)
    {
        return layoutparams instanceof LayoutParams;
    }

    public int b(int i1, RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        return c(i1, recycler, state);
    }

    public int b(RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        if (i == 1)
        {
            return g;
        } else
        {
            return super.b(recycler, state);
        }
    }

    public int b(RecyclerView.State state)
    {
        return a(state);
    }

    View b(boolean flag)
    {
        z();
        int i1 = a.c();
        int j1 = a.d();
        int k1 = n();
        for (int l1 = 0; l1 < k1; l1++)
        {
            View view = g(l1);
            if ((!flag || a.a(view) >= i1) && a.b(view) <= j1)
            {
                return view;
            }
        }

        return null;
    }

    public void b(RecyclerView recyclerview, int i1, int j1)
    {
        b(i1, j1, 1);
    }

    public boolean b()
    {
        return t == null;
    }

    boolean b(RecyclerView.State state, AnchorInfo anchorinfo)
    {
        if (state.a() || d == -1)
        {
            return false;
        }
        if (d < 0 || d >= state.e())
        {
            d = -1;
            e = 0x80000000;
            return false;
        }
        if (t == null || t.a == -1 || t.c < 1)
        {
            View view = b(d);
            if (view != null)
            {
                int j1;
                if (c)
                {
                    j1 = B();
                } else
                {
                    j1 = C();
                }
                anchorinfo.a = j1;
                if (e != 0x80000000)
                {
                    if (anchorinfo.c)
                    {
                        anchorinfo.b = a.d() - e - a.b(view);
                        return true;
                    } else
                    {
                        anchorinfo.b = (a.c() + e) - a.a(view);
                        return true;
                    }
                }
                if (a.c(view) > a.f())
                {
                    int i2;
                    if (anchorinfo.c)
                    {
                        i2 = a.d();
                    } else
                    {
                        i2 = a.c();
                    }
                    anchorinfo.b = i2;
                    return true;
                }
                int k1 = a.a(view) - a.c();
                if (k1 < 0)
                {
                    anchorinfo.b = -k1;
                    return true;
                }
                int l1 = a.d() - a.b(view);
                if (l1 < 0)
                {
                    anchorinfo.b = l1;
                    return true;
                } else
                {
                    anchorinfo.b = 0x80000000;
                    return true;
                }
            }
            anchorinfo.a = d;
            if (e == 0x80000000)
            {
                int i1 = p(anchorinfo.a);
                boolean flag = false;
                if (i1 == 1)
                {
                    flag = true;
                }
                anchorinfo.c = flag;
                anchorinfo.b();
            } else
            {
                anchorinfo.a(e);
            }
            anchorinfo.d = true;
            return true;
        } else
        {
            anchorinfo.b = 0x80000000;
            anchorinfo.a = d;
            return true;
        }
    }

    int c(int i1, RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        int j1 = 1;
        int k1 = -1;
        z();
        int l1;
        int j2;
        int k2;
        if (i1 > 0)
        {
            k.d = j1;
            LayoutState layoutstate2 = k;
            int i2;
            LayoutState layoutstate1;
            if (!c)
            {
                k1 = j1;
            }
            layoutstate2.c = k1;
            l1 = B();
        } else
        {
            k.d = k1;
            LayoutState layoutstate = k;
            if (!c)
            {
                j1 = k1;
            }
            layoutstate.c = j1;
            l1 = C();
        }
        k.b = l1 + k.c;
        i2 = Math.abs(i1);
        k.a = i2;
        layoutstate1 = k;
        if (l())
        {
            j2 = a.f();
        } else
        {
            j2 = 0;
        }
        layoutstate1.e = j2;
        k2 = a(recycler, k, state);
        if (i2 >= k2)
        {
            if (i1 < 0)
            {
                i1 = -k2;
            } else
            {
                i1 = k2;
            }
        }
        a.a(-i1);
        o = c;
        return i1;
    }

    public int c(RecyclerView.State state)
    {
        return a(state);
    }

    public Parcelable c()
    {
        if (t != null)
        {
            return new SavedState(t);
        }
        SavedState savedstate = new SavedState();
        savedstate.h = l;
        savedstate.i = o;
        savedstate.j = s;
        if (f != null && f.a != null)
        {
            savedstate.f = f.a;
            savedstate.e = savedstate.f.length;
            savedstate.g = f.b;
        } else
        {
            savedstate.e = 0;
        }
        if (n() > 0)
        {
            z();
            int i1;
            int j1;
            if (o)
            {
                i1 = B();
            } else
            {
                i1 = C();
            }
            savedstate.a = i1;
            savedstate.b = i();
            savedstate.c = g;
            savedstate.d = new int[g];
            j1 = 0;
            while (j1 < g) 
            {
                int k1;
                if (o)
                {
                    k1 = h[j1].b(0x80000000);
                    if (k1 != 0x80000000)
                    {
                        k1 -= a.d();
                    }
                } else
                {
                    k1 = h[j1].a(0x80000000);
                    if (k1 != 0x80000000)
                    {
                        k1 -= a.c();
                    }
                }
                savedstate.d[j1] = k1;
                j1++;
            }
        } else
        {
            savedstate.a = -1;
            savedstate.b = -1;
            savedstate.c = 0;
        }
        return savedstate;
    }

    View c(boolean flag)
    {
        z();
        int i1 = a.c();
        int j1 = a.d();
        for (int k1 = -1 + n(); k1 >= 0; k1--)
        {
            View view = g(k1);
            if (a.a(view) >= i1 && (!flag || a.b(view) <= j1))
            {
                return view;
            }
        }

        return null;
    }

    public void c(RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        z();
        AnchorInfo anchorinfo = x;
        anchorinfo.a();
        if (t != null)
        {
            a(anchorinfo);
        } else
        {
            A();
            anchorinfo.c = c;
        }
        a(state, anchorinfo);
        if (t == null && (anchorinfo.c != o || g() != s))
        {
            f.a();
            anchorinfo.d = true;
        }
        if (n() > 0 && (t == null || t.c < 1))
        {
            if (anchorinfo.d)
            {
                for (int j1 = 0; j1 < g; j1++)
                {
                    h[j1].e();
                    if (anchorinfo.b != 0x80000000)
                    {
                        h[j1].c(anchorinfo.b);
                    }
                }

            } else
            {
                for (int i1 = 0; i1 < g; i1++)
                {
                    h[i1].a(c, anchorinfo.b);
                }

            }
        }
        a(recycler);
        y = false;
        h();
        if (anchorinfo.c)
        {
            a(anchorinfo.a, state);
            a(recycler, k, state);
            b(anchorinfo.a, state);
            LayoutState layoutstate1 = k;
            layoutstate1.b = layoutstate1.b + k.c;
            a(recycler, k, state);
        } else
        {
            b(anchorinfo.a, state);
            a(recycler, k, state);
            a(anchorinfo.a, state);
            LayoutState layoutstate = k;
            layoutstate.b = layoutstate.b + k.c;
            a(recycler, k, state);
        }
        if (n() > 0)
        {
            if (c)
            {
                a(recycler, state, true);
                b(recycler, state, false);
            } else
            {
                b(recycler, state, true);
                a(recycler, state, false);
            }
        }
        if (!state.a())
        {
            if (n() > 0 && d != -1 && y)
            {
                ViewCompat.postOnAnimation(g(0), A);
            }
            d = -1;
            e = 0x80000000;
        }
        o = anchorinfo.c;
        s = g();
        t = null;
    }

    public void c(RecyclerView recyclerview, int i1, int j1)
    {
        b(i1, j1, 2);
    }

    public int d(RecyclerView.State state)
    {
        return h(state);
    }

    public void d(int i1)
    {
        if (t != null && t.a != i1)
        {
            t.b();
        }
        d = i1;
        e = 0x80000000;
        k();
    }

    public boolean d()
    {
        return i == 0;
    }

    public int e(RecyclerView.State state)
    {
        return h(state);
    }

    public boolean e()
    {
        return i == 1;
    }

    public int f(RecyclerView.State state)
    {
        return i(state);
    }

    View f()
    {
        BitSet bitset;
        byte byte0;
        int j1;
        byte byte1;
        int l1;
        View view;
        LayoutParams layoutparams;
        int i1 = -1 + n();
        bitset = new BitSet(g);
        bitset.set(0, g, true);
        int k1;
        if (i == 1 && g())
        {
            byte0 = 1;
        } else
        {
            byte0 = -1;
        }
        if (c)
        {
            k1 = i1 - 1;
            j1 = -1;
        } else
        {
            j1 = i1;
            k1 = 0;
        }
        if (k1 < j1)
        {
            byte1 = 1;
        } else
        {
            byte1 = -1;
        }
        l1 = k1;
_L3:
        if (l1 == j1)
        {
            break; /* Loop/switch isn't completed */
        }
        view = g(l1);
        layoutparams = (LayoutParams)view.getLayoutParams();
        if (bitset.get(layoutparams.e.d))
        {
            if (a(layoutparams.e))
            {
                return view;
            }
            bitset.clear(layoutparams.e.d);
        }
          goto _L1
_L5:
        l1 += byte1;
        if (true) goto _L3; else goto _L2
_L1:
        if (layoutparams.f || l1 + byte1 == j1) goto _L5; else goto _L4
_L4:
        boolean flag;
        View view1 = g(l1 + byte1);
        LayoutParams layoutparams1;
        if (c)
        {
            int k2 = a.b(view);
            int l2 = a.b(view1);
            if (k2 < l2)
            {
                return view;
            }
            if (k2 != l2)
            {
                break MISSING_BLOCK_LABEL_364;
            }
            flag = true;
        } else
        {
            int i2 = a.a(view);
            int j2 = a.a(view1);
            if (i2 > j2)
            {
                return view;
            }
            if (i2 != j2)
            {
                break MISSING_BLOCK_LABEL_364;
            }
            flag = true;
        }
_L6:
        if (flag)
        {
            layoutparams1 = (LayoutParams)view1.getLayoutParams();
            boolean flag1;
            boolean flag2;
            if (layoutparams.e.d - layoutparams1.e.d < 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (byte0 < 0)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (flag1 != flag2)
            {
                return view;
            }
        }
          goto _L5
_L2:
        return null;
        flag = false;
          goto _L6
    }

    public int g(RecyclerView.State state)
    {
        return i(state);
    }

    boolean g()
    {
        return m() == 1;
    }

    void h()
    {
        j = b.f() / g;
        u = android.view.View.MeasureSpec.makeMeasureSpec(b.f(), 0x40000000);
        if (i == 1)
        {
            v = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
            w = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            return;
        } else
        {
            w = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
            v = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            return;
        }
    }

    public void h(int i1)
    {
        super.h(i1);
        for (int j1 = 0; j1 < g; j1++)
        {
            h[j1].d(i1);
        }

    }

    int i()
    {
        View view;
        if (c)
        {
            view = c(true);
        } else
        {
            view = b(true);
        }
        if (view == null)
        {
            return -1;
        } else
        {
            return d(view);
        }
    }

    public void i(int i1)
    {
        super.i(i1);
        for (int j1 = 0; j1 < g; j1++)
        {
            h[j1].d(i1);
        }

    }

    public void j(int i1)
    {
        if (i1 == 0)
        {
            j();
        }
    }

    // Unreferenced inner class android/support/v7/widget/StaggeredGridLayoutManager$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final StaggeredGridLayoutManager a;

        public void run()
        {
            StaggeredGridLayoutManager.a(a);
        }
    }


    // Unreferenced inner class android/support/v7/widget/StaggeredGridLayoutManager$2

/* anonymous class */
    class _cls2 extends LinearSmoothScroller
    {

        final StaggeredGridLayoutManager a;

        public PointF a(int i1)
        {
            int j1 = StaggeredGridLayoutManager.a(a, i1);
            if (j1 == 0)
            {
                return null;
            }
            if (StaggeredGridLayoutManager.b(a) == 0)
            {
                return new PointF(j1, 0.0F);
            } else
            {
                return new PointF(0.0F, j1);
            }
        }
    }

}
