// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            ChildHelper, RecyclerView

public static abstract class a
{

    private boolean a;
    ChildHelper p;
    RecyclerView q;
     r;

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
        return android.view.eSpec(k1, l1);
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

    static void a( ,  1)
    {
        .a(1);
    }

    private void a( , int i1, View view)
    {
         1 = RecyclerView.b(view);
        if (1.())
        {
            return;
        }
        if (1.() && !1.() && !1.() && !RecyclerView.f(q).q())
        {
            e(i1);
            .e(1);
            return;
        } else
        {
            f(i1);
            .f(view);
            return;
        }
    }

    private void a( )
    {
        if (r == )
        {
            r = null;
        }
    }

    private void a(View view, int i1, boolean flag)
    {
        r r1;
        r r2;
        r1 = RecyclerView.b(view);
        if (flag || r1.r())
        {
            RecyclerView.c(q, view);
        } else
        {
            RecyclerView.d(q, view);
        }
        r2 = (q)view.getLayoutParams();
        if (!r1.q() && !r1.q()) goto _L2; else goto _L1
_L1:
        if (r1.q())
        {
            r1.q();
        } else
        {
            r1.q();
        }
        p.a(view, i1, view.getLayoutParams(), false);
_L4:
        if (r2.)
        {
            r1..invalidate();
            r2. = false;
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
            r2. = true;
            if (r != null && r.g())
            {
                r.b(view);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static boolean a(.b b1)
    {
        return b1.a;
    }

    static boolean a(a a1, boolean flag)
    {
        a1.a = flag;
        return flag;
    }

    public int a(int i1, a a1, a a2)
    {
        return 0;
    }

    public int a(a a1, a a2)
    {
        while (q == null || RecyclerView.f(q) == null || !e()) 
        {
            return 1;
        }
        return RecyclerView.f(q).q();
    }

    public abstract q a();

    public q a(Context context, AttributeSet attributeset)
    {
        return new init>(context, attributeset);
    }

    public init> a(android.view.ayoutManager ayoutmanager)
    {
        if (ayoutmanager instanceof init>)
        {
            return new init>((init>)ayoutmanager);
        }
        if (ayoutmanager instanceof android.view.s)
        {
            return new init>((android.view.s)ayoutmanager);
        } else
        {
            return new init>(ayoutmanager);
        }
    }

    public View a(View view, int i1, init> init>, init> init>1)
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

    public void a(int i1, c c1)
    {
        View view = g(i1);
        e(i1);
        c1.e(view);
    }

    public void a(Parcelable parcelable)
    {
    }

    void a(AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
    {
        a(q.a, q.f, accessibilitynodeinfocompat);
    }

    public void a(deInfoCompat deinfocompat, deInfoCompat deinfocompat1)
    {
    }

    public void a(deInfoCompat deinfocompat)
    {
        for (int i1 = -1 + n(); i1 >= 0; i1--)
        {
            a(deinfocompat, i1, g(i1));
        }

    }

    public void a(g g1, g g2, int i1, int j1)
    {
        int k1 = android.view.tate(i1);
        int l1 = android.view.tate(j1);
        int i2 = android.view.tate(i1);
        int j2 = android.view.tate(j1);
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

    public void a(deInfoCompat deinfocompat, deInfoCompat deinfocompat1, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
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
        accessibilitynodeinfocompat.setCollectionInfo(android.support.v4.view.accessibility..CollectionInfoCompat.obtain(a(deinfocompat, deinfocompat1), b(deinfocompat, deinfocompat1), e(deinfocompat, deinfocompat1), d(deinfocompat, deinfocompat1)));
    }

    public void a(deInfoCompat deinfocompat, deInfoCompat deinfocompat1, View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
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
        accessibilitynodeinfocompat.setCollectionItemInfo(android.support.v4.view.accessibility..CollectionItemInfoCompat.obtain(i1, 1, j1, 1, false, false));
    }

    public void a(InfoCompat.obtain obtain, InfoCompat.obtain obtain1, AccessibilityEvent accessibilityevent)
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
                accessibilityrecordcompat.setItemCount(RecyclerView.f(q).q());
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

    public void a(RecyclerView recyclerview, q q1)
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
        a a1 = (a)view.getLayoutParams();
        Rect rect = q.f(view);
        int k1 = i1 + (rect.left + rect.right);
        int l1 = j1 + (rect.top + rect.bottom);
        view.measure(a(o(), k1 + (q() + s() + a1.eftMargin + a1.ightMargin), a1.idth, d()), a(p(), l1 + (r() + t() + a1.opMargin + a1.ottomMargin), a1.eight, e()));
    }

    public void a(View view, int i1, int j1, int k1, int l1)
    {
        Rect rect = ((e)view.getLayoutParams()).;
        view.layout(i1 + rect.left, j1 + rect.top, k1 - rect.right, l1 - rect.bottom);
    }

    public void a(View view, int i1,  )
    {
         1 = RecyclerView.b(view);
        if (1.())
        {
            RecyclerView.c(q, view);
        } else
        {
            RecyclerView.d(q, view);
        }
        p.a(view, i1, , 1.p());
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
        deInfoCompat deinfocompat = RecyclerView.b(view);
        if (deinfocompat != null && !deinfocompat.deInfoCompat())
        {
            a(q.a, q.f, view, accessibilitynodeinfocompat);
        }
    }

    public void a(View view, deInfoCompat deinfocompat)
    {
        c(view);
        deinfocompat.c(view);
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

    public boolean a(q q1)
    {
        return q1 != null;
    }

    public boolean a(q q1, q q2, int i1, Bundle bundle)
    {
        if (q != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        i1;
        JVM INSTR lookupswitch 2: default 36
    //                   4096: 132
    //                   8192: 65;
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

    public boolean a(s s1, s s2, View view, int i1, Bundle bundle)
    {
        return false;
    }

    public boolean a(RecyclerView recyclerview, s s1, View view, View view1)
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

    public int b(int i1, q q1, q q2)
    {
        return 0;
    }

    public int b(q q1, q q2)
    {
        while (q == null || RecyclerView.f(q) == null || !d()) 
        {
            return 1;
        }
        return RecyclerView.f(q).q();
    }

    public int b(q q1)
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
        q q1;
        if (k1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        view = g(k1);
        q1 = RecyclerView.b(view);
          goto _L1
_L5:
        k1++;
        if (true) goto _L3; else goto _L2
_L1:
        if (q1 == null || q1.g() != i1 || q1.g() || !q.f.q() && q1.q()) goto _L5; else goto _L4
_L4:
        return view;
_L2:
        return null;
    }

    public void b(int i1, int j1)
    {
        RecyclerView.b(q, i1, j1);
    }

    void b(q q1)
    {
        int i1 = q1.q();
        int j1 = 0;
        while (j1 < i1) 
        {
            View view = q1.q(j1);
            q q2 = RecyclerView.b(view);
            if (!q2.q())
            {
                if (q2.q())
                {
                    q.removeDetachedView(view, false);
                }
                q1.View(view);
            }
            j1++;
        }
        q1.View();
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

    public int c(a a1)
    {
        return 0;
    }

    public Parcelable c()
    {
        return null;
    }

    public void c(a a1)
    {
        for (int i1 = -1 + n(); i1 >= 0; i1--)
        {
            if (!RecyclerView.b(g(i1)).g())
            {
                a(i1, a1);
            }
        }

    }

    public void c(a a1, a a2)
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
        a(view, i1, (a)view.getLayoutParams());
    }

    public int d(a a1, a a2)
    {
        return 0;
    }

    public int d(a a1)
    {
        return 0;
    }

    public int d(View view)
    {
        return ((a)view.getLayoutParams()).();
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

    public int e( )
    {
        return 0;
    }

    public int e(View view)
    {
        Rect rect = (()view.getLayoutParams()).;
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

    public boolean e(p p1, p p2)
    {
        return false;
    }

    public int f(p p1)
    {
        return 0;
    }

    public int f(View view)
    {
        Rect rect = ((p)view.getLayoutParams()).;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public void f(int i1)
    {
        a(i1, g(i1));
    }

    public int g(g g1)
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
        return ((l)view.getLayoutParams())..top;
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
        return ((q)view.getLayoutParams())..bottom;
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
        return ((q)view.getLayoutParams())..left;
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
        return ((p)view.getLayoutParams())..right;
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

    public deInfoCompat()
    {
        a = false;
    }
}
