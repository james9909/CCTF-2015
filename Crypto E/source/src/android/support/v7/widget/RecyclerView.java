// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v4.widget.ScrollerCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            DefaultItemAnimator, RecyclerViewAccessibilityDelegate, AdapterHelper, ChildHelper

public class RecyclerView extends ViewGroup
{
    public static abstract class Adapter
    {

        private final AdapterDataObservable a = new AdapterDataObservable();
        private boolean b;

        public abstract int a();

        public int a(int i1)
        {
            return 0;
        }

        public abstract ViewHolder a(ViewGroup viewgroup, int i1);

        public void a(AdapterDataObserver adapterdataobserver)
        {
            a.registerObserver(adapterdataobserver);
        }

        public void a(ViewHolder viewholder)
        {
        }

        public abstract void a(ViewHolder viewholder, int i1);

        public void a(RecyclerView recyclerview)
        {
        }

        public long b(int i1)
        {
            return -1L;
        }

        public final ViewHolder b(ViewGroup viewgroup, int i1)
        {
            ViewHolder viewholder = a(viewgroup, i1);
            viewholder.e = i1;
            return viewholder;
        }

        public void b(AdapterDataObserver adapterdataobserver)
        {
            a.unregisterObserver(adapterdataobserver);
        }

        public void b(ViewHolder viewholder)
        {
        }

        public final void b(ViewHolder viewholder, int i1)
        {
            viewholder.b = i1;
            if (b())
            {
                viewholder.d = b(i1);
            }
            a(viewholder, i1);
            viewholder.a(1, 7);
        }

        public void b(RecyclerView recyclerview)
        {
        }

        public final boolean b()
        {
            return b;
        }

        public final void c()
        {
            a.a();
        }

        public final void c(int i1)
        {
            a.a(i1, 1);
        }

        public void c(ViewHolder viewholder)
        {
        }

        public Adapter()
        {
            b = false;
        }
    }

    static class AdapterDataObservable extends Observable
    {

        public void a()
        {
            for (int i1 = -1 + mObservers.size(); i1 >= 0; i1--)
            {
                ((AdapterDataObserver)mObservers.get(i1)).a();
            }

        }

        public void a(int i1, int j1)
        {
            for (int k1 = -1 + mObservers.size(); k1 >= 0; k1--)
            {
                ((AdapterDataObserver)mObservers.get(k1)).a(i1, j1);
            }

        }

        AdapterDataObservable()
        {
        }
    }

    public static abstract class AdapterDataObserver
    {

        public void a()
        {
        }

        public void a(int i1, int j1)
        {
        }

        public AdapterDataObserver()
        {
        }
    }

    public static abstract class ItemAnimator
    {

        private ItemAnimatorListener a;
        private ArrayList b;
        private long c;
        private long d;
        private long e;
        private long f;
        private boolean g;

        public abstract void a();

        void a(ItemAnimatorListener itemanimatorlistener)
        {
            a = itemanimatorlistener;
        }

        public final void a(ViewHolder viewholder, boolean flag)
        {
            d(viewholder, flag);
            if (a != null)
            {
                a.d(viewholder);
            }
        }

        public abstract boolean a(ViewHolder viewholder);

        public abstract boolean a(ViewHolder viewholder, int i1, int j1, int k1, int l1);

        public abstract boolean a(ViewHolder viewholder, ViewHolder viewholder1, int i1, int j1, int k1, int l1);

        public final void b(ViewHolder viewholder, boolean flag)
        {
            c(viewholder, flag);
        }

        public abstract boolean b();

        public abstract boolean b(ViewHolder viewholder);

        public abstract void c();

        public abstract void c(ViewHolder viewholder);

        public void c(ViewHolder viewholder, boolean flag)
        {
        }

        public long d()
        {
            return e;
        }

        public final void d(ViewHolder viewholder)
        {
            k(viewholder);
            if (a != null)
            {
                a.a(viewholder);
            }
        }

        public void d(ViewHolder viewholder, boolean flag)
        {
        }

        public long e()
        {
            return c;
        }

        public final void e(ViewHolder viewholder)
        {
            o(viewholder);
            if (a != null)
            {
                a.c(viewholder);
            }
        }

        public long f()
        {
            return d;
        }

        public final void f(ViewHolder viewholder)
        {
            m(viewholder);
            if (a != null)
            {
                a.b(viewholder);
            }
        }

        public long g()
        {
            return f;
        }

        public final void g(ViewHolder viewholder)
        {
            j(viewholder);
        }

        public final void h(ViewHolder viewholder)
        {
            n(viewholder);
        }

        public boolean h()
        {
            return g;
        }

        public final void i()
        {
            int i1 = b.size();
            for (int j1 = 0; j1 < i1; j1++)
            {
                ((ItemAnimatorFinishedListener)b.get(j1)).a();
            }

            b.clear();
        }

        public final void i(ViewHolder viewholder)
        {
            l(viewholder);
        }

        public void j(ViewHolder viewholder)
        {
        }

        public void k(ViewHolder viewholder)
        {
        }

        public void l(ViewHolder viewholder)
        {
        }

        public void m(ViewHolder viewholder)
        {
        }

        public void n(ViewHolder viewholder)
        {
        }

        public void o(ViewHolder viewholder)
        {
        }

        public ItemAnimator()
        {
            a = null;
            b = new ArrayList();
            c = 120L;
            d = 120L;
            e = 250L;
            f = 250L;
            g = false;
        }
    }

    public static interface ItemAnimator.ItemAnimatorFinishedListener
    {

        public abstract void a();
    }

    static interface ItemAnimator.ItemAnimatorListener
    {

        public abstract void a(ViewHolder viewholder);

        public abstract void b(ViewHolder viewholder);

        public abstract void c(ViewHolder viewholder);

        public abstract void d(ViewHolder viewholder);
    }

    class ItemAnimatorRestoreListener
        implements ItemAnimator.ItemAnimatorListener
    {

        final RecyclerView a;

        public void a(ViewHolder viewholder)
        {
            viewholder.a(true);
            if (!RecyclerView.e(a, viewholder.a) && viewholder.q())
            {
                a.removeDetachedView(viewholder.a, false);
            }
        }

        public void b(ViewHolder viewholder)
        {
            viewholder.a(true);
            if (viewholder.s())
            {
                RecyclerView.e(a, viewholder.a);
            }
        }

        public void c(ViewHolder viewholder)
        {
            viewholder.a(true);
            if (viewholder.s())
            {
                RecyclerView.e(a, viewholder.a);
            }
        }

        public void d(ViewHolder viewholder)
        {
            viewholder.a(true);
            if (viewholder.g != null && viewholder.h == null)
            {
                viewholder.g = null;
                viewholder.a(-65, ViewHolder.a(viewholder));
            }
            viewholder.h = null;
            if (viewholder.s())
            {
                RecyclerView.e(a, viewholder.a);
            }
        }

        private ItemAnimatorRestoreListener()
        {
            a = RecyclerView.this;
            super();
        }

    }

    public static abstract class ItemDecoration
    {

        public void a(Canvas canvas, RecyclerView recyclerview)
        {
        }

        public void a(Canvas canvas, RecyclerView recyclerview, State state)
        {
            a(canvas, recyclerview);
        }

        public void a(Rect rect, int i1, RecyclerView recyclerview)
        {
            rect.set(0, 0, 0, 0);
        }

        public void a(Rect rect, View view, RecyclerView recyclerview, State state)
        {
            a(rect, ((LayoutParams)view.getLayoutParams()).e(), recyclerview);
        }

        public void b(Canvas canvas, RecyclerView recyclerview)
        {
        }

        public void b(Canvas canvas, RecyclerView recyclerview, State state)
        {
            b(canvas, recyclerview);
        }

        public ItemDecoration()
        {
        }
    }

    static class ItemHolderInfo
    {

        ViewHolder a;
        int b;
        int c;
        int d;
        int e;

        ItemHolderInfo(ViewHolder viewholder, int i1, int j1, int k1, int l1)
        {
            a = viewholder;
            b = i1;
            c = j1;
            d = k1;
            e = l1;
        }
    }

    public static abstract class LayoutManager
    {

        private boolean a;
        ChildHelper p;
        RecyclerView q;
        SmoothScroller r;

        public static int a(int i1, int j1, int k1, boolean flag)
        {
            int l1;
            int i2;
            l1 = 0x40000000;
            i2 = Math.max(0, i1 - j1);
            if (!flag) goto _L2; else goto _L1
_L1:
            if (k1 < 0)
            {
                l1 = 0;
                k1 = 0;
            }
_L4:
            return android.view.View.MeasureSpec.makeMeasureSpec(k1, l1);
_L2:
            if (k1 < 0)
            {
                if (k1 == -1)
                {
                    k1 = i2;
                } else
                if (k1 == -2)
                {
                    l1 = 0x80000000;
                    k1 = i2;
                } else
                {
                    l1 = 0;
                    k1 = 0;
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        private void a(int i1, View view)
        {
            p.d(i1);
        }

        static void a(LayoutManager layoutmanager, SmoothScroller smoothscroller)
        {
            layoutmanager.a(smoothscroller);
        }

        private void a(Recycler recycler, int i1, View view)
        {
            ViewHolder viewholder = RecyclerView.b(view);
            if (viewholder.c())
            {
                return;
            }
            if (viewholder.l() && !viewholder.p() && !viewholder.n() && !RecyclerView.f(q).b())
            {
                e(i1);
                recycler.b(viewholder);
                return;
            } else
            {
                f(i1);
                recycler.c(view);
                return;
            }
        }

        private void a(SmoothScroller smoothscroller)
        {
            if (r == smoothscroller)
            {
                r = null;
            }
        }

        private void a(View view, int i1, boolean flag)
        {
            ViewHolder viewholder;
            LayoutParams layoutparams;
            viewholder = RecyclerView.b(view);
            if (flag || viewholder.p())
            {
                RecyclerView.c(q, view);
            } else
            {
                RecyclerView.d(q, view);
            }
            layoutparams = (LayoutParams)view.getLayoutParams();
            if (!viewholder.i() && !viewholder.g()) goto _L2; else goto _L1
_L1:
            if (viewholder.g())
            {
                viewholder.h();
            } else
            {
                viewholder.j();
            }
            p.a(view, i1, view.getLayoutParams(), false);
_L4:
            if (layoutparams.d)
            {
                viewholder.a.invalidate();
                layoutparams.d = false;
            }
            return;
_L2:
            if (view.getParent() == q)
            {
                int j1 = p.b(view);
                if (i1 == -1)
                {
                    i1 = p.b();
                }
                if (j1 == -1)
                {
                    throw new IllegalStateException((new StringBuilder()).append("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:").append(q.indexOfChild(view)).toString());
                }
                if (j1 != i1)
                {
                    RecyclerView.d(q).a(j1, i1);
                }
            } else
            {
                p.a(view, i1, false);
                layoutparams.c = true;
                if (r != null && r.g())
                {
                    r.b(view);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        static boolean a(LayoutManager layoutmanager)
        {
            return layoutmanager.a;
        }

        static boolean a(LayoutManager layoutmanager, boolean flag)
        {
            layoutmanager.a = flag;
            return flag;
        }

        public int a(int i1, Recycler recycler, State state)
        {
            return 0;
        }

        public int a(Recycler recycler, State state)
        {
            while (q == null || RecyclerView.f(q) == null || !e()) 
            {
                return 1;
            }
            return RecyclerView.f(q).a();
        }

        public abstract LayoutParams a();

        public LayoutParams a(Context context, AttributeSet attributeset)
        {
            return new LayoutParams(context, attributeset);
        }

        public LayoutParams a(android.view.ViewGroup.LayoutParams layoutparams)
        {
            if (layoutparams instanceof LayoutParams)
            {
                return new LayoutParams((LayoutParams)layoutparams);
            }
            if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
            {
                return new LayoutParams((android.view.ViewGroup.MarginLayoutParams)layoutparams);
            } else
            {
                return new LayoutParams(layoutparams);
            }
        }

        public View a(View view, int i1, Recycler recycler, State state)
        {
            return null;
        }

        public void a(int i1, int j1)
        {
            View view = g(i1);
            if (view == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Cannot move a child from non-existing index:").append(i1).toString());
            } else
            {
                f(i1);
                c(view, j1);
                return;
            }
        }

        public void a(int i1, Recycler recycler)
        {
            View view = g(i1);
            e(i1);
            recycler.a(view);
        }

        public void a(Parcelable parcelable)
        {
        }

        void a(AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
        {
            a(q.a, q.f, accessibilitynodeinfocompat);
        }

        public void a(Adapter adapter, Adapter adapter1)
        {
        }

        public void a(Recycler recycler)
        {
            for (int i1 = -1 + n(); i1 >= 0; i1--)
            {
                a(recycler, i1, g(i1));
            }

        }

        public void a(Recycler recycler, State state, int i1, int j1)
        {
            int k1 = android.view.View.MeasureSpec.getMode(i1);
            int l1 = android.view.View.MeasureSpec.getMode(j1);
            int i2 = android.view.View.MeasureSpec.getSize(i1);
            int j2 = android.view.View.MeasureSpec.getSize(j1);
            switch (k1)
            {
            default:
                i2 = v();
                // fall through

            case -2147483648: 
            case 1073741824: 
                switch (l1)
                {
                default:
                    j2 = w();
                    // fall through

                case -2147483648: 
                case 1073741824: 
                    b(i2, j2);
                    break;
                }
                break;
            }
        }

        public void a(Recycler recycler, State state, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
        {
            accessibilitynodeinfocompat.setClassName(android/support/v7/widget/RecyclerView.getName());
            if (ViewCompat.canScrollVertically(q, -1) || ViewCompat.canScrollHorizontally(q, -1))
            {
                accessibilitynodeinfocompat.addAction(8192);
                accessibilitynodeinfocompat.setScrollable(true);
            }
            if (ViewCompat.canScrollVertically(q, 1) || ViewCompat.canScrollHorizontally(q, 1))
            {
                accessibilitynodeinfocompat.addAction(4096);
                accessibilitynodeinfocompat.setScrollable(true);
            }
            accessibilitynodeinfocompat.setCollectionInfo(android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(a(recycler, state), b(recycler, state), e(recycler, state), d(recycler, state)));
        }

        public void a(Recycler recycler, State state, View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
        {
            int i1;
            int j1;
            if (e())
            {
                i1 = d(view);
            } else
            {
                i1 = 0;
            }
            if (d())
            {
                j1 = d(view);
            } else
            {
                j1 = 0;
            }
            accessibilitynodeinfocompat.setCollectionItemInfo(android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i1, 1, j1, 1, false, false));
        }

        public void a(Recycler recycler, State state, AccessibilityEvent accessibilityevent)
        {
            boolean flag = true;
            AccessibilityRecordCompat accessibilityrecordcompat = AccessibilityEventCompat.asRecord(accessibilityevent);
            if (q != null && accessibilityrecordcompat != null)
            {
                if (!ViewCompat.canScrollVertically(q, flag) && !ViewCompat.canScrollVertically(q, -1) && !ViewCompat.canScrollHorizontally(q, -1) && !ViewCompat.canScrollHorizontally(q, flag))
                {
                    flag = false;
                }
                accessibilityrecordcompat.setScrollable(flag);
                if (RecyclerView.f(q) != null)
                {
                    accessibilityrecordcompat.setItemCount(RecyclerView.f(q).a());
                    return;
                }
            }
        }

        public void a(RecyclerView recyclerview)
        {
        }

        public void a(RecyclerView recyclerview, int i1, int j1)
        {
        }

        public void a(RecyclerView recyclerview, int i1, int j1, int k1)
        {
        }

        public void a(RecyclerView recyclerview, Recycler recycler)
        {
            d(recyclerview);
        }

        public void a(View view)
        {
            a(view, -1);
        }

        public void a(View view, int i1)
        {
            a(view, i1, true);
        }

        public void a(View view, int i1, int j1)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            Rect rect = q.f(view);
            int k1 = i1 + (rect.left + rect.right);
            int l1 = j1 + (rect.top + rect.bottom);
            view.measure(a(o(), k1 + (q() + s() + layoutparams.leftMargin + layoutparams.rightMargin), layoutparams.width, d()), a(p(), l1 + (r() + t() + layoutparams.topMargin + layoutparams.bottomMargin), layoutparams.height, e()));
        }

        public void a(View view, int i1, int j1, int k1, int l1)
        {
            Rect rect = ((LayoutParams)view.getLayoutParams()).b;
            view.layout(i1 + rect.left, j1 + rect.top, k1 - rect.right, l1 - rect.bottom);
        }

        public void a(View view, int i1, LayoutParams layoutparams)
        {
            ViewHolder viewholder = RecyclerView.b(view);
            if (viewholder.p())
            {
                RecyclerView.c(q, view);
            } else
            {
                RecyclerView.d(q, view);
            }
            p.a(view, i1, layoutparams, viewholder.p());
        }

        public void a(View view, Rect rect)
        {
            if (q == null)
            {
                rect.set(0, 0, 0, 0);
                return;
            } else
            {
                rect.set(q.f(view));
                return;
            }
        }

        void a(View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
        {
            ViewHolder viewholder = RecyclerView.b(view);
            if (viewholder != null && !viewholder.p())
            {
                a(q.a, q.f, view, accessibilitynodeinfocompat);
            }
        }

        public void a(View view, Recycler recycler)
        {
            c(view);
            recycler.a(view);
        }

        public void a(AccessibilityEvent accessibilityevent)
        {
            a(q.a, q.f, accessibilityevent);
        }

        public void a(String s1)
        {
            if (q != null)
            {
                q.a(s1);
            }
        }

        boolean a(int i1, Bundle bundle)
        {
            return a(q.a, q.f, i1, bundle);
        }

        public boolean a(LayoutParams layoutparams)
        {
            return layoutparams != null;
        }

        public boolean a(Recycler recycler, State state, int i1, Bundle bundle)
        {
            if (q != null) goto _L2; else goto _L1
_L1:
            return false;
_L2:
            i1;
            JVM INSTR lookupswitch 2: default 36
        //                       4096: 132
        //                       8192: 65;
               goto _L3 _L4 _L5
_L3:
            int k1;
            int l1;
            l1 = 0;
            k1 = 0;
_L8:
            if (k1 != 0 || l1 != 0)
            {
                q.scrollBy(l1, k1);
                return true;
            }
              goto _L1
_L5:
            int j1;
            if (ViewCompat.canScrollVertically(q, -1))
            {
                j1 = -(p() - r() - t());
            } else
            {
                j1 = 0;
            }
            if (!ViewCompat.canScrollHorizontally(q, -1)) goto _L7; else goto _L6
_L6:
            int j2 = -(o() - q() - s());
            k1 = j1;
            l1 = j2;
              goto _L8
_L4:
            if (ViewCompat.canScrollVertically(q, 1))
            {
                j1 = p() - r() - t();
            } else
            {
                j1 = 0;
            }
            if (!ViewCompat.canScrollHorizontally(q, 1)) goto _L7; else goto _L9
_L9:
            int i2 = o() - q() - s();
            k1 = j1;
            l1 = i2;
              goto _L8
_L7:
            k1 = j1;
            l1 = 0;
              goto _L8
        }

        public boolean a(Recycler recycler, State state, View view, int i1, Bundle bundle)
        {
            return false;
        }

        public boolean a(RecyclerView recyclerview, State state, View view, View view1)
        {
            return a(recyclerview, view, view1);
        }

        public boolean a(RecyclerView recyclerview, View view, Rect rect, boolean flag)
        {
            int i1 = q();
            int j1 = r();
            int k1 = o() - s();
            int l1 = p() - t();
            int i2 = view.getLeft() + rect.left;
            int j2 = view.getTop() + rect.top;
            int k2 = i2 + rect.width();
            int l2 = j2 + rect.height();
            int i3 = Math.min(0, i2 - i1);
            int j3 = Math.min(0, j2 - j1);
            int k3 = Math.max(0, k2 - k1);
            int l3 = Math.max(0, l2 - l1);
            int i4;
            if (ViewCompat.getLayoutDirection(recyclerview) == 1)
            {
                if (k3 == 0)
                {
                    k3 = i3;
                }
                i3 = k3;
            } else
            if (i3 == 0)
            {
                i3 = k3;
            }
            if (j3 != 0)
            {
                i4 = j3;
            } else
            {
                i4 = l3;
            }
            if (i3 != 0 || i4 != 0)
            {
                if (flag)
                {
                    recyclerview.scrollBy(i3, i4);
                } else
                {
                    recyclerview.b(i3, i4);
                }
                return true;
            } else
            {
                return false;
            }
        }

        public boolean a(RecyclerView recyclerview, View view, View view1)
        {
            return l() || RecyclerView.r(recyclerview);
        }

        public boolean a(RecyclerView recyclerview, ArrayList arraylist, int i1, int j1)
        {
            return false;
        }

        boolean a(View view, int i1, Bundle bundle)
        {
            return a(q.a, q.f, view, i1, bundle);
        }

        public int b(int i1, Recycler recycler, State state)
        {
            return 0;
        }

        public int b(Recycler recycler, State state)
        {
            while (q == null || RecyclerView.f(q) == null || !d()) 
            {
                return 1;
            }
            return RecyclerView.f(q).a();
        }

        public int b(State state)
        {
            return 0;
        }

        public View b(int i1)
        {
            int j1;
            int k1;
            j1 = n();
            k1 = 0;
_L3:
            View view;
            ViewHolder viewholder;
            if (k1 >= j1)
            {
                break; /* Loop/switch isn't completed */
            }
            view = g(k1);
            viewholder = RecyclerView.b(view);
              goto _L1
_L5:
            k1++;
            if (true) goto _L3; else goto _L2
_L1:
            if (viewholder == null || viewholder.d() != i1 || viewholder.c() || !q.f.a() && viewholder.p()) goto _L5; else goto _L4
_L4:
            return view;
_L2:
            return null;
        }

        public void b(int i1, int j1)
        {
            RecyclerView.b(q, i1, j1);
        }

        void b(Recycler recycler)
        {
            int i1 = recycler.d();
            int j1 = 0;
            while (j1 < i1) 
            {
                View view = recycler.e(j1);
                ViewHolder viewholder = RecyclerView.b(view);
                if (!viewholder.c())
                {
                    if (viewholder.q())
                    {
                        q.removeDetachedView(view, false);
                    }
                    recycler.b(view);
                }
                j1++;
            }
            recycler.e();
            if (i1 > 0)
            {
                q.invalidate();
            }
        }

        void b(RecyclerView recyclerview)
        {
            if (recyclerview == null)
            {
                q = null;
                p = null;
                return;
            } else
            {
                q = recyclerview;
                p = recyclerview.c;
                return;
            }
        }

        public void b(RecyclerView recyclerview, int i1, int j1)
        {
        }

        public void b(View view)
        {
            b(view, -1);
        }

        public void b(View view, int i1)
        {
            a(view, i1, false);
        }

        public boolean b()
        {
            return false;
        }

        public int c(State state)
        {
            return 0;
        }

        public Parcelable c()
        {
            return null;
        }

        public void c(Recycler recycler)
        {
            for (int i1 = -1 + n(); i1 >= 0; i1--)
            {
                if (!RecyclerView.b(g(i1)).c())
                {
                    a(i1, recycler);
                }
            }

        }

        public void c(Recycler recycler, State state)
        {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public void c(RecyclerView recyclerview)
        {
        }

        public void c(RecyclerView recyclerview, int i1, int j1)
        {
        }

        public void c(View view)
        {
            p.a(view);
        }

        public void c(View view, int i1)
        {
            a(view, i1, (LayoutParams)view.getLayoutParams());
        }

        public int d(Recycler recycler, State state)
        {
            return 0;
        }

        public int d(State state)
        {
            return 0;
        }

        public int d(View view)
        {
            return ((LayoutParams)view.getLayoutParams()).e();
        }

        public View d(View view, int i1)
        {
            return null;
        }

        public void d(int i1)
        {
        }

        public void d(RecyclerView recyclerview)
        {
        }

        public boolean d()
        {
            return false;
        }

        public int e(State state)
        {
            return 0;
        }

        public int e(View view)
        {
            Rect rect = ((LayoutParams)view.getLayoutParams()).b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public void e(int i1)
        {
            if (g(i1) != null)
            {
                p.a(i1);
            }
        }

        public boolean e()
        {
            return false;
        }

        public boolean e(Recycler recycler, State state)
        {
            return false;
        }

        public int f(State state)
        {
            return 0;
        }

        public int f(View view)
        {
            Rect rect = ((LayoutParams)view.getLayoutParams()).b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public void f(int i1)
        {
            a(i1, g(i1));
        }

        public int g(State state)
        {
            return 0;
        }

        public int g(View view)
        {
            return view.getLeft() - m(view);
        }

        public View g(int i1)
        {
            if (p != null)
            {
                return p.b(i1);
            } else
            {
                return null;
            }
        }

        public int h(View view)
        {
            return view.getTop() - k(view);
        }

        public void h(int i1)
        {
            if (q != null)
            {
                q.c(i1);
            }
        }

        public int i(View view)
        {
            return view.getRight() + n(view);
        }

        public void i(int i1)
        {
            if (q != null)
            {
                q.b(i1);
            }
        }

        public int j(View view)
        {
            return view.getBottom() + l(view);
        }

        public void j(int i1)
        {
        }

        public int k(View view)
        {
            return ((LayoutParams)view.getLayoutParams()).b.top;
        }

        public void k()
        {
            if (q != null)
            {
                q.requestLayout();
            }
        }

        public int l(View view)
        {
            return ((LayoutParams)view.getLayoutParams()).b.bottom;
        }

        public boolean l()
        {
            return r != null && r.g();
        }

        public int m()
        {
            return ViewCompat.getLayoutDirection(q);
        }

        public int m(View view)
        {
            return ((LayoutParams)view.getLayoutParams()).b.left;
        }

        public int n()
        {
            if (p != null)
            {
                return p.b();
            } else
            {
                return 0;
            }
        }

        public int n(View view)
        {
            return ((LayoutParams)view.getLayoutParams()).b.right;
        }

        public int o()
        {
            if (q != null)
            {
                return q.getWidth();
            } else
            {
                return 0;
            }
        }

        public int p()
        {
            if (q != null)
            {
                return q.getHeight();
            } else
            {
                return 0;
            }
        }

        public int q()
        {
            if (q != null)
            {
                return q.getPaddingLeft();
            } else
            {
                return 0;
            }
        }

        public int r()
        {
            if (q != null)
            {
                return q.getPaddingTop();
            } else
            {
                return 0;
            }
        }

        public int s()
        {
            if (q != null)
            {
                return q.getPaddingRight();
            } else
            {
                return 0;
            }
        }

        public int t()
        {
            if (q != null)
            {
                return q.getPaddingBottom();
            } else
            {
                return 0;
            }
        }

        public View u()
        {
            View view;
            if (q != null)
            {
                if ((view = q.getFocusedChild()) != null && !p.c(view))
                {
                    return view;
                }
            }
            return null;
        }

        public int v()
        {
            return ViewCompat.getMinimumWidth(q);
        }

        public int w()
        {
            return ViewCompat.getMinimumHeight(q);
        }

        void x()
        {
            if (r != null)
            {
                r.e();
            }
        }

        public void y()
        {
            a = true;
        }

        public LayoutManager()
        {
            a = false;
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        ViewHolder a;
        final Rect b;
        boolean c;
        boolean d;

        public boolean c()
        {
            return a.p();
        }

        public boolean d()
        {
            return a.n();
        }

        public int e()
        {
            return a.d();
        }

        public LayoutParams(int i1, int j1)
        {
            super(i1, j1);
            b = new Rect();
            c = true;
            d = false;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            b = new Rect();
            c = true;
            d = false;
        }

        public LayoutParams(LayoutParams layoutparams)
        {
            super(layoutparams);
            b = new Rect();
            c = true;
            d = false;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            b = new Rect();
            c = true;
            d = false;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            b = new Rect();
            c = true;
            d = false;
        }
    }

    public static interface OnItemTouchListener
    {

        public abstract boolean a(RecyclerView recyclerview, MotionEvent motionevent);

        public abstract void b(RecyclerView recyclerview, MotionEvent motionevent);
    }

    public static abstract class OnScrollListener
    {

        public void a(RecyclerView recyclerview, int i1)
        {
        }

        public void a(RecyclerView recyclerview, int i1, int j1)
        {
        }

        public OnScrollListener()
        {
        }
    }

    public static class RecycledViewPool
    {

        private SparseArray a;
        private SparseIntArray b;
        private int c;

        private ArrayList b(int i1)
        {
            ArrayList arraylist = (ArrayList)a.get(i1);
            if (arraylist == null)
            {
                arraylist = new ArrayList();
                a.put(i1, arraylist);
                if (b.indexOfKey(i1) < 0)
                {
                    b.put(i1, 5);
                }
            }
            return arraylist;
        }

        public ViewHolder a(int i1)
        {
            ArrayList arraylist = (ArrayList)a.get(i1);
            if (arraylist != null && !arraylist.isEmpty())
            {
                int j1 = -1 + arraylist.size();
                ViewHolder viewholder = (ViewHolder)arraylist.get(j1);
                arraylist.remove(j1);
                return viewholder;
            } else
            {
                return null;
            }
        }

        public void a()
        {
            a.clear();
        }

        void a(Adapter adapter)
        {
            c = 1 + c;
        }

        void a(Adapter adapter, Adapter adapter1, boolean flag)
        {
            if (adapter != null)
            {
                b();
            }
            if (!flag && c == 0)
            {
                a();
            }
            if (adapter1 != null)
            {
                a(adapter1);
            }
        }

        public void a(ViewHolder viewholder)
        {
            int i1 = viewholder.f();
            ArrayList arraylist = b(i1);
            if (b.get(i1) <= arraylist.size())
            {
                return;
            } else
            {
                viewholder.r();
                arraylist.add(viewholder);
                return;
            }
        }

        void b()
        {
            c = -1 + c;
        }

        public RecycledViewPool()
        {
            a = new SparseArray();
            b = new SparseIntArray();
            c = 0;
        }
    }

    public final class Recycler
    {

        final ArrayList a = new ArrayList();
        final ArrayList b = new ArrayList();
        final RecyclerView c;
        private ArrayList d;
        private final List e;
        private int f;
        private RecycledViewPool g;
        private ViewCacheExtension h;

        static ArrayList a(Recycler recycler)
        {
            return recycler.d;
        }

        private void a(ViewGroup viewgroup, boolean flag)
        {
            for (int i1 = -1 + viewgroup.getChildCount(); i1 >= 0; i1--)
            {
                View view = viewgroup.getChildAt(i1);
                if (view instanceof ViewGroup)
                {
                    a((ViewGroup)view, true);
                }
            }

            if (!flag)
            {
                return;
            }
            if (viewgroup.getVisibility() == 4)
            {
                viewgroup.setVisibility(0);
                viewgroup.setVisibility(4);
                return;
            } else
            {
                int j1 = viewgroup.getVisibility();
                viewgroup.setVisibility(4);
                viewgroup.setVisibility(j1);
                return;
            }
        }

        private void d(View view)
        {
            if (RecyclerView.o(c) != null && RecyclerView.o(c).isEnabled())
            {
                if (ViewCompat.getImportantForAccessibility(view) == 0)
                {
                    ViewCompat.setImportantForAccessibility(view, 1);
                }
                if (!ViewCompat.hasAccessibilityDelegate(view))
                {
                    ViewCompat.setAccessibilityDelegate(view, RecyclerView.p(c).a());
                }
            }
        }

        private void e(ViewHolder viewholder)
        {
            if (viewholder.a instanceof ViewGroup)
            {
                a((ViewGroup)viewholder.a, false);
            }
        }

        ViewHolder a(int i1, int j1, boolean flag)
        {
            int k1;
            int l1;
            int i2;
            k1 = 0;
            l1 = a.size();
            i2 = 0;
_L10:
            if (i2 >= l1) goto _L2; else goto _L1
_L1:
            ViewHolder viewholder1 = (ViewHolder)a.get(i2);
            if (viewholder1.i() || viewholder1.d() != i1 || viewholder1.l() || !State.d(c.f) && viewholder1.p()) goto _L4; else goto _L3
_L3:
            if (j1 == -1 || viewholder1.f() == j1) goto _L6; else goto _L5
_L5:
            Log.e("RecyclerView", (new StringBuilder()).append("Scrap view for position ").append(i1).append(" isn't dirty but has").append(" wrong view type! (found ").append(viewholder1.f()).append(" but expected ").append(j1).append(")").toString());
_L2:
            int j2;
            if (!flag)
            {
                View view = c.c.a(i1, j1);
                if (view != null)
                {
                    c.e.c(c.a(view));
                }
            }
            j2 = b.size();
_L8:
            if (k1 >= j2)
            {
                break; /* Loop/switch isn't completed */
            }
            ViewHolder viewholder = (ViewHolder)b.get(k1);
            if (!viewholder.l() && viewholder.d() == i1)
            {
                if (!flag)
                {
                    b.remove(k1);
                }
                return viewholder;
            }
            k1++;
            continue; /* Loop/switch isn't completed */
_L6:
            viewholder1.a(32);
            return viewholder1;
_L4:
            i2++;
            continue; /* Loop/switch isn't completed */
            if (true) goto _L8; else goto _L7
_L7:
            return null;
            if (true) goto _L10; else goto _L9
_L9:
        }

        ViewHolder a(long l1, int i1, boolean flag)
        {
            int j1 = -1 + a.size();
_L5:
            if (j1 < 0) goto _L2; else goto _L1
_L1:
            ViewHolder viewholder;
            viewholder = (ViewHolder)a.get(j1);
            if (viewholder.e() != l1 || viewholder.i())
            {
                continue; /* Loop/switch isn't completed */
            }
            if (i1 != viewholder.f()) goto _L4; else goto _L3
_L3:
            viewholder.a(32);
            if (viewholder.p() && !c.f.a())
            {
                viewholder.a(2, 14);
            }
_L8:
            return viewholder;
_L4:
            if (!flag)
            {
                a.remove(j1);
                c.removeDetachedView(viewholder.a, false);
                b(viewholder.a);
            }
            j1--;
              goto _L5
_L2:
            int k1 = -1 + b.size();
_L9:
            if (k1 < 0) goto _L7; else goto _L6
_L6:
label0:
            {
                viewholder = (ViewHolder)b.get(k1);
                if (viewholder.e() != l1)
                {
                    continue; /* Loop/switch isn't completed */
                }
                if (i1 != viewholder.f())
                {
                    break label0;
                }
                if (!flag)
                {
                    b.remove(k1);
                    return viewholder;
                }
            }
              goto _L8
            if (!flag)
            {
                d(k1);
            }
            k1--;
              goto _L9
_L7:
            return null;
              goto _L8
        }

        View a(int i1, boolean flag)
        {
            boolean flag1 = true;
            if (i1 < 0 || i1 >= c.f.e())
            {
                throw new IndexOutOfBoundsException((new StringBuilder()).append("Invalid item position ").append(i1).append("(").append(i1).append("). Item count:").append(c.f.e()).toString());
            }
            ViewHolder viewholder;
            boolean flag2;
            boolean flag3;
            boolean flag4;
            ViewHolder viewholder1;
            int j1;
            boolean flag5;
            android.view.ViewGroup.LayoutParams layoutparams;
            LayoutParams layoutparams1;
            int k1;
            int l1;
            ViewHolder viewholder2;
            View view;
            if (c.f.a())
            {
                ViewHolder viewholder3 = f(i1);
                boolean flag6;
                if (viewholder3 != null)
                {
                    flag6 = flag1;
                } else
                {
                    flag6 = false;
                }
                flag2 = flag6;
                viewholder = viewholder3;
            } else
            {
                viewholder = null;
                flag2 = false;
            }
            if (viewholder != null) goto _L2; else goto _L1
_L1:
            viewholder = a(i1, -1, flag);
            if (viewholder == null) goto _L2; else goto _L3
_L3:
            if (!a(viewholder))
            {
                if (!flag)
                {
                    viewholder.a(4);
                    if (viewholder.g())
                    {
                        c.removeDetachedView(viewholder.a, false);
                        viewholder.h();
                    } else
                    if (viewholder.i())
                    {
                        viewholder.j();
                    }
                    b(viewholder);
                }
                viewholder = null;
                flag3 = flag2;
            } else
            {
                flag3 = flag1;
            }
_L9:
            if (viewholder != null) goto _L5; else goto _L4
_L4:
            k1 = c.b.a(i1);
            if (k1 < 0 || k1 >= RecyclerView.f(c).a())
            {
                throw new IndexOutOfBoundsException((new StringBuilder()).append("Inconsistency detected. Invalid item position ").append(i1).append("(offset:").append(k1).append(").").append("state:").append(c.f.e()).toString());
            }
            l1 = RecyclerView.f(c).a(k1);
            if (RecyclerView.f(c).b())
            {
                viewholder = a(RecyclerView.f(c).b(k1), l1, flag);
                if (viewholder != null)
                {
                    viewholder.b = k1;
                    flag3 = flag1;
                }
            }
            if (viewholder == null && h != null)
            {
                view = h.a(this, i1, l1);
                if (view != null)
                {
                    viewholder = c.a(view);
                    if (viewholder == null)
                    {
                        throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                    }
                    if (viewholder.c())
                    {
                        throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                    }
                }
            }
            if (viewholder == null)
            {
                viewholder = f().a(RecyclerView.f(c).a(k1));
                if (viewholder != null)
                {
                    viewholder.r();
                    if (RecyclerView.p())
                    {
                        e(viewholder);
                    }
                }
            }
            if (viewholder != null) goto _L5; else goto _L6
_L6:
            viewholder2 = RecyclerView.f(c).b(c, RecyclerView.f(c).a(k1));
            flag4 = flag3;
            viewholder1 = viewholder2;
_L7:
            if (c.f.a() && viewholder1.o())
            {
                viewholder1.f = i1;
                flag5 = false;
            } else
            if (!viewholder1.o() || viewholder1.m() || viewholder1.l())
            {
                j1 = c.b.a(i1);
                RecyclerView.f(c).b(viewholder1, j1);
                d(viewholder1.a);
                if (c.f.a())
                {
                    viewholder1.f = i1;
                }
                flag5 = flag1;
            } else
            {
                flag5 = false;
            }
            layoutparams = viewholder1.a.getLayoutParams();
            if (layoutparams == null)
            {
                layoutparams1 = (LayoutParams)c.generateDefaultLayoutParams();
                viewholder1.a.setLayoutParams(layoutparams1);
            } else
            if (!c.checkLayoutParams(layoutparams))
            {
                layoutparams1 = (LayoutParams)c.generateLayoutParams(layoutparams);
                viewholder1.a.setLayoutParams(layoutparams1);
            } else
            {
                layoutparams1 = (LayoutParams)layoutparams;
            }
            layoutparams1.a = viewholder1;
            if (!flag4 || !flag5)
            {
                flag1 = false;
            }
            layoutparams1.d = flag1;
            return viewholder1.a;
_L5:
            flag4 = flag3;
            viewholder1 = viewholder;
            if (true) goto _L7; else goto _L2
_L2:
            flag3 = flag2;
            if (true) goto _L9; else goto _L8
_L8:
        }

        public void a()
        {
            a.clear();
            c();
        }

        public void a(int i1)
        {
            f = i1;
            for (int j1 = -1 + b.size(); j1 >= 0 && b.size() > i1; j1--)
            {
                d(j1);
            }

            for (; b.size() > i1; b.remove(-1 + b.size())) { }
        }

        void a(int i1, int j1)
        {
            byte byte0;
            int k1;
            int l1;
            int i2;
            int j2;
            if (i1 < j1)
            {
                byte0 = -1;
                k1 = j1;
                l1 = i1;
            } else
            {
                byte0 = 1;
                k1 = i1;
                l1 = j1;
            }
            i2 = b.size();
            j2 = 0;
            while (j2 < i2) 
            {
                ViewHolder viewholder = (ViewHolder)b.get(j2);
                if (viewholder != null && viewholder.b >= l1 && viewholder.b <= k1)
                {
                    if (viewholder.b == i1)
                    {
                        viewholder.a(j1 - i1, false);
                    } else
                    {
                        viewholder.a(byte0, false);
                    }
                }
                j2++;
            }
        }

        void a(Adapter adapter, Adapter adapter1, boolean flag)
        {
            a();
            f().a(adapter, adapter1, flag);
        }

        void a(RecycledViewPool recycledviewpool)
        {
            if (g != null)
            {
                g.b();
            }
            g = recycledviewpool;
            if (recycledviewpool != null)
            {
                g.a(c.getAdapter());
            }
        }

        void a(ViewCacheExtension viewcacheextension)
        {
            h = viewcacheextension;
        }

        public void a(View view)
        {
            ViewHolder viewholder;
            viewholder = RecyclerView.b(view);
            if (viewholder.q())
            {
                c.removeDetachedView(view, false);
            }
            if (!viewholder.g()) goto _L2; else goto _L1
_L1:
            viewholder.h();
_L4:
            b(viewholder);
            return;
_L2:
            if (viewholder.i())
            {
                viewholder.j();
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        boolean a(ViewHolder viewholder)
        {
            if (!viewholder.p())
            {
                if (viewholder.b < 0 || viewholder.b >= RecyclerView.f(c).a())
                {
                    throw new IndexOutOfBoundsException((new StringBuilder()).append("Inconsistency detected. Invalid view holder adapter position").append(viewholder).toString());
                }
                if (!c.f.a() && RecyclerView.f(c).a(viewholder.b) != viewholder.f())
                {
                    return false;
                }
                if (RecyclerView.f(c).b() && viewholder.e() != RecyclerView.f(c).b(viewholder.b))
                {
                    return false;
                }
            }
            return true;
        }

        public int b(int i1)
        {
            if (i1 < 0 || i1 >= c.f.e())
            {
                throw new IndexOutOfBoundsException((new StringBuilder()).append("invalid position ").append(i1).append(". State ").append("item count is ").append(c.f.e()).toString());
            }
            if (!c.f.a())
            {
                return i1;
            } else
            {
                return c.b.a(i1);
            }
        }

        public List b()
        {
            return e;
        }

        void b(int i1, int j1)
        {
            int k1 = b.size();
            for (int l1 = 0; l1 < k1; l1++)
            {
                ViewHolder viewholder = (ViewHolder)b.get(l1);
                if (viewholder != null && viewholder.d() >= i1)
                {
                    viewholder.a(j1, true);
                }
            }

        }

        void b(int i1, int j1, boolean flag)
        {
            int k1 = i1 + j1;
            int l1 = -1 + b.size();
            while (l1 >= 0) 
            {
                ViewHolder viewholder = (ViewHolder)b.get(l1);
                if (viewholder != null)
                {
                    if (viewholder.d() >= k1)
                    {
                        viewholder.a(-j1, flag);
                    } else
                    if (viewholder.d() >= i1 && !d(l1))
                    {
                        viewholder.a(4);
                    }
                }
                l1--;
            }
        }

        void b(ViewHolder viewholder)
        {
            boolean flag;
            flag = true;
            if (viewholder.g() || viewholder.a.getParent() != null)
            {
                StringBuilder stringbuilder = (new StringBuilder()).append("Scrapped or attached views may not be recycled. isScrap:").append(viewholder.g()).append(" isAttached:");
                if (viewholder.a.getParent() == null)
                {
                    flag = false;
                }
                throw new IllegalArgumentException(stringbuilder.append(flag).toString());
            }
            if (viewholder.q())
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Tmp detached view should be removed from RecyclerView before it can be recycled: ").append(viewholder).toString());
            }
            if (viewholder.c())
            {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
            }
            if (!viewholder.s()) goto _L2; else goto _L1
_L1:
            boolean flag1;
            boolean flag2;
            flag1 = viewholder.l();
            flag2 = false;
            if (flag1) goto _L4; else goto _L3
_L3:
            if (State.d(c.f)) goto _L6; else goto _L5
_L5:
            boolean flag4;
            flag4 = viewholder.p();
            flag2 = false;
            if (flag4) goto _L4; else goto _L6
_L6:
            boolean flag3;
            flag3 = viewholder.n();
            flag2 = false;
            if (flag3) goto _L4; else goto _L7
_L7:
            if (b.size() != f || b.isEmpty()) goto _L9; else goto _L8
_L8:
            int k1 = 0;
_L12:
            if (k1 < b.size() && !d(k1)) goto _L10; else goto _L9
_L9:
            int i1 = b.size();
            int j1 = f;
            flag2 = false;
            if (i1 < j1)
            {
                b.add(viewholder);
                flag2 = flag;
            }
_L4:
            if (!flag2)
            {
                f().a(viewholder);
                d(viewholder);
            }
_L2:
            c.f.a(viewholder);
            return;
_L10:
            k1++;
            if (true) goto _L12; else goto _L11
_L11:
        }

        void b(View view)
        {
            ViewHolder viewholder = RecyclerView.b(view);
            ViewHolder.a(viewholder, null);
            viewholder.j();
            b(viewholder);
        }

        public View c(int i1)
        {
            return a(i1, false);
        }

        void c()
        {
            for (int i1 = -1 + b.size(); i1 >= 0; i1--)
            {
                d(i1);
            }

            b.clear();
        }

        void c(int i1, int j1)
        {
            int k1 = i1 + j1;
            int l1 = b.size();
            int i2 = 0;
            while (i2 < l1) 
            {
                ViewHolder viewholder = (ViewHolder)b.get(i2);
                if (viewholder != null)
                {
                    int j2 = viewholder.d();
                    if (j2 >= i1 && j2 < k1)
                    {
                        viewholder.a(2);
                    }
                }
                i2++;
            }
        }

        void c(ViewHolder viewholder)
        {
            if (!viewholder.n() || !RecyclerView.g(c) || d == null)
            {
                a.remove(viewholder);
            } else
            {
                d.remove(viewholder);
            }
            ViewHolder.a(viewholder, null);
            viewholder.j();
        }

        void c(View view)
        {
            ViewHolder viewholder = RecyclerView.b(view);
            viewholder.a(this);
            if (!viewholder.n() || !RecyclerView.g(c))
            {
                if (viewholder.l() && !viewholder.p() && !RecyclerView.f(c).b())
                {
                    throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
                } else
                {
                    a.add(viewholder);
                    return;
                }
            }
            if (d == null)
            {
                d = new ArrayList();
            }
            d.add(viewholder);
        }

        int d()
        {
            return a.size();
        }

        void d(ViewHolder viewholder)
        {
            if (RecyclerView.q(c) != null)
            {
                RecyclerView.q(c).a(viewholder);
            }
            if (RecyclerView.f(c) != null)
            {
                RecyclerView.f(c).a(viewholder);
            }
            if (c.f != null)
            {
                c.f.a(viewholder);
            }
        }

        boolean d(int i1)
        {
            ViewHolder viewholder = (ViewHolder)b.get(i1);
            if (viewholder.s())
            {
                f().a(viewholder);
                d(viewholder);
                b.remove(i1);
                return true;
            } else
            {
                return false;
            }
        }

        View e(int i1)
        {
            return ((ViewHolder)a.get(i1)).a;
        }

        void e()
        {
            a.clear();
        }

        RecycledViewPool f()
        {
            if (g == null)
            {
                g = new RecycledViewPool();
            }
            return g;
        }

        ViewHolder f(int i1)
        {
            int j1;
            int k1;
label0:
            {
                j1 = 0;
                if (d != null)
                {
                    k1 = d.size();
                    if (k1 != 0)
                    {
                        break label0;
                    }
                }
                return null;
            }
            for (int l1 = 0; l1 < k1; l1++)
            {
                ViewHolder viewholder1 = (ViewHolder)d.get(l1);
                if (!viewholder1.i() && viewholder1.d() == i1)
                {
                    viewholder1.a(32);
                    return viewholder1;
                }
            }

            if (RecyclerView.f(c).b())
            {
                int i2 = c.b.a(i1);
                if (i2 > 0 && i2 < RecyclerView.f(c).a())
                {
                    long l2 = RecyclerView.f(c).b(i2);
                    for (; j1 < k1; j1++)
                    {
                        ViewHolder viewholder = (ViewHolder)d.get(j1);
                        if (!viewholder.i() && viewholder.e() == l2)
                        {
                            viewholder.a(32);
                            return viewholder;
                        }
                    }

                }
            }
            return null;
        }

        void g()
        {
            if (RecyclerView.f(c) != null && RecyclerView.f(c).b())
            {
                int j1 = b.size();
                for (int k1 = 0; k1 < j1; k1++)
                {
                    ViewHolder viewholder = (ViewHolder)b.get(k1);
                    if (viewholder != null)
                    {
                        viewholder.a(6);
                    }
                }

            } else
            {
                for (int i1 = -1 + b.size(); i1 >= 0; i1--)
                {
                    if (!d(i1))
                    {
                        ((ViewHolder)b.get(i1)).a(6);
                    }
                }

            }
        }

        void h()
        {
            int i1 = 0;
            int j1 = b.size();
            for (int k1 = 0; k1 < j1; k1++)
            {
                ((ViewHolder)b.get(k1)).a();
            }

            int l1 = a.size();
            for (int i2 = 0; i2 < l1; i2++)
            {
                ((ViewHolder)a.get(i2)).a();
            }

            if (d != null)
            {
                for (int j2 = d.size(); i1 < j2; i1++)
                {
                    ((ViewHolder)d.get(i1)).a();
                }

            }
        }

        void i()
        {
            int i1 = b.size();
            for (int j1 = 0; j1 < i1; j1++)
            {
                LayoutParams layoutparams = (LayoutParams)((ViewHolder)b.get(j1)).a.getLayoutParams();
                if (layoutparams != null)
                {
                    layoutparams.c = true;
                }
            }

        }

        public Recycler()
        {
            c = RecyclerView.this;
            super();
            d = null;
            e = Collections.unmodifiableList(a);
            f = 2;
        }
    }

    public static interface RecyclerListener
    {

        public abstract void a(ViewHolder viewholder);
    }

    class RecyclerViewDataObserver extends AdapterDataObserver
    {

        final RecyclerView a;

        public void a()
        {
            a.a(null);
            if (RecyclerView.f(a).b())
            {
                State.a(a.f, true);
                RecyclerView.c(a, true);
            } else
            {
                State.a(a.f, true);
                RecyclerView.c(a, true);
            }
            if (!a.b.d())
            {
                a.requestLayout();
            }
        }

        public void a(int i1, int j1)
        {
            a.a(null);
            if (a.b.b(i1, j1))
            {
                b();
            }
        }

        void b()
        {
            if (RecyclerView.k(a) && RecyclerView.l(a) && RecyclerView.m(a))
            {
                ViewCompat.postOnAnimation(a, RecyclerView.n(a));
                return;
            } else
            {
                RecyclerView.d(a, true);
                a.requestLayout();
                return;
            }
        }

        private RecyclerViewDataObserver()
        {
            a = RecyclerView.this;
            super();
        }

    }

    static class SavedState extends android.view.View.BaseSavedState
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
        Parcelable a;

        private void a(SavedState savedstate)
        {
            a = savedstate.a;
        }

        static void a(SavedState savedstate, SavedState savedstate1)
        {
            savedstate.a(savedstate1);
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            parcel.writeParcelable(a, 0);
        }


        SavedState(Parcel parcel)
        {
            super(parcel);
            a = parcel.readParcelable(android/support/v7/widget/RecyclerView$LayoutManager.getClassLoader());
        }

        SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    public static abstract class SmoothScroller
    {

        private int a;
        private RecyclerView b;
        private LayoutManager c;
        private boolean d;
        private boolean e;
        private View f;
        private final Action g = new Action(0, 0);

        private void a(int i1, int j1)
        {
            if (!e || a == -1)
            {
                e();
            }
            d = false;
            if (f != null)
            {
                if (a(f) == a)
                {
                    a(f, b.f, g);
                    Action.a(g, b);
                    e();
                } else
                {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    f = null;
                }
            }
            if (e)
            {
                a(i1, j1, b.f, g);
                Action.a(g, b);
            }
        }

        static void a(SmoothScroller smoothscroller, int i1, int j1)
        {
            smoothscroller.a(i1, j1);
        }

        public int a(View view)
        {
            return b.c(view);
        }

        protected abstract void a();

        protected abstract void a(int i1, int j1, State state, Action action);

        protected void a(PointF pointf)
        {
            double d1 = Math.sqrt(pointf.x * pointf.x + pointf.y * pointf.y);
            pointf.x = (float)((double)pointf.x / d1);
            pointf.y = (float)((double)pointf.y / d1);
        }

        protected abstract void a(View view, State state, Action action);

        protected void b(View view)
        {
            if (a(view) == h())
            {
                f = view;
            }
        }

        public LayoutManager d()
        {
            return c;
        }

        public void d(int i1)
        {
            a = i1;
        }

        protected final void e()
        {
            if (!e)
            {
                return;
            } else
            {
                a();
                State.d(b.f, -1);
                f = null;
                a = -1;
                d = false;
                e = false;
                LayoutManager.a(c, this);
                c = null;
                b = null;
                return;
            }
        }

        public void e(int i1)
        {
            b.a(i1);
        }

        public boolean f()
        {
            return d;
        }

        public boolean g()
        {
            return e;
        }

        public int h()
        {
            return a;
        }

        public int i()
        {
            return RecyclerView.d(b).n();
        }

        public SmoothScroller()
        {
            a = -1;
        }
    }

    public static class SmoothScroller.Action
    {

        private int a;
        private int b;
        private int c;
        private Interpolator d;
        private boolean e;
        private int f;

        private void a()
        {
            if (d != null && c < 1)
            {
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }
            if (c < 1)
            {
                throw new IllegalStateException("Scroll duration must be a positive number");
            } else
            {
                return;
            }
        }

        static void a(SmoothScroller.Action action, RecyclerView recyclerview)
        {
            action.a(recyclerview);
        }

        private void a(RecyclerView recyclerview)
        {
            if (e)
            {
                a();
                if (d == null)
                {
                    if (c == 0x80000000)
                    {
                        RecyclerView.s(recyclerview).b(a, b);
                    } else
                    {
                        RecyclerView.s(recyclerview).a(a, b, c);
                    }
                } else
                {
                    RecyclerView.s(recyclerview).a(a, b, c, d);
                }
                f = 1 + f;
                if (f > 10)
                {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                e = false;
                return;
            } else
            {
                f = 0;
                return;
            }
        }

        public void a(int i1, int j1, int k1, Interpolator interpolator)
        {
            a = i1;
            b = j1;
            c = k1;
            d = interpolator;
            e = true;
        }

        public SmoothScroller.Action(int i1, int j1)
        {
            this(i1, j1, 0x80000000, null);
        }

        public SmoothScroller.Action(int i1, int j1, int k1, Interpolator interpolator)
        {
            e = false;
            f = 0;
            a = i1;
            b = j1;
            c = k1;
            d = interpolator;
        }
    }

    public static class State
    {

        ArrayMap a;
        ArrayMap b;
        ArrayMap c;
        int d;
        private int e;
        private SparseArray f;
        private int g;
        private int h;
        private boolean i;
        private boolean j;
        private boolean k;
        private boolean l;

        static int a(State state, int i1)
        {
            int j1 = i1 + state.h;
            state.h = j1;
            return j1;
        }

        private void a(ArrayMap arraymap, ViewHolder viewholder)
        {
            int i1 = -1 + arraymap.size();
            do
            {
label0:
                {
                    if (i1 >= 0)
                    {
                        if (viewholder != arraymap.valueAt(i1))
                        {
                            break label0;
                        }
                        arraymap.removeAt(i1);
                    }
                    return;
                }
                i1--;
            } while (true);
        }

        static boolean a(State state)
        {
            return state.l;
        }

        static boolean a(State state, boolean flag)
        {
            state.i = flag;
            return flag;
        }

        static int b(State state, int i1)
        {
            state.h = i1;
            return i1;
        }

        static boolean b(State state)
        {
            return state.k;
        }

        static boolean b(State state, boolean flag)
        {
            state.j = flag;
            return flag;
        }

        static int c(State state, int i1)
        {
            state.g = i1;
            return i1;
        }

        static boolean c(State state)
        {
            return state.i;
        }

        static boolean c(State state, boolean flag)
        {
            state.k = flag;
            return flag;
        }

        static int d(State state, int i1)
        {
            state.e = i1;
            return i1;
        }

        static boolean d(State state)
        {
            return state.j;
        }

        static boolean d(State state, boolean flag)
        {
            state.l = flag;
            return flag;
        }

        public void a(ViewHolder viewholder)
        {
            a.remove(viewholder);
            b.remove(viewholder);
            if (c != null)
            {
                a(c, viewholder);
            }
        }

        public boolean a()
        {
            return j;
        }

        public boolean b()
        {
            return l;
        }

        public int c()
        {
            return e;
        }

        public boolean d()
        {
            return e != -1;
        }

        public int e()
        {
            if (j)
            {
                return g - h;
            } else
            {
                return d;
            }
        }

        public String toString()
        {
            return (new StringBuilder()).append("State{mTargetPosition=").append(e).append(", mPreLayoutHolderMap=").append(a).append(", mPostLayoutHolderMap=").append(b).append(", mData=").append(f).append(", mItemCount=").append(d).append(", mPreviousLayoutItemCount=").append(g).append(", mDeletedInvisibleItemCountSincePreviousLayout=").append(h).append(", mStructureChanged=").append(i).append(", mInPreLayout=").append(j).append(", mRunSimpleAnimations=").append(k).append(", mRunPredictiveAnimations=").append(l).append('}').toString();
        }

        public State()
        {
            e = -1;
            a = new ArrayMap();
            b = new ArrayMap();
            c = new ArrayMap();
            d = 0;
            g = 0;
            h = 0;
            i = false;
            j = false;
            k = false;
            l = false;
        }
    }

    public static abstract class ViewCacheExtension
    {

        public abstract View a(Recycler recycler, int i1, int j1);

        public ViewCacheExtension()
        {
        }
    }

    class ViewFlinger
        implements Runnable
    {

        final RecyclerView a;
        private int b;
        private int c;
        private ScrollerCompat d;
        private Interpolator e;
        private boolean f;
        private boolean g;

        private float a(float f1)
        {
            return (float)Math.sin((float)(0.4712389167638204D * (double)(f1 - 0.5F)));
        }

        private int b(int i1, int j1, int k1, int l1)
        {
            int i2 = Math.abs(i1);
            int j2 = Math.abs(j1);
            boolean flag;
            int k2;
            int l2;
            int i3;
            int j3;
            float f1;
            float f2;
            int l3;
            if (i2 > j2)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            k2 = (int)Math.sqrt(k1 * k1 + l1 * l1);
            l2 = (int)Math.sqrt(i1 * i1 + j1 * j1);
            if (flag)
            {
                i3 = a.getWidth();
            } else
            {
                i3 = a.getHeight();
            }
            j3 = i3 / 2;
            f1 = Math.min(1.0F, (1.0F * (float)l2) / (float)i3);
            f2 = (float)j3 + (float)j3 * a(f1);
            if (k2 > 0)
            {
                l3 = 4 * Math.round(1000F * Math.abs(f2 / (float)k2));
            } else
            {
                int k3;
                if (flag)
                {
                    k3 = i2;
                } else
                {
                    k3 = j2;
                }
                l3 = (int)(300F * (1.0F + (float)k3 / (float)i3));
            }
            return Math.min(l3, 2000);
        }

        private void c()
        {
            g = false;
            f = true;
        }

        private void d()
        {
            f = false;
            if (g)
            {
                a();
            }
        }

        void a()
        {
            if (f)
            {
                g = true;
                return;
            } else
            {
                ViewCompat.postOnAnimation(a, this);
                return;
            }
        }

        public void a(int i1, int j1)
        {
            RecyclerView.b(a, 2);
            c = 0;
            b = 0;
            d.fling(0, 0, i1, j1, 0x80000000, 0x7fffffff, 0x80000000, 0x7fffffff);
            a();
        }

        public void a(int i1, int j1, int k1)
        {
            a(i1, j1, k1, RecyclerView.o());
        }

        public void a(int i1, int j1, int k1, int l1)
        {
            a(i1, j1, b(i1, j1, k1, l1));
        }

        public void a(int i1, int j1, int k1, Interpolator interpolator)
        {
            if (e != interpolator)
            {
                e = interpolator;
                d = ScrollerCompat.create(a.getContext(), interpolator);
            }
            RecyclerView.b(a, 2);
            c = 0;
            b = 0;
            d.startScroll(0, 0, i1, j1, k1);
            a();
        }

        public void b()
        {
            a.removeCallbacks(this);
            d.abortAnimation();
        }

        public void b(int i1, int j1)
        {
            a(i1, j1, 0, 0);
        }

        public void run()
        {
            ScrollerCompat scrollercompat;
            SmoothScroller smoothscroller;
            c();
            RecyclerView.e(a);
            scrollercompat = d;
            smoothscroller = RecyclerView.d(a).r;
            if (!scrollercompat.computeScrollOffset()) goto _L2; else goto _L1
_L1:
            int i3;
            int j3;
            int i1 = scrollercompat.getCurrX();
            int j1 = scrollercompat.getCurrY();
            int k1 = i1 - b;
            int l1 = j1 - c;
            b = i1;
            c = j1;
            Adapter adapter = RecyclerView.f(a);
            int i2 = 0;
            int j2 = 0;
            int k2 = 0;
            int l2 = 0;
            boolean flag;
            if (adapter != null)
            {
                a.b();
                RecyclerView.b(a, true);
                k2 = 0;
                l2 = 0;
                if (k1 != 0)
                {
                    l2 = RecyclerView.d(a).a(k1, a.a, a.f);
                    k2 = k1 - l2;
                }
                i2 = 0;
                j2 = 0;
                if (l1 != 0)
                {
                    j2 = RecyclerView.d(a).b(l1, a.a, a.f);
                    i2 = l1 - j2;
                }
                if (RecyclerView.g(a))
                {
                    int i5 = a.c.b();
                    int j5 = 0;
                    while (j5 < i5) 
                    {
                        View view = a.c.b(j5);
                        ViewHolder viewholder = a.a(view);
                        if (viewholder == null || viewholder.h == null)
                        {
                            continue;
                        }
                        View view1;
                        int k5;
                        int l5;
                        if (viewholder.h != null)
                        {
                            view1 = viewholder.h.a;
                        } else
                        {
                            view1 = null;
                        }
                        if (view1 == null)
                        {
                            continue;
                        }
                        k5 = view.getLeft();
                        l5 = view.getTop();
                        if (k5 != view1.getLeft() || l5 != view1.getTop())
                        {
                            view1.layout(k5, l5, k5 + view1.getWidth(), l5 + view1.getHeight());
                        }
                        j5++;
                    }
                }
                if (smoothscroller != null && !smoothscroller.f() && smoothscroller.g())
                {
                    int l4 = a.f.e();
                    int k3;
                    int l3;
                    if (l4 == 0)
                    {
                        smoothscroller.e();
                    } else
                    if (smoothscroller.h() >= l4)
                    {
                        smoothscroller.d(l4 - 1);
                        SmoothScroller.a(smoothscroller, k1 - k2, l1 - i2);
                    } else
                    {
                        SmoothScroller.a(smoothscroller, k1 - k2, l1 - i2);
                    }
                }
                RecyclerView.b(a, false);
                a.a(false);
            }
            i3 = i2;
            j3 = k2;
            k3 = j2;
            l3 = l2;
            if (k1 == l3 && l1 == k3)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!RecyclerView.h(a).isEmpty())
            {
                a.invalidate();
            }
            if (ViewCompat.getOverScrollMode(a) != 2)
            {
                RecyclerView.a(a, k1, l1);
            }
            if (j3 == 0 && i3 == 0) goto _L4; else goto _L3
_L3:
            int i4 = (int)scrollercompat.getCurrVelocity();
            int j4;
            if (j3 != i1)
            {
                int k4;
                if (j3 < 0)
                {
                    k4 = -i4;
                } else
                if (j3 > 0)
                {
                    k4 = i4;
                } else
                {
                    k4 = 0;
                }
                j4 = k4;
            } else
            {
                j4 = 0;
            }
            if (i3 == j1) goto _L6; else goto _L5
_L5:
            if (i3 >= 0) goto _L8; else goto _L7
_L7:
            i4 = -i4;
_L10:
            if (ViewCompat.getOverScrollMode(a) != 2)
            {
                a.d(j4, i4);
            }
            if ((j4 != 0 || j3 == i1 || scrollercompat.getFinalX() == 0) && (i4 != 0 || i3 == j1 || scrollercompat.getFinalY() == 0))
            {
                scrollercompat.abortAnimation();
            }
_L4:
            if (l3 != 0 || k3 != 0)
            {
                RecyclerView.a(a, 0, 0, 0, 0);
                if (RecyclerView.i(a) != null)
                {
                    RecyclerView.i(a).a(a, l3, k3);
                }
            }
            if (!RecyclerView.j(a))
            {
                a.invalidate();
            }
            if (scrollercompat.isFinished() || !flag)
            {
                RecyclerView.b(a, 0);
            } else
            {
                a();
            }
_L2:
            if (smoothscroller != null && smoothscroller.f())
            {
                SmoothScroller.a(smoothscroller, 0, 0);
            }
            d();
            return;
_L8:
            if (i3 <= 0)
            {
                i4 = 0;
            }
            continue; /* Loop/switch isn't completed */
_L6:
            i4 = 0;
            if (true) goto _L10; else goto _L9
_L9:
        }

        public ViewFlinger()
        {
            a = RecyclerView.this;
            super();
            e = RecyclerView.o();
            f = false;
            g = false;
            d = ScrollerCompat.create(getContext(), RecyclerView.o());
        }
    }

    public static abstract class ViewHolder
    {

        public final View a;
        int b;
        int c;
        long d;
        int e;
        int f;
        ViewHolder g;
        ViewHolder h;
        private int i;
        private int j;
        private Recycler k;

        static int a(ViewHolder viewholder)
        {
            return viewholder.i;
        }

        static Recycler a(ViewHolder viewholder, Recycler recycler)
        {
            viewholder.k = recycler;
            return recycler;
        }

        void a()
        {
            c = -1;
            f = -1;
        }

        void a(int i1)
        {
            i = i1 | i;
        }

        void a(int i1, int j1)
        {
            i = i & ~j1 | i1 & j1;
        }

        void a(int i1, int j1, boolean flag)
        {
            a(8);
            a(j1, flag);
            b = i1;
        }

        void a(int i1, boolean flag)
        {
            if (c == -1)
            {
                c = b;
            }
            if (f == -1)
            {
                f = b;
            }
            if (flag)
            {
                f = i1 + f;
            }
            b = i1 + b;
            if (a.getLayoutParams() != null)
            {
                ((LayoutParams)a.getLayoutParams()).c = true;
            }
        }

        void a(Recycler recycler)
        {
            k = recycler;
        }

        public final void a(boolean flag)
        {
            int i1;
            if (flag)
            {
                i1 = -1 + j;
            } else
            {
                i1 = 1 + j;
            }
            j = i1;
            if (j < 0)
            {
                j = 0;
                Log.e("View", (new StringBuilder()).append("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ").append(this).toString());
            } else
            {
                if (!flag && j == 1)
                {
                    i = 0x10 | i;
                    return;
                }
                if (flag && j == 0)
                {
                    i = 0xffffffef & i;
                    return;
                }
            }
        }

        void b()
        {
            if (c == -1)
            {
                c = b;
            }
        }

        boolean c()
        {
            return (0x80 & i) != 0;
        }

        public final int d()
        {
            if (f == -1)
            {
                return b;
            } else
            {
                return f;
            }
        }

        public final long e()
        {
            return d;
        }

        public final int f()
        {
            return e;
        }

        boolean g()
        {
            return k != null;
        }

        void h()
        {
            k.c(this);
        }

        boolean i()
        {
            return (0x20 & i) != 0;
        }

        void j()
        {
            i = 0xffffffdf & i;
        }

        void k()
        {
            i = 0xfffffeff & i;
        }

        boolean l()
        {
            return (4 & i) != 0;
        }

        boolean m()
        {
            return (2 & i) != 0;
        }

        boolean n()
        {
            return (0x40 & i) != 0;
        }

        boolean o()
        {
            return (1 & i) != 0;
        }

        boolean p()
        {
            return (8 & i) != 0;
        }

        boolean q()
        {
            return (0x100 & i) != 0;
        }

        void r()
        {
            i = 0;
            b = -1;
            c = -1;
            d = -1L;
            f = -1;
            j = 0;
            g = null;
            h = null;
        }

        public final boolean s()
        {
            return (0x10 & i) == 0 && !ViewCompat.hasTransientState(a);
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder((new StringBuilder()).append("ViewHolder{").append(Integer.toHexString(hashCode())).append(" position=").append(b).append(" id=").append(d).append(", oldPos=").append(c).append(", pLpos:").append(f).toString());
            if (g())
            {
                stringbuilder.append(" scrap");
            }
            if (l())
            {
                stringbuilder.append(" invalid");
            }
            if (!o())
            {
                stringbuilder.append(" unbound");
            }
            if (m())
            {
                stringbuilder.append(" update");
            }
            if (p())
            {
                stringbuilder.append(" removed");
            }
            if (c())
            {
                stringbuilder.append(" ignored");
            }
            if (n())
            {
                stringbuilder.append(" changed");
            }
            if (q())
            {
                stringbuilder.append(" tmpDetached");
            }
            if (!s())
            {
                stringbuilder.append((new StringBuilder()).append(" not recyclable(").append(j).append(")").toString());
            }
            if (a.getParent() == null)
            {
                stringbuilder.append(" no parent");
            }
            stringbuilder.append("}");
            return stringbuilder.toString();
        }

        public ViewHolder(View view)
        {
            b = -1;
            c = -1;
            d = -1L;
            e = -1;
            f = -1;
            g = null;
            h = null;
            j = 0;
            k = null;
            if (view == null)
            {
                throw new IllegalArgumentException("itemView may not be null");
            } else
            {
                a = view;
                return;
            }
        }
    }


    private static final Interpolator ab = new Interpolator() {

        public float getInterpolation(float f1)
        {
            float f2 = f1 - 1.0F;
            return 1.0F + f2 * (f2 * (f2 * (f2 * f2)));
        }

    };
    private static final boolean i;
    private final boolean A;
    private final AccessibilityManager B;
    private boolean C;
    private boolean D;
    private EdgeEffectCompat E;
    private EdgeEffectCompat F;
    private EdgeEffectCompat G;
    private EdgeEffectCompat H;
    private int I;
    private int J;
    private VelocityTracker K;
    private int L;
    private int M;
    private int N;
    private int O;
    private int P;
    private final int Q;
    private final int R;
    private final ViewFlinger S;
    private OnScrollListener T;
    private ItemAnimator.ItemAnimatorListener U;
    private boolean V;
    private RecyclerViewAccessibilityDelegate W;
    final Recycler a;
    private Runnable aa = new Runnable() {

        final RecyclerView a;

        public void run()
        {
            if (a.e != null)
            {
                a.e.a();
            }
            RecyclerView.a(a, false);
        }

            
            {
                a = RecyclerView.this;
                super();
            }
    };
    AdapterHelper b;
    ChildHelper c;
    final List d;
    ItemAnimator e;
    final State f;
    boolean g;
    boolean h;
    private final RecyclerViewDataObserver j;
    private SavedState k;
    private boolean l;
    private final Runnable m;
    private final Rect n;
    private Adapter o;
    private LayoutManager p;
    private RecyclerListener q;
    private final ArrayList r;
    private final ArrayList s;
    private OnItemTouchListener t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    public RecyclerView(Context context)
    {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public RecyclerView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        j = new RecyclerViewDataObserver();
        a = new Recycler();
        d = new ArrayList();
        m = new Runnable() {

            final RecyclerView a;

            public void run()
            {
                if (RecyclerView.a(a))
                {
                    if (RecyclerView.b(a))
                    {
                        a.i();
                        return;
                    }
                    if (a.b.d())
                    {
                        a.b();
                        a.b.b();
                        if (!RecyclerView.c(a))
                        {
                            a.m();
                        }
                        a.a(true);
                        return;
                    }
                }
            }

            
            {
                a = RecyclerView.this;
                super();
            }
        };
        n = new Rect();
        r = new ArrayList();
        s = new ArrayList();
        C = false;
        D = false;
        e = new DefaultItemAnimator();
        I = 0;
        J = -1;
        S = new ViewFlinger();
        f = new State();
        g = false;
        h = false;
        U = new ItemAnimatorRestoreListener();
        V = false;
        boolean flag;
        ViewConfiguration viewconfiguration;
        int j1;
        boolean flag1;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        A = flag;
        viewconfiguration = ViewConfiguration.get(context);
        P = viewconfiguration.getScaledTouchSlop();
        Q = viewconfiguration.getScaledMinimumFlingVelocity();
        R = viewconfiguration.getScaledMaximumFlingVelocity();
        j1 = ViewCompat.getOverScrollMode(this);
        flag1 = false;
        if (j1 == 2)
        {
            flag1 = true;
        }
        setWillNotDraw(flag1);
        e.a(U);
        a();
        q();
        if (ViewCompat.getImportantForAccessibility(this) == 0)
        {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        B = (AccessibilityManager)getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
    }

    private void a(ArrayMap arraymap)
    {
        int i1 = d.size();
        int j1 = 0;
        while (j1 < i1) 
        {
            View view = (View)d.get(j1);
            ViewHolder viewholder = b(view);
            ItemHolderInfo itemholderinfo = (ItemHolderInfo)f.a.remove(viewholder);
            if (!f.a())
            {
                f.b.remove(viewholder);
            }
            if (arraymap.remove(view) != null)
            {
                p.a(view, a);
            } else
            if (itemholderinfo != null)
            {
                a(itemholderinfo);
            } else
            {
                a(new ItemHolderInfo(viewholder, view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            }
            j1++;
        }
        d.clear();
    }

    private void a(Adapter adapter, boolean flag, boolean flag1)
    {
        if (o != null)
        {
            o.b(j);
            o.b(this);
        }
        if (!flag || flag1)
        {
            if (e != null)
            {
                e.c();
            }
            if (p != null)
            {
                p.c(a);
                p.b(a);
            }
        }
        b.a();
        Adapter adapter1 = o;
        o = adapter;
        if (adapter != null)
        {
            adapter.a(j);
            adapter.a(this);
        }
        if (p != null)
        {
            p.a(adapter1, o);
        }
        a.a(adapter1, o, flag);
        State.a(f, true);
        n();
    }

    private void a(ItemHolderInfo itemholderinfo)
    {
        View view = itemholderinfo.a.a;
        b(itemholderinfo.a);
        int i1 = itemholderinfo.b;
        int j1 = itemholderinfo.c;
        int k1 = view.getLeft();
        int l1 = view.getTop();
        if (i1 != k1 || j1 != l1)
        {
            itemholderinfo.a.a(false);
            view.layout(k1, l1, k1 + view.getWidth(), l1 + view.getHeight());
            if (e.a(itemholderinfo.a, i1, j1, k1, l1))
            {
                w();
            }
        } else
        {
            itemholderinfo.a.a(false);
            if (e.a(itemholderinfo.a))
            {
                w();
                return;
            }
        }
    }

    private void a(ViewHolder viewholder, Rect rect, int i1, int j1)
    {
        View _tmp = viewholder.a;
        if (rect != null && (rect.left != i1 || rect.top != j1))
        {
            viewholder.a(false);
            if (e.a(viewholder, rect.left, rect.top, i1, j1))
            {
                w();
            }
        } else
        {
            viewholder.a(false);
            if (e.b(viewholder))
            {
                w();
                return;
            }
        }
    }

    private void a(ViewHolder viewholder, ViewHolder viewholder1)
    {
        viewholder.a(false);
        b(viewholder);
        viewholder.g = viewholder1;
        a.c(viewholder);
        int i1 = viewholder.a.getLeft();
        int j1 = viewholder.a.getTop();
        int k1;
        int l1;
        if (viewholder1 == null || viewholder1.c())
        {
            k1 = j1;
            l1 = i1;
        } else
        {
            l1 = viewholder1.a.getLeft();
            k1 = viewholder1.a.getTop();
            viewholder1.a(false);
            viewholder1.h = viewholder;
        }
        if (e.a(viewholder, viewholder1, i1, j1, l1, k1))
        {
            w();
        }
    }

    static void a(RecyclerView recyclerview, int i1)
    {
        recyclerview.detachViewFromParent(i1);
    }

    static void a(RecyclerView recyclerview, int i1, int j1)
    {
        recyclerview.i(i1, j1);
    }

    static void a(RecyclerView recyclerview, int i1, int j1, int k1, int l1)
    {
        recyclerview.onScrollChanged(i1, j1, k1, l1);
    }

    static void a(RecyclerView recyclerview, View view)
    {
        recyclerview.i(view);
    }

    static void a(RecyclerView recyclerview, View view, int i1, android.view.ViewGroup.LayoutParams layoutparams)
    {
        recyclerview.attachViewToParent(view, i1, layoutparams);
    }

    static boolean a(RecyclerView recyclerview)
    {
        return recyclerview.w;
    }

    static boolean a(RecyclerView recyclerview, boolean flag)
    {
        recyclerview.V = flag;
        return flag;
    }

    private boolean a(MotionEvent motionevent)
    {
        int i1 = motionevent.getAction();
        if (i1 == 3 || i1 == 0)
        {
            t = null;
        }
        int j1 = s.size();
        for (int k1 = 0; k1 < j1; k1++)
        {
            OnItemTouchListener onitemtouchlistener = (OnItemTouchListener)s.get(k1);
            if (onitemtouchlistener.a(this, motionevent) && i1 != 3)
            {
                t = onitemtouchlistener;
                return true;
            }
        }

        return false;
    }

    static ViewHolder b(View view)
    {
        if (view == null)
        {
            return null;
        } else
        {
            return ((LayoutParams)view.getLayoutParams()).a;
        }
    }

    private void b(ViewHolder viewholder)
    {
        View view = viewholder.a;
        boolean flag;
        if (view.getParent() == this)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a.c(a(view));
        if (viewholder.q())
        {
            c.a(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!flag)
        {
            c.a(view, true);
            return;
        } else
        {
            c.d(view);
            return;
        }
    }

    static void b(RecyclerView recyclerview, int i1)
    {
        recyclerview.setScrollState(i1);
    }

    static void b(RecyclerView recyclerview, int i1, int j1)
    {
        recyclerview.setMeasuredDimension(i1, j1);
    }

    static void b(RecyclerView recyclerview, View view)
    {
        recyclerview.h(view);
    }

    static boolean b(RecyclerView recyclerview)
    {
        return recyclerview.C;
    }

    static boolean b(RecyclerView recyclerview, boolean flag)
    {
        recyclerview.D = flag;
        return flag;
    }

    private boolean b(MotionEvent motionevent)
    {
        int i1 = motionevent.getAction();
        if (t == null) goto _L2; else goto _L1
_L1:
        if (i1 != 0) goto _L4; else goto _L3
_L3:
        t = null;
_L2:
        if (i1 == 0) goto _L6; else goto _L5
_L5:
        int j1;
        int k1;
        j1 = s.size();
        k1 = 0;
_L7:
        if (k1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        OnItemTouchListener onitemtouchlistener = (OnItemTouchListener)s.get(k1);
        if (onitemtouchlistener.a(this, motionevent))
        {
            t = onitemtouchlistener;
            return true;
        }
        k1++;
        continue; /* Loop/switch isn't completed */
_L4:
        t.b(this, motionevent);
        if (i1 == 3 || i1 == 1)
        {
            t = null;
        }
        return true;
        if (true) goto _L7; else goto _L6
_L6:
        return false;
    }

    static void c(RecyclerView recyclerview, View view)
    {
        recyclerview.k(view);
    }

    private void c(MotionEvent motionevent)
    {
        int i1 = MotionEventCompat.getActionIndex(motionevent);
        if (MotionEventCompat.getPointerId(motionevent, i1) == J)
        {
            int j1;
            int k1;
            int l1;
            if (i1 == 0)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            J = MotionEventCompat.getPointerId(motionevent, j1);
            k1 = (int)(0.5F + MotionEventCompat.getX(motionevent, j1));
            N = k1;
            L = k1;
            l1 = (int)(0.5F + MotionEventCompat.getY(motionevent, j1));
            O = l1;
            M = l1;
        }
    }

    static boolean c(RecyclerView recyclerview)
    {
        return recyclerview.y;
    }

    static boolean c(RecyclerView recyclerview, boolean flag)
    {
        recyclerview.C = flag;
        return flag;
    }

    static LayoutManager d(RecyclerView recyclerview)
    {
        return recyclerview.p;
    }

    static void d(RecyclerView recyclerview, View view)
    {
        recyclerview.j(view);
    }

    static boolean d(RecyclerView recyclerview, boolean flag)
    {
        recyclerview.z = flag;
        return flag;
    }

    static void e(RecyclerView recyclerview)
    {
        recyclerview.r();
    }

    static boolean e(RecyclerView recyclerview, View view)
    {
        return recyclerview.g(view);
    }

    static Adapter f(RecyclerView recyclerview)
    {
        return recyclerview.o;
    }

    static boolean g(RecyclerView recyclerview)
    {
        return recyclerview.v();
    }

    private boolean g(View view)
    {
        b();
        boolean flag = c.e(view);
        if (flag)
        {
            ViewHolder viewholder = b(view);
            a.c(viewholder);
            a.b(viewholder);
        }
        a(false);
        return flag;
    }

    static ArrayList h(RecyclerView recyclerview)
    {
        return recyclerview.r;
    }

    private void h(int i1, int j1)
    {
        if (i1 < 0)
        {
            d();
            E.onPull((float)(-i1) / (float)getWidth());
        } else
        if (i1 > 0)
        {
            e();
            G.onPull((float)i1 / (float)getWidth());
        }
        if (j1 < 0)
        {
            f();
            F.onPull((float)(-j1) / (float)getHeight());
        } else
        if (j1 > 0)
        {
            g();
            H.onPull((float)j1 / (float)getHeight());
        }
        if (i1 != 0 || j1 != 0)
        {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private void h(View view)
    {
        if (o != null)
        {
            o.c(b(view));
        }
        e(view);
    }

    static OnScrollListener i(RecyclerView recyclerview)
    {
        return recyclerview.T;
    }

    private void i(int i1, int j1)
    {
        EdgeEffectCompat edgeeffectcompat = E;
        boolean flag = false;
        if (edgeeffectcompat != null)
        {
            boolean flag1 = E.isFinished();
            flag = false;
            if (!flag1)
            {
                flag = false;
                if (i1 > 0)
                {
                    flag = E.onRelease();
                }
            }
        }
        if (G != null && !G.isFinished() && i1 < 0)
        {
            flag |= G.onRelease();
        }
        if (F != null && !F.isFinished() && j1 > 0)
        {
            flag |= F.onRelease();
        }
        if (H != null && !H.isFinished() && j1 < 0)
        {
            flag |= H.onRelease();
        }
        if (flag)
        {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private void i(View view)
    {
        if (o != null)
        {
            o.b(b(view));
        }
        d(view);
    }

    private void j(View view)
    {
        d.remove(view);
    }

    static boolean j(RecyclerView recyclerview)
    {
        return recyclerview.awakenScrollBars();
    }

    private void k(View view)
    {
        if (!d.contains(view))
        {
            d.add(view);
        }
    }

    static boolean k(RecyclerView recyclerview)
    {
        return recyclerview.A;
    }

    static boolean l(RecyclerView recyclerview)
    {
        return recyclerview.v;
    }

    static boolean m(RecyclerView recyclerview)
    {
        return recyclerview.u;
    }

    static Runnable n(RecyclerView recyclerview)
    {
        return recyclerview.m;
    }

    static AccessibilityManager o(RecyclerView recyclerview)
    {
        return recyclerview.B;
    }

    static Interpolator o()
    {
        return ab;
    }

    static RecyclerViewAccessibilityDelegate p(RecyclerView recyclerview)
    {
        return recyclerview.W;
    }

    static boolean p()
    {
        return i;
    }

    static RecyclerListener q(RecyclerView recyclerview)
    {
        return recyclerview.q;
    }

    private void q()
    {
        c = new ChildHelper(new ChildHelper.Callback() {

            final RecyclerView a;

            public int a()
            {
                return a.getChildCount();
            }

            public int a(View view)
            {
                return a.indexOfChild(view);
            }

            public void a(int i1)
            {
                View view = a.getChildAt(i1);
                if (view != null)
                {
                    RecyclerView.b(a, view);
                }
                a.removeViewAt(i1);
            }

            public void a(View view, int i1)
            {
                a.addView(view, i1);
                RecyclerView.a(a, view);
            }

            public void a(View view, int i1, android.view.ViewGroup.LayoutParams layoutparams)
            {
                ViewHolder viewholder = RecyclerView.b(view);
                if (viewholder != null)
                {
                    if (!viewholder.q() && !viewholder.c())
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("Called attach on a child which is not detached: ").append(viewholder).toString());
                    }
                    viewholder.k();
                }
                RecyclerView.a(a, view, i1, layoutparams);
            }

            public ViewHolder b(View view)
            {
                return RecyclerView.b(view);
            }

            public View b(int i1)
            {
                return a.getChildAt(i1);
            }

            public void b()
            {
                int i1 = a();
                for (int j1 = 0; j1 < i1; j1++)
                {
                    RecyclerView.b(a, b(j1));
                }

                a.removeAllViews();
            }

            public void c(int i1)
            {
                View view = b(i1);
                if (view != null)
                {
                    ViewHolder viewholder = RecyclerView.b(view);
                    if (viewholder != null)
                    {
                        if (viewholder.q() && !viewholder.c())
                        {
                            throw new IllegalArgumentException((new StringBuilder()).append("called detach on an already detached child ").append(viewholder).toString());
                        }
                        viewholder.a(256);
                    }
                }
                RecyclerView.a(a, i1);
            }

            
            {
                a = RecyclerView.this;
                super();
            }
        });
    }

    private void r()
    {
        m.run();
    }

    static boolean r(RecyclerView recyclerview)
    {
        return recyclerview.D;
    }

    static ViewFlinger s(RecyclerView recyclerview)
    {
        return recyclerview.S;
    }

    private void s()
    {
        S.b();
        p.x();
    }

    private void setScrollState(int i1)
    {
        if (i1 == I)
        {
            return;
        }
        I = i1;
        if (i1 != 2)
        {
            s();
        }
        if (T != null)
        {
            T.a(this, i1);
        }
        p.j(i1);
    }

    private void t()
    {
        EdgeEffectCompat edgeeffectcompat = E;
        boolean flag = false;
        if (edgeeffectcompat != null)
        {
            flag = E.onRelease();
        }
        if (F != null)
        {
            flag |= F.onRelease();
        }
        if (G != null)
        {
            flag |= G.onRelease();
        }
        if (H != null)
        {
            flag |= H.onRelease();
        }
        if (flag)
        {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private void u()
    {
        if (K != null)
        {
            K.clear();
        }
        t();
        setScrollState(0);
    }

    private boolean v()
    {
        return e != null && e.h();
    }

    private void w()
    {
        if (!V && u)
        {
            ViewCompat.postOnAnimation(this, aa);
            V = true;
        }
    }

    private boolean x()
    {
        return e != null && p.b();
    }

    private void y()
    {
        boolean flag = true;
        if (C)
        {
            b.a();
            n();
            p.a(this);
        }
        boolean flag1;
        State state;
        boolean flag2;
        State state1;
        if (e != null && p.b())
        {
            b.b();
        } else
        {
            b.e();
        }
        if (g && !h || g || h && v())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        state = f;
        if (w && e != null && (C || flag1 || LayoutManager.a(p)) && (!C || o.b()))
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        State.c(state, flag2);
        state1 = f;
        if (!State.b(f) || !flag1 || C || !x())
        {
            flag = false;
        }
        State.d(state1, flag);
    }

    long a(ViewHolder viewholder)
    {
        if (o.b())
        {
            return viewholder.e();
        } else
        {
            return (long)viewholder.b;
        }
    }

    ViewHolder a(int i1, boolean flag)
    {
        int j1 = c.c();
        for (int k1 = 0; k1 < j1; k1++)
        {
            ViewHolder viewholder = b(c.c(k1));
            if (viewholder != null && !viewholder.p() && (flag ? viewholder.b == i1 : viewholder.d() == i1))
            {
                return viewholder;
            }
        }

        return null;
    }

    public ViewHolder a(View view)
    {
        ViewParent viewparent = view.getParent();
        if (viewparent != null && viewparent != this)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("View ").append(view).append(" is not a direct child of ").append(this).toString());
        } else
        {
            return b(view);
        }
    }

    void a()
    {
        b = new AdapterHelper(new AdapterHelper.Callback() {

            final RecyclerView a;

            public ViewHolder a(int i1)
            {
                return a.a(i1, true);
            }

            public void a(int i1, int j1)
            {
                a.a(i1, j1, true);
                a.g = true;
                State.a(a.f, j1);
            }

            public void a(AdapterHelper.UpdateOp updateop)
            {
                c(updateop);
            }

            public void b(int i1, int j1)
            {
                a.a(i1, j1, false);
                a.g = true;
            }

            public void b(AdapterHelper.UpdateOp updateop)
            {
                c(updateop);
            }

            public void c(int i1, int j1)
            {
                a.g(i1, j1);
                a.h = true;
            }

            void c(AdapterHelper.UpdateOp updateop)
            {
                switch (updateop.a)
                {
                default:
                    return;

                case 0: // '\0'
                    RecyclerView.d(a).a(a, updateop.b, updateop.c);
                    return;

                case 1: // '\001'
                    RecyclerView.d(a).b(a, updateop.b, updateop.c);
                    return;

                case 2: // '\002'
                    RecyclerView.d(a).c(a, updateop.b, updateop.c);
                    return;

                case 3: // '\003'
                    RecyclerView.d(a).a(a, updateop.b, updateop.c, 1);
                    break;
                }
            }

            public void d(int i1, int j1)
            {
                a.f(i1, j1);
                a.g = true;
            }

            public void e(int i1, int j1)
            {
                a.e(i1, j1);
                a.g = true;
            }

            
            {
                a = RecyclerView.this;
                super();
            }
        });
    }

    public void a(int i1)
    {
        c();
        p.d(i1);
        awakenScrollBars();
    }

    void a(int i1, int j1)
    {
        r();
        int k1;
        int l1;
        int i2;
        int j2;
        if (o != null)
        {
            b();
            D = true;
            int k2;
            int l2;
            int i3;
            if (i1 != 0)
            {
                k2 = p.a(i1, a, f);
                j2 = i1 - k2;
            } else
            {
                k2 = 0;
                j2 = 0;
            }
            if (j1 != 0)
            {
                k1 = p.b(j1, a, f);
                l2 = j1 - k1;
            } else
            {
                k1 = 0;
                l2 = 0;
            }
            if (v())
            {
                int j3 = c.b();
                int k3 = 0;
                while (k3 < j3) 
                {
                    View view = c.b(k3);
                    ViewHolder viewholder = a(view);
                    if (viewholder == null || viewholder.h == null)
                    {
                        continue;
                    }
                    ViewHolder viewholder1 = viewholder.h;
                    View view1;
                    int l3;
                    int i4;
                    if (viewholder1 != null)
                    {
                        view1 = viewholder1.a;
                    } else
                    {
                        view1 = null;
                    }
                    if (view1 == null)
                    {
                        continue;
                    }
                    l3 = view.getLeft();
                    i4 = view.getTop();
                    if (l3 != view1.getLeft() || i4 != view1.getTop())
                    {
                        view1.layout(l3, i4, l3 + view1.getWidth(), i4 + view1.getHeight());
                    }
                    k3++;
                }
            }
            D = false;
            a(false);
            i3 = k2;
            i2 = l2;
            l1 = i3;
        } else
        {
            k1 = 0;
            l1 = 0;
            i2 = 0;
            j2 = 0;
        }
        if (!r.isEmpty())
        {
            invalidate();
        }
        if (ViewCompat.getOverScrollMode(this) != 2)
        {
            i(i1, j1);
            h(j2, i2);
        }
        if (l1 != 0 || k1 != 0)
        {
            onScrollChanged(0, 0, 0, 0);
            if (T != null)
            {
                T.a(this, l1, k1);
            }
        }
        if (!awakenScrollBars())
        {
            invalidate();
        }
    }

    void a(int i1, int j1, boolean flag)
    {
        int k1 = i1 + j1;
        int l1 = c.c();
        int i2 = 0;
        while (i2 < l1) 
        {
            ViewHolder viewholder = b(c.c(i2));
            if (viewholder != null && !viewholder.c())
            {
                if (viewholder.b >= k1)
                {
                    viewholder.a(-j1, flag);
                    State.a(f, true);
                } else
                if (viewholder.b >= i1)
                {
                    viewholder.a(i1 - 1, -j1, flag);
                    State.a(f, true);
                }
            }
            i2++;
        }
        a.b(i1, j1, flag);
        requestLayout();
    }

    void a(String s1)
    {
        if (D)
        {
            if (s1 == null)
            {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
            } else
            {
                throw new IllegalStateException(s1);
            }
        } else
        {
            return;
        }
    }

    void a(boolean flag)
    {
        if (x)
        {
            if (flag && y && p != null && o != null)
            {
                i();
            }
            x = false;
            y = false;
        }
    }

    public void addFocusables(ArrayList arraylist, int i1, int j1)
    {
        if (!p.a(this, arraylist, i1, j1))
        {
            super.addFocusables(arraylist, i1, j1);
        }
    }

    void b()
    {
        if (!x)
        {
            x = true;
            y = false;
        }
    }

    public void b(int i1)
    {
        int j1 = c.b();
        for (int k1 = 0; k1 < j1; k1++)
        {
            c.b(k1).offsetTopAndBottom(i1);
        }

    }

    public void b(int i1, int j1)
    {
        if (i1 != 0 || j1 != 0)
        {
            S.b(i1, j1);
        }
    }

    public int c(View view)
    {
        ViewHolder viewholder = b(view);
        if (viewholder != null)
        {
            return viewholder.d();
        } else
        {
            return -1;
        }
    }

    public void c()
    {
        setScrollState(0);
        s();
    }

    public void c(int i1)
    {
        int j1 = c.b();
        for (int k1 = 0; k1 < j1; k1++)
        {
            c.b(k1).offsetLeftAndRight(i1);
        }

    }

    public boolean c(int i1, int j1)
    {
        boolean flag;
label0:
        {
            if (Math.abs(i1) < Q)
            {
                i1 = 0;
            }
            if (Math.abs(j1) < Q)
            {
                j1 = 0;
            }
            int k1 = Math.max(-R, Math.min(i1, R));
            int l1 = Math.max(-R, Math.min(j1, R));
            if (k1 == 0)
            {
                flag = false;
                if (l1 == 0)
                {
                    break label0;
                }
            }
            S.a(k1, l1);
            flag = true;
        }
        return flag;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof LayoutParams) && p.a((LayoutParams)layoutparams);
    }

    protected int computeHorizontalScrollExtent()
    {
        if (p.d())
        {
            return p.d(f);
        } else
        {
            return 0;
        }
    }

    protected int computeHorizontalScrollOffset()
    {
        if (p.d())
        {
            return p.b(f);
        } else
        {
            return 0;
        }
    }

    protected int computeHorizontalScrollRange()
    {
        if (p.d())
        {
            return p.f(f);
        } else
        {
            return 0;
        }
    }

    protected int computeVerticalScrollExtent()
    {
        if (p.e())
        {
            return p.e(f);
        } else
        {
            return 0;
        }
    }

    protected int computeVerticalScrollOffset()
    {
        if (p.e())
        {
            return p.c(f);
        } else
        {
            return 0;
        }
    }

    protected int computeVerticalScrollRange()
    {
        if (p.e())
        {
            return p.g(f);
        } else
        {
            return 0;
        }
    }

    void d()
    {
        if (E != null)
        {
            return;
        }
        E = new EdgeEffectCompat(getContext());
        if (l)
        {
            E.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
            return;
        } else
        {
            E.setSize(getMeasuredHeight(), getMeasuredWidth());
            return;
        }
    }

    void d(int i1, int j1)
    {
        if (i1 < 0)
        {
            d();
            E.onAbsorb(-i1);
        } else
        if (i1 > 0)
        {
            e();
            G.onAbsorb(i1);
        }
        if (j1 < 0)
        {
            f();
            F.onAbsorb(-j1);
        } else
        if (j1 > 0)
        {
            g();
            H.onAbsorb(j1);
        }
        if (i1 != 0 || j1 != 0)
        {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void d(View view)
    {
    }

    public void draw(Canvas canvas)
    {
        boolean flag = true;
        super.draw(canvas);
        int i1 = r.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            ((ItemDecoration)r.get(j1)).b(canvas, this, f);
        }

        boolean flag1;
        if (E != null && !E.isFinished())
        {
            int l2 = canvas.save();
            int k1;
            EdgeEffectCompat edgeeffectcompat;
            boolean flag2;
            boolean flag3;
            int l1;
            int i2;
            int k2;
            int i3;
            if (l)
            {
                i3 = getPaddingBottom();
            } else
            {
                i3 = 0;
            }
            canvas.rotate(270F);
            canvas.translate(i3 + -getHeight(), 0.0F);
            if (E != null && E.draw(canvas))
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            canvas.restoreToCount(l2);
        } else
        {
            flag1 = false;
        }
        if (F != null && !F.isFinished())
        {
            k2 = canvas.save();
            if (l)
            {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            boolean flag5;
            if (F != null && F.draw(canvas))
            {
                flag5 = flag;
            } else
            {
                flag5 = false;
            }
            flag1 |= flag5;
            canvas.restoreToCount(k2);
        }
        if (G != null && !G.isFinished())
        {
            l1 = canvas.save();
            i2 = getWidth();
            int j2;
            boolean flag4;
            if (l)
            {
                j2 = getPaddingTop();
            } else
            {
                j2 = 0;
            }
            canvas.rotate(90F);
            canvas.translate(-j2, -i2);
            if (G != null && G.draw(canvas))
            {
                flag4 = flag;
            } else
            {
                flag4 = false;
            }
            flag1 |= flag4;
            canvas.restoreToCount(l1);
        }
        if (H != null && !H.isFinished())
        {
            k1 = canvas.save();
            canvas.rotate(180F);
            if (l)
            {
                canvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
            } else
            {
                canvas.translate(-getWidth(), -getHeight());
            }
            edgeeffectcompat = H;
            flag2 = false;
            if (edgeeffectcompat != null)
            {
                flag3 = H.draw(canvas);
                flag2 = false;
                if (flag3)
                {
                    flag2 = flag;
                }
            }
            flag1 |= flag2;
            canvas.restoreToCount(k1);
        }
        if (flag1 || e == null || r.size() <= 0 || !e.b())
        {
            flag = flag1;
        }
        if (flag)
        {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    void e()
    {
        if (G != null)
        {
            return;
        }
        G = new EdgeEffectCompat(getContext());
        if (l)
        {
            G.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
            return;
        } else
        {
            G.setSize(getMeasuredHeight(), getMeasuredWidth());
            return;
        }
    }

    void e(int i1, int j1)
    {
        int k1 = c.c();
        byte byte0;
        int l1;
        int i2;
        int j2;
        if (i1 < j1)
        {
            byte0 = -1;
            l1 = j1;
            i2 = i1;
        } else
        {
            byte0 = 1;
            l1 = i1;
            i2 = j1;
        }
        j2 = 0;
        while (j2 < k1) 
        {
            ViewHolder viewholder = b(c.c(j2));
            if (viewholder != null && viewholder.b >= i2 && viewholder.b <= l1)
            {
                if (viewholder.b == i1)
                {
                    viewholder.a(j1 - i1, false);
                } else
                {
                    viewholder.a(byte0, false);
                }
                State.a(f, true);
            }
            j2++;
        }
        a.a(i1, j1);
        requestLayout();
    }

    public void e(View view)
    {
    }

    Rect f(View view)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (!layoutparams.c)
        {
            return layoutparams.b;
        }
        Rect rect = layoutparams.b;
        rect.set(0, 0, 0, 0);
        int i1 = r.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            n.set(0, 0, 0, 0);
            ((ItemDecoration)r.get(j1)).a(n, view, this, f);
            rect.left = rect.left + n.left;
            rect.top = rect.top + n.top;
            rect.right = rect.right + n.right;
            rect.bottom = rect.bottom + n.bottom;
        }

        layoutparams.c = false;
        return rect;
    }

    void f()
    {
        if (F != null)
        {
            return;
        }
        F = new EdgeEffectCompat(getContext());
        if (l)
        {
            F.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
            return;
        } else
        {
            F.setSize(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
    }

    void f(int i1, int j1)
    {
        int k1 = c.c();
        for (int l1 = 0; l1 < k1; l1++)
        {
            ViewHolder viewholder = b(c.c(l1));
            if (viewholder != null && !viewholder.c() && viewholder.b >= i1)
            {
                viewholder.a(j1, false);
                State.a(f, true);
            }
        }

        a.b(i1, j1);
        requestLayout();
    }

    public View focusSearch(View view, int i1)
    {
        View view1 = p.d(view, i1);
        if (view1 == null)
        {
            view1 = FocusFinder.getInstance().findNextFocus(this, view, i1);
            if (view1 == null && o != null)
            {
                b();
                view1 = p.a(view, i1, a, f);
                a(false);
            }
            if (view1 == null)
            {
                return super.focusSearch(view, i1);
            }
        }
        return view1;
    }

    void g()
    {
        if (H != null)
        {
            return;
        }
        H = new EdgeEffectCompat(getContext());
        if (l)
        {
            H.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
            return;
        } else
        {
            H.setSize(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
    }

    void g(int i1, int j1)
    {
        int k1 = c.c();
        int l1 = i1 + j1;
        int i2 = 0;
        do
        {
            if (i2 >= k1)
            {
                break;
            }
            View view = c.c(i2);
            ViewHolder viewholder = b(view);
            if (viewholder != null && !viewholder.c() && viewholder.b >= i1 && viewholder.b < l1)
            {
                viewholder.a(2);
                if (v())
                {
                    viewholder.a(64);
                }
                ((LayoutParams)view.getLayoutParams()).c = true;
            }
            i2++;
        } while (true);
        a.c(i1, j1);
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        if (p == null)
        {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        } else
        {
            return p.a();
        }
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        if (p == null)
        {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        } else
        {
            return p.a(getContext(), attributeset);
        }
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (p == null)
        {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        } else
        {
            return p.a(layoutparams);
        }
    }

    public Adapter getAdapter()
    {
        return o;
    }

    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate()
    {
        return W;
    }

    public ItemAnimator getItemAnimator()
    {
        return e;
    }

    public LayoutManager getLayoutManager()
    {
        return p;
    }

    public RecycledViewPool getRecycledViewPool()
    {
        return a.f();
    }

    public int getScrollState()
    {
        return I;
    }

    void h()
    {
        H = null;
        F = null;
        G = null;
        E = null;
    }

    void i()
    {
        if (o == null)
        {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        d.clear();
        b();
        D = true;
        y();
        State state = f;
        ArrayMap arraymap;
        if (State.b(f) && h && v())
        {
            arraymap = new ArrayMap();
        } else
        {
            arraymap = null;
        }
        state.c = arraymap;
        h = false;
        g = false;
        State.b(f, State.a(f));
        f.d = o.a();
        if (State.b(f))
        {
            f.a.clear();
            f.b.clear();
            int j5 = c.b();
            int k5 = 0;
            while (k5 < j5) 
            {
                ViewHolder viewholder7 = b(c.b(k5));
                if (!viewholder7.c() && (!viewholder7.l() || o.b()))
                {
                    View view2 = viewholder7.a;
                    f.a.put(viewholder7, new ItemHolderInfo(viewholder7, view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom()));
                }
                k5++;
            }
        }
        if (!State.a(f)) goto _L2; else goto _L1
_L1:
        ArrayMap arraymap3;
        int i4;
        k();
        if (f.c != null)
        {
            int k4 = c.b();
            for (int i5 = 0; i5 < k4; i5++)
            {
                ViewHolder viewholder6 = b(c.b(i5));
                if (viewholder6.n() && !viewholder6.p() && !viewholder6.c())
                {
                    long l6 = a(viewholder6);
                    f.c.put(Long.valueOf(l6), viewholder6);
                    f.a.remove(viewholder6);
                }
            }

        }
        boolean flag1 = State.c(f);
        State.a(f, false);
        p.c(a, f);
        State.a(f, flag1);
        arraymap3 = new ArrayMap();
        i4 = 0;
_L7:
        if (i4 >= c.b()) goto _L4; else goto _L3
_L3:
        View view1 = c.b(i4);
        if (!b(view1).c()) goto _L6; else goto _L5
_L5:
        i4++;
          goto _L7
_L6:
        int j4 = 0;
_L12:
        if (j4 >= f.a.size()) goto _L9; else goto _L8
_L8:
        if (((ViewHolder)f.a.keyAt(j4)).a != view1) goto _L11; else goto _L10
_L10:
        boolean flag2 = true;
_L16:
        if (!flag2)
        {
            arraymap3.put(view1, new Rect(view1.getLeft(), view1.getTop(), view1.getRight(), view1.getBottom()));
        }
          goto _L5
_L11:
        j4++;
          goto _L12
_L4:
        ArrayMap arraymap1;
        l();
        b.c();
        arraymap1 = arraymap3;
_L15:
        f.d = o.a();
        State.b(f, 0);
        State.b(f, false);
        p.c(a, f);
        State.a(f, false);
        k = null;
        State state1 = f;
        boolean flag;
        int i1;
        int j1;
        int j3;
        int k3;
        ViewHolder viewholder5;
        long l5;
        if (State.b(f) && e != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        State.c(state1, flag);
        if (State.b(f))
        {
            break MISSING_BLOCK_LABEL_707;
        }
          goto _L13
_L2:
        l();
        b.e();
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        long l3;
        ViewHolder viewholder;
        ViewHolder viewholder1;
        ItemHolderInfo itemholderinfo;
        ItemHolderInfo itemholderinfo1;
        int i3;
        ViewHolder viewholder2;
        ItemHolderInfo itemholderinfo2;
        Rect rect;
        ViewHolder viewholder3;
        ItemHolderInfo itemholderinfo3;
        View view;
        long l4;
        if (f.c != null)
        {
            j3 = c.b();
            for (k3 = 0; k3 < j3; k3++)
            {
                viewholder5 = b(c.b(k3));
                if (viewholder5.n() && !viewholder5.p() && !viewholder5.c())
                {
                    l5 = a(viewholder5);
                    f.c.put(Long.valueOf(l5), viewholder5);
                    f.a.remove(viewholder5);
                }
            }

        }
        arraymap1 = null;
        continue; /* Loop/switch isn't completed */
        ArrayMap arraymap2;
        {
            if (f.c != null)
            {
                arraymap2 = new ArrayMap();
            } else
            {
                arraymap2 = null;
            }
            i1 = c.b();
            j1 = 0;
            while (j1 < i1) 
            {
                ViewHolder viewholder4 = b(c.b(j1));
                if (!viewholder4.c())
                {
                    view = viewholder4.a;
                    l4 = a(viewholder4);
                    if (arraymap2 != null && f.c.get(Long.valueOf(l4)) != null)
                    {
                        arraymap2.put(Long.valueOf(l4), viewholder4);
                    } else
                    {
                        f.b.put(viewholder4, new ItemHolderInfo(viewholder4, view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
                    }
                }
                j1++;
            }
            a(arraymap1);
            for (k1 = -1 + f.a.size(); k1 >= 0; k1--)
            {
                viewholder3 = (ViewHolder)f.a.keyAt(k1);
                if (!f.b.containsKey(viewholder3))
                {
                    itemholderinfo3 = (ItemHolderInfo)f.a.valueAt(k1);
                    f.a.removeAt(k1);
                    itemholderinfo3.a.a;
                    a.c(itemholderinfo3.a);
                    a(itemholderinfo3);
                }
            }

            l1 = f.b.size();
            if (l1 > 0)
            {
                i3 = l1 - 1;
                while (i3 >= 0) 
                {
                    viewholder2 = (ViewHolder)f.b.keyAt(i3);
                    itemholderinfo2 = (ItemHolderInfo)f.b.valueAt(i3);
                    if (f.a.isEmpty() || !f.a.containsKey(viewholder2))
                    {
                        f.b.removeAt(i3);
                        if (arraymap1 != null)
                        {
                            rect = (Rect)arraymap1.get(viewholder2.a);
                        } else
                        {
                            rect = null;
                        }
                        a(viewholder2, rect, itemholderinfo2.b, itemholderinfo2.c);
                    }
                    i3--;
                }
            }
            i2 = f.b.size();
            for (j2 = 0; j2 < i2; j2++)
            {
                viewholder1 = (ViewHolder)f.b.keyAt(j2);
                itemholderinfo = (ItemHolderInfo)f.b.valueAt(j2);
                itemholderinfo1 = (ItemHolderInfo)f.a.get(viewholder1);
                if (itemholderinfo1 == null || itemholderinfo == null || itemholderinfo1.b == itemholderinfo.b && itemholderinfo1.c == itemholderinfo.c)
                {
                    continue;
                }
                viewholder1.a(false);
                if (e.a(viewholder1, itemholderinfo1.b, itemholderinfo1.c, itemholderinfo.b, itemholderinfo.c))
                {
                    w();
                }
            }

            if (f.c != null)
            {
                k2 = f.c.size();
            } else
            {
                k2 = 0;
            }
            l2 = k2 - 1;
        }
        if (l2 < 0)
        {
            break; /* Loop/switch isn't completed */
        }
        l3 = ((Long)f.c.keyAt(l2)).longValue();
        viewholder = (ViewHolder)f.c.get(Long.valueOf(l3));
        viewholder.a;
        if (!viewholder.c() && Recycler.a(a) != null && Recycler.a(a).contains(viewholder))
        {
            a(viewholder, (ViewHolder)arraymap2.get(Long.valueOf(l3)));
        }
        l2--;
        if (true) goto _L14; else goto _L13
_L14:
        break MISSING_BLOCK_LABEL_1465;
_L13:
        a(false);
        p.b(a);
        State.c(f, f.d);
        C = false;
        State.c(f, false);
        State.d(f, false);
        D = false;
        LayoutManager.a(p, false);
        if (Recycler.a(a) != null)
        {
            Recycler.a(a).clear();
        }
        f.c = null;
        return;
        if (true) goto _L15; else goto _L9
_L9:
        flag2 = false;
          goto _L16
    }

    void j()
    {
        int i1 = c.c();
        for (int j1 = 0; j1 < i1; j1++)
        {
            ((LayoutParams)c.c(j1).getLayoutParams()).c = true;
        }

        a.i();
    }

    void k()
    {
        int i1 = c.c();
        for (int j1 = 0; j1 < i1; j1++)
        {
            ViewHolder viewholder = b(c.c(j1));
            if (!viewholder.c())
            {
                viewholder.b();
            }
        }

    }

    void l()
    {
        int i1 = c.c();
        for (int j1 = 0; j1 < i1; j1++)
        {
            ViewHolder viewholder = b(c.c(j1));
            if (!viewholder.c())
            {
                viewholder.a();
            }
        }

        a.h();
    }

    void m()
    {
        int i1 = c.b();
        int j1 = 0;
        while (j1 < i1) 
        {
            ViewHolder viewholder = b(c.b(j1));
            if (viewholder != null && !viewholder.c())
            {
                if (viewholder.p() || viewholder.l())
                {
                    requestLayout();
                } else
                if (viewholder.m())
                {
                    int k1 = o.a(viewholder.b);
                    if (viewholder.f() == k1)
                    {
                        if (!viewholder.n() || !v())
                        {
                            o.b(viewholder, viewholder.b);
                        } else
                        {
                            requestLayout();
                        }
                    } else
                    {
                        viewholder.a(4);
                        requestLayout();
                    }
                }
            }
            j1++;
        }
    }

    void n()
    {
        int i1 = c.c();
        for (int j1 = 0; j1 < i1; j1++)
        {
            ViewHolder viewholder = b(c.c(j1));
            if (viewholder != null && !viewholder.c())
            {
                viewholder.a(6);
            }
        }

        j();
        a.g();
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        u = true;
        w = false;
        if (p != null)
        {
            p.c(this);
        }
        V = false;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (e != null)
        {
            e.c();
        }
        w = false;
        c();
        u = false;
        if (p != null)
        {
            p.a(this, a);
        }
        removeCallbacks(aa);
    }

    public void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        int i1 = r.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            ((ItemDecoration)r.get(j1)).a(canvas, this, f);
        }

    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        byte byte0 = -1;
        if (!a(motionevent)) goto _L2; else goto _L1
_L1:
        u();
_L11:
        return true;
_L2:
        boolean flag;
        boolean flag1;
        int i1;
        int j1;
        flag = p.d();
        flag1 = p.e();
        if (K == null)
        {
            K = VelocityTracker.obtain();
        }
        K.addMovement(motionevent);
        i1 = MotionEventCompat.getActionMasked(motionevent);
        j1 = MotionEventCompat.getActionIndex(motionevent);
        i1;
        JVM INSTR tableswitch 0 6: default 112
    //                   0 122
    //                   1 512
    //                   2 266
    //                   3 522
    //                   4 112
    //                   5 203
    //                   6 504;
           goto _L3 _L4 _L5 _L6 _L7 _L3 _L8 _L9
_L7:
        break MISSING_BLOCK_LABEL_522;
_L3:
        break; /* Loop/switch isn't completed */
_L4:
        break; /* Loop/switch isn't completed */
_L12:
        if (I != 1)
        {
            return false;
        }
        if (true) goto _L11; else goto _L10
_L10:
        J = MotionEventCompat.getPointerId(motionevent, 0);
        int j4 = (int)(0.5F + motionevent.getX());
        N = j4;
        L = j4;
        int k4 = (int)(0.5F + motionevent.getY());
        O = k4;
        M = k4;
        if (I == 2)
        {
            getParent().requestDisallowInterceptTouchEvent(true);
            setScrollState(1);
        }
          goto _L12
_L8:
        J = MotionEventCompat.getPointerId(motionevent, j1);
        int l3 = (int)(0.5F + MotionEventCompat.getX(motionevent, j1));
        N = l3;
        L = l3;
        int i4 = (int)(0.5F + MotionEventCompat.getY(motionevent, j1));
        O = i4;
        M = i4;
          goto _L12
_L6:
        int k1 = MotionEventCompat.findPointerIndex(motionevent, J);
        if (k1 < 0)
        {
            Log.e("RecyclerView", (new StringBuilder()).append("Error processing scroll; pointer index for id ").append(J).append(" not found. Did any MotionEvents get skipped?").toString());
            return false;
        }
        int l1 = (int)(0.5F + MotionEventCompat.getX(motionevent, k1));
        int i2 = (int)(0.5F + MotionEventCompat.getY(motionevent, k1));
        if (I != 1)
        {
            int j2 = l1 - L;
            int k2 = i2 - M;
            boolean flag2;
            if (flag && Math.abs(j2) > P)
            {
                int j3 = L;
                int k3 = P;
                int l2;
                int i3;
                byte byte1;
                if (j2 < 0)
                {
                    byte1 = byte0;
                } else
                {
                    byte1 = 1;
                }
                N = j3 + byte1 * k3;
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (flag1 && Math.abs(k2) > P)
            {
                l2 = M;
                i3 = P;
                if (k2 >= 0)
                {
                    byte0 = 1;
                }
                O = l2 + byte0 * i3;
                flag2 = true;
            }
            if (flag2)
            {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
        }
          goto _L12
_L9:
        c(motionevent);
          goto _L12
_L5:
        K.clear();
          goto _L12
        u();
          goto _L12
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        b();
        i();
        a(false);
        w = true;
    }

    protected void onMeasure(int i1, int j1)
    {
        if (z)
        {
            b();
            y();
            if (State.a(f))
            {
                State.b(f, true);
            } else
            {
                b.e();
                State.b(f, false);
            }
            z = false;
            a(false);
        }
        if (o != null)
        {
            f.d = o.a();
        } else
        {
            f.d = 0;
        }
        p.a(a, f, i1, j1);
        State.b(f, false);
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        k = (SavedState)parcelable;
        super.onRestoreInstanceState(k.getSuperState());
        if (p != null && k.a != null)
        {
            p.a(k.a);
        }
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        if (k != null)
        {
            SavedState.a(savedstate, k);
            return savedstate;
        }
        if (p != null)
        {
            savedstate.a = p.c();
            return savedstate;
        } else
        {
            savedstate.a = null;
            return savedstate;
        }
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        if (i1 != k1 || j1 != l1)
        {
            h();
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        byte byte0 = -1;
        if (b(motionevent))
        {
            u();
            return true;
        }
        boolean flag = p.d();
        boolean flag1 = p.e();
        if (K == null)
        {
            K = VelocityTracker.obtain();
        }
        K.addMovement(motionevent);
        int i1 = MotionEventCompat.getActionMasked(motionevent);
        int j1 = MotionEventCompat.getActionIndex(motionevent);
        switch (i1)
        {
        case 4: // '\004'
        default:
            return true;

        case 0: // '\0'
            J = MotionEventCompat.getPointerId(motionevent, 0);
            int j5 = (int)(0.5F + motionevent.getX());
            N = j5;
            L = j5;
            int k5 = (int)(0.5F + motionevent.getY());
            O = k5;
            M = k5;
            return true;

        case 5: // '\005'
            J = MotionEventCompat.getPointerId(motionevent, j1);
            int l4 = (int)(0.5F + MotionEventCompat.getX(motionevent, j1));
            N = l4;
            L = l4;
            int i5 = (int)(0.5F + MotionEventCompat.getY(motionevent, j1));
            O = i5;
            M = i5;
            return true;

        case 2: // '\002'
            int k1 = MotionEventCompat.findPointerIndex(motionevent, J);
            if (k1 < 0)
            {
                Log.e("RecyclerView", (new StringBuilder()).append("Error processing scroll; pointer index for id ").append(J).append(" not found. Did any MotionEvents get skipped?").toString());
                return false;
            }
            int l1 = (int)(0.5F + MotionEventCompat.getX(motionevent, k1));
            int i2 = (int)(0.5F + MotionEventCompat.getY(motionevent, k1));
            if (I != 1)
            {
                int j3 = l1 - L;
                int k3 = i2 - M;
                float f1;
                float f2;
                int l2;
                int i3;
                boolean flag2;
                if (flag && Math.abs(j3) > P)
                {
                    int j4 = L;
                    int k4 = P;
                    int j2;
                    int k2;
                    int l3;
                    int i4;
                    byte byte1;
                    if (j3 < 0)
                    {
                        byte1 = byte0;
                    } else
                    {
                        byte1 = 1;
                    }
                    N = j4 + byte1 * k4;
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                if (flag1 && Math.abs(k3) > P)
                {
                    l3 = M;
                    i4 = P;
                    if (k3 >= 0)
                    {
                        byte0 = 1;
                    }
                    O = l3 + byte0 * i4;
                    flag2 = true;
                }
                if (flag2)
                {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    setScrollState(1);
                }
            }
            if (I == 1)
            {
                j2 = l1 - N;
                k2 = i2 - O;
                if (flag)
                {
                    l2 = -j2;
                } else
                {
                    l2 = 0;
                }
                if (flag1)
                {
                    i3 = -k2;
                } else
                {
                    i3 = 0;
                }
                a(l2, i3);
            }
            N = l1;
            O = i2;
            return true;

        case 6: // '\006'
            c(motionevent);
            return true;

        case 1: // '\001'
            K.computeCurrentVelocity(1000, R);
            if (flag)
            {
                f1 = -VelocityTrackerCompat.getXVelocity(K, J);
            } else
            {
                f1 = 0.0F;
            }
            if (flag1)
            {
                f2 = -VelocityTrackerCompat.getYVelocity(K, J);
            } else
            {
                f2 = 0.0F;
            }
            if (f1 == 0.0F && f2 == 0.0F || !c((int)f1, (int)f2))
            {
                setScrollState(0);
            }
            K.clear();
            t();
            return true;

        case 3: // '\003'
            u();
            return true;
        }
    }

    protected void removeDetachedView(View view, boolean flag)
    {
        ViewHolder viewholder = b(view);
        if (viewholder != null)
        {
            if (viewholder.q())
            {
                viewholder.k();
            } else
            if (!viewholder.c())
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Called removeDetachedView with a view which is not flagged as tmp detached.").append(viewholder).toString());
            }
        }
        h(view);
        super.removeDetachedView(view, flag);
    }

    public void requestChildFocus(View view, View view1)
    {
        if (!p.a(this, f, view, view1) && view1 != null)
        {
            n.set(0, 0, view1.getWidth(), view1.getHeight());
            offsetDescendantRectToMyCoords(view1, n);
            offsetRectIntoDescendantCoords(view, n);
            Rect rect = n;
            boolean flag = w;
            boolean flag1 = false;
            if (!flag)
            {
                flag1 = true;
            }
            requestChildRectangleOnScreen(view, rect, flag1);
        }
        super.requestChildFocus(view, view1);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean flag)
    {
        return p.a(this, view, rect, flag);
    }

    public void requestLayout()
    {
        if (!x)
        {
            super.requestLayout();
            return;
        } else
        {
            y = true;
            return;
        }
    }

    public void scrollBy(int i1, int j1)
    {
        if (p == null)
        {
            throw new IllegalStateException("Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        }
        boolean flag = p.d();
        boolean flag1 = p.e();
        if (flag || flag1)
        {
            if (!flag)
            {
                i1 = 0;
            }
            if (!flag1)
            {
                j1 = 0;
            }
            a(i1, j1);
        }
    }

    public void scrollTo(int i1, int j1)
    {
        throw new UnsupportedOperationException("RecyclerView does not support scrolling to an absolute position.");
    }

    public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate recyclerviewaccessibilitydelegate)
    {
        W = recyclerviewaccessibilitydelegate;
        ViewCompat.setAccessibilityDelegate(this, W);
    }

    public void setAdapter(Adapter adapter)
    {
        a(adapter, false, true);
        requestLayout();
    }

    public void setClipToPadding(boolean flag)
    {
        if (flag != l)
        {
            h();
        }
        l = flag;
        super.setClipToPadding(flag);
        if (w)
        {
            requestLayout();
        }
    }

    public void setHasFixedSize(boolean flag)
    {
        v = flag;
    }

    public void setItemAnimator(ItemAnimator itemanimator)
    {
        if (e != null)
        {
            e.c();
            e.a(null);
        }
        e = itemanimator;
        if (e != null)
        {
            e.a(U);
        }
    }

    public void setItemViewCacheSize(int i1)
    {
        a.a(i1);
    }

    public void setLayoutManager(LayoutManager layoutmanager)
    {
        if (layoutmanager == p)
        {
            return;
        }
        if (p != null)
        {
            if (u)
            {
                p.a(this, a);
            }
            p.b(null);
        }
        a.a();
        c.a();
        p = layoutmanager;
        if (layoutmanager != null)
        {
            if (layoutmanager.q != null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("LayoutManager ").append(layoutmanager).append(" is already attached to a RecyclerView: ").append(layoutmanager.q).toString());
            }
            p.b(this);
            if (u)
            {
                p.c(this);
            }
        }
        requestLayout();
    }

    public void setOnScrollListener(OnScrollListener onscrolllistener)
    {
        T = onscrolllistener;
    }

    public void setRecycledViewPool(RecycledViewPool recycledviewpool)
    {
        a.a(recycledviewpool);
    }

    public void setRecyclerListener(RecyclerListener recyclerlistener)
    {
        q = recyclerlistener;
    }

    public void setScrollingTouchSlop(int i1)
    {
        ViewConfiguration viewconfiguration = ViewConfiguration.get(getContext());
        switch (i1)
        {
        default:
            Log.w("RecyclerView", (new StringBuilder()).append("setScrollingTouchSlop(): bad argument constant ").append(i1).append("; using default value").toString());
            // fall through

        case 0: // '\0'
            P = viewconfiguration.getScaledTouchSlop();
            return;

        case 1: // '\001'
            P = ViewConfigurationCompat.getScaledPagingTouchSlop(viewconfiguration);
            break;
        }
    }

    public void setViewCacheExtension(ViewCacheExtension viewcacheextension)
    {
        a.a(viewcacheextension);
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT == 19 || android.os.Build.VERSION.SDK_INT == 20)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = flag;
    }
}
