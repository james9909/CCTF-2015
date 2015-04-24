// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView, RecyclerViewAccessibilityDelegate, ChildHelper, AdapterHelper

public final class f
{

    final ArrayList a = new ArrayList();
    final ArrayList b = new ArrayList();
    final RecyclerView c;
    private ArrayList d;
    private final List e;
    private int f;
    private iewPool g;
    private Extension h;

    static ArrayList a(f f1)
    {
        return f1.d;
    }

    private void a(ViewGroup viewgroup, boolean flag)
    {
        for (int j = -1 + viewgroup.getChildCount(); j >= 0; j--)
        {
            View view = viewgroup.getChildAt(j);
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
            int k = viewgroup.getVisibility();
            viewgroup.setVisibility(4);
            viewgroup.setVisibility(k);
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

    private void e(r r)
    {
        if (r.a instanceof ViewGroup)
        {
            a((ViewGroup)r.a, false);
        }
    }

    r a(int j, int k, boolean flag)
    {
        int l;
        int i1;
        int j1;
        l = 0;
        i1 = a.size();
        j1 = 0;
_L10:
        if (j1 >= i1) goto _L2; else goto _L1
_L1:
        r r1 = (r)a.get(j1);
        if (r1.i() || r1.d() != j || r1.l() || !android.support.v7.widget.r.l(c.f) && r1.p()) goto _L4; else goto _L3
_L3:
        if (k == -1 || r1.f() == k) goto _L6; else goto _L5
_L5:
        Log.e("RecyclerView", (new StringBuilder()).append("Scrap view for position ").append(j).append(" isn't dirty but has").append(" wrong view type! (found ").append(r1.f()).append(" but expected ").append(k).append(")").toString());
_L2:
        int k1;
        if (!flag)
        {
            View view = c.c.a(j, k);
            if (view != null)
            {
                c.e.c(c.a(view));
            }
        }
        k1 = b.size();
_L8:
        if (l >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        r r = (r)b.get(l);
        if (!r.l() && r.d() == j)
        {
            if (!flag)
            {
                b.remove(l);
            }
            return r;
        }
        l++;
        continue; /* Loop/switch isn't completed */
_L6:
        r1.a(32);
        return r1;
_L4:
        j1++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L8; else goto _L7
_L7:
        return null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    r a(long l, int j, boolean flag)
    {
        int k = -1 + a.size();
_L5:
        if (k < 0) goto _L2; else goto _L1
_L1:
        r r;
        r = (r)a.get(k);
        if (r.e() != l || r.i())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (j != r.f()) goto _L4; else goto _L3
_L3:
        r.a(32);
        if (r.p() && !c.f.c())
        {
            r.a(2, 14);
        }
_L8:
        return r;
_L4:
        if (!flag)
        {
            a.remove(k);
            c.removeDetachedView(r.a, false);
            b(r.a);
        }
        k--;
          goto _L5
_L2:
        int i1 = -1 + b.size();
_L9:
        if (i1 < 0) goto _L7; else goto _L6
_L6:
label0:
        {
            r = (r)b.get(i1);
            if (r.e() != l)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (j != r.f())
            {
                break label0;
            }
            if (!flag)
            {
                b.remove(i1);
                return r;
            }
        }
          goto _L8
        if (!flag)
        {
            d(i1);
        }
        i1--;
          goto _L9
_L7:
        return null;
          goto _L8
    }

    View a(int j, boolean flag)
    {
        boolean flag1 = true;
        if (j < 0 || j >= c.f.c())
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Invalid item position ").append(j).append("(").append(j).append("). Item count:").append(c.f.c()).toString());
        }
        r r;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        r r1;
        int k;
        boolean flag5;
        android.view. ;
        ams ams;
        int l;
        int i1;
        r r2;
        View view;
        if (c.f.c())
        {
            r r3 = f(j);
            boolean flag6;
            if (r3 != null)
            {
                flag6 = flag1;
            } else
            {
                flag6 = false;
            }
            flag2 = flag6;
            r = r3;
        } else
        {
            r = null;
            flag2 = false;
        }
        if (r != null) goto _L2; else goto _L1
_L1:
        r = a(j, -1, flag);
        if (r == null) goto _L2; else goto _L3
_L3:
        if (!a(r))
        {
            if (!flag)
            {
                r.a(4);
                if (r.g())
                {
                    c.removeDetachedView(r.a, false);
                    r.h();
                } else
                if (r.i())
                {
                    r.j();
                }
                b(r);
            }
            r = null;
            flag3 = flag2;
        } else
        {
            flag3 = flag1;
        }
_L9:
        if (r != null) goto _L5; else goto _L4
_L4:
        l = c.b.a(j);
        if (l < 0 || l >= RecyclerView.f(c).())
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Inconsistency detected. Invalid item position ").append(j).append("(offset:").append(l).append(").").append("state:").append(c.f.c()).toString());
        }
        i1 = RecyclerView.f(c).(l);
        if (RecyclerView.f(c).())
        {
            r = a(RecyclerView.f(c).(l), i1, flag);
            if (r != null)
            {
                r.b = l;
                flag3 = flag1;
            }
        }
        if (r == null && h != null)
        {
            view = h.a(this, j, i1);
            if (view != null)
            {
                r = c.a(view);
                if (r == null)
                {
                    throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                }
                if (r.c())
                {
                    throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                }
            }
        }
        if (r == null)
        {
            r = f().a(RecyclerView.f(c).(l));
            if (r != null)
            {
                r.r();
                if (RecyclerView.p())
                {
                    e(r);
                }
            }
        }
        if (r != null) goto _L5; else goto _L6
_L6:
        r2 = RecyclerView.f(c).(c, RecyclerView.f(c).(l));
        flag4 = flag3;
        r1 = r2;
_L7:
        if (c.f.c() && r1.o())
        {
            r1.f = j;
            flag5 = false;
        } else
        if (!r1.o() || r1.m() || r1.l())
        {
            k = c.b.a(j);
            RecyclerView.f(c).(r1, k);
            d(r1.a);
            if (c.f.c())
            {
                r1.f = j;
            }
            flag5 = flag1;
        } else
        {
            flag5 = false;
        }
         = r1.a.getLayoutParams();
        if ( == null)
        {
            ams = (ams)c.generateDefaultLayoutParams();
            r1.a.setLayoutParams(ams);
        } else
        if (!c.checkLayoutParams())
        {
            ams = (ams)c.generateLayoutParams();
            r1.a.setLayoutParams(ams);
        } else
        {
            ams = (ams);
        }
        ams.a = r1;
        if (!flag4 || !flag5)
        {
            flag1 = false;
        }
        ams.d = flag1;
        return r1.a;
_L5:
        flag4 = flag3;
        r1 = r;
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

    public void a(int j)
    {
        f = j;
        for (int k = -1 + b.size(); k >= 0 && b.size() > j; k--)
        {
            d(k);
        }

        for (; b.size() > j; b.remove(-1 + b.size())) { }
    }

    void a(int j, int k)
    {
        byte byte0;
        int l;
        int i1;
        int j1;
        int k1;
        if (j < k)
        {
            byte0 = -1;
            l = k;
            i1 = j;
        } else
        {
            byte0 = 1;
            l = j;
            i1 = k;
        }
        j1 = b.size();
        k1 = 0;
        while (k1 < j1) 
        {
            r r = (r)b.get(k1);
            if (r != null && r.b >= i1 && r.b <= l)
            {
                if (r.b == j)
                {
                    r.a(k - j, false);
                } else
                {
                    r.a(byte0, false);
                }
            }
            k1++;
        }
    }

    void a(r.a a1, r.a a2, boolean flag)
    {
        a();
        f().a(a1, a2, flag);
    }

    void a(iewPool iewpool)
    {
        if (g != null)
        {
            g.b();
        }
        g = iewpool;
        if (iewpool != null)
        {
            g.a(c.getAdapter());
        }
    }

    void a(Extension extension)
    {
        h = extension;
    }

    public void a(View view)
    {
        r r;
        r = RecyclerView.b(view);
        if (r.q())
        {
            c.removeDetachedView(view, false);
        }
        if (!r.g()) goto _L2; else goto _L1
_L1:
        r.h();
_L4:
        b(r);
        return;
_L2:
        if (r.i())
        {
            r.j();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    boolean a(r r)
    {
        if (!r.p())
        {
            if (r.b < 0 || r.b >= RecyclerView.f(c).())
            {
                throw new IndexOutOfBoundsException((new StringBuilder()).append("Inconsistency detected. Invalid view holder adapter position").append(r).toString());
            }
            if (!c.f.c() && RecyclerView.f(c).(r.b) != r.f())
            {
                return false;
            }
            if (RecyclerView.f(c).() && r.e() != RecyclerView.f(c).(r.b))
            {
                return false;
            }
        }
        return true;
    }

    public int b(int j)
    {
        if (j < 0 || j >= c.f.c())
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("invalid position ").append(j).append(". State ").append("item count is ").append(c.f.c()).toString());
        }
        if (!c.f.c())
        {
            return j;
        } else
        {
            return c.b.a(j);
        }
    }

    public List b()
    {
        return e;
    }

    void b(int j, int k)
    {
        int l = b.size();
        for (int i1 = 0; i1 < l; i1++)
        {
            r r = (r)b.get(i1);
            if (r != null && r.d() >= j)
            {
                r.a(k, true);
            }
        }

    }

    void b(int j, int k, boolean flag)
    {
        int l = j + k;
        int i1 = -1 + b.size();
        while (i1 >= 0) 
        {
            r r = (r)b.get(i1);
            if (r != null)
            {
                if (r.d() >= l)
                {
                    r.a(-k, flag);
                } else
                if (r.d() >= j && !d(i1))
                {
                    r.a(4);
                }
            }
            i1--;
        }
    }

    void b(r r)
    {
        boolean flag;
        flag = true;
        if (r.g() || r.a.getParent() != null)
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("Scrapped or attached views may not be recycled. isScrap:").append(r.g()).append(" isAttached:");
            if (r.a.getParent() == null)
            {
                flag = false;
            }
            throw new IllegalArgumentException(stringbuilder.append(flag).toString());
        }
        if (r.q())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Tmp detached view should be removed from RecyclerView before it can be recycled: ").append(r).toString());
        }
        if (r.c())
        {
            throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
        }
        if (!r.s()) goto _L2; else goto _L1
_L1:
        boolean flag1;
        boolean flag2;
        flag1 = r.l();
        flag2 = false;
        if (flag1) goto _L4; else goto _L3
_L3:
        if (android.support.v7.widget.r.l(c.f)) goto _L6; else goto _L5
_L5:
        boolean flag4;
        flag4 = r.p();
        flag2 = false;
        if (flag4) goto _L4; else goto _L6
_L6:
        boolean flag3;
        flag3 = r.n();
        flag2 = false;
        if (flag3) goto _L4; else goto _L7
_L7:
        if (b.size() != f || b.isEmpty()) goto _L9; else goto _L8
_L8:
        int l = 0;
_L12:
        if (l < b.size() && !d(l)) goto _L10; else goto _L9
_L9:
        int j = b.size();
        int k = f;
        flag2 = false;
        if (j < k)
        {
            b.add(r);
            flag2 = flag;
        }
_L4:
        if (!flag2)
        {
            f().a(r);
            d(r);
        }
_L2:
        c.f.c(r);
        return;
_L10:
        l++;
        if (true) goto _L12; else goto _L11
_L11:
    }

    void b(View view)
    {
        r r = RecyclerView.b(view);
        android.support.v7.widget.r.a(r, null);
        r.j();
        b(r);
    }

    public View c(int j)
    {
        return a(j, false);
    }

    void c()
    {
        for (int j = -1 + b.size(); j >= 0; j--)
        {
            d(j);
        }

        b.clear();
    }

    void c(int j, int k)
    {
        int l = j + k;
        int i1 = b.size();
        int j1 = 0;
        while (j1 < i1) 
        {
            r r = (r)b.get(j1);
            if (r != null)
            {
                int k1 = r.d();
                if (k1 >= j && k1 < l)
                {
                    r.a(2);
                }
            }
            j1++;
        }
    }

    void c(r r)
    {
        if (!r.n() || !RecyclerView.g(c) || d == null)
        {
            a.remove(r);
        } else
        {
            d.remove(r);
        }
        android.support.v7.widget.r.a(r, null);
        r.j();
    }

    void c(View view)
    {
        r r = RecyclerView.b(view);
        r.a(this);
        if (!r.n() || !RecyclerView.g(c))
        {
            if (r.l() && !r.p() && !RecyclerView.f(c).())
            {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
            } else
            {
                a.add(r);
                return;
            }
        }
        if (d == null)
        {
            d = new ArrayList();
        }
        d.add(r);
    }

    int d()
    {
        return a.size();
    }

    void d(r r)
    {
        if (RecyclerView.q(c) != null)
        {
            RecyclerView.q(c).a(r);
        }
        if (RecyclerView.f(c) != null)
        {
            RecyclerView.f(c).(r);
        }
        if (c.f != null)
        {
            c.f.c(r);
        }
    }

    boolean d(int j)
    {
        r r = (r)b.get(j);
        if (r.s())
        {
            f().a(r);
            d(r);
            b.remove(j);
            return true;
        } else
        {
            return false;
        }
    }

    View e(int j)
    {
        return ((r)a.get(j)).a;
    }

    void e()
    {
        a.clear();
    }

    iewPool f()
    {
        if (g == null)
        {
            g = new iewPool();
        }
        return g;
    }

    r f(int j)
    {
        int k;
        int l;
label0:
        {
            k = 0;
            if (d != null)
            {
                l = d.size();
                if (l != 0)
                {
                    break label0;
                }
            }
            return null;
        }
        for (int i1 = 0; i1 < l; i1++)
        {
            r r1 = (r)d.get(i1);
            if (!r1.i() && r1.d() == j)
            {
                r1.a(32);
                return r1;
            }
        }

        if (RecyclerView.f(c).())
        {
            int j1 = c.b.a(j);
            if (j1 > 0 && j1 < RecyclerView.f(c).())
            {
                long l1 = RecyclerView.f(c).(j1);
                for (; k < l; k++)
                {
                    r r = (r)d.get(k);
                    if (!r.i() && r.e() == l1)
                    {
                        r.a(32);
                        return r;
                    }
                }

            }
        }
        return null;
    }

    void g()
    {
        if (RecyclerView.f(c) != null && RecyclerView.f(c).())
        {
            int k = b.size();
            for (int l = 0; l < k; l++)
            {
                r r = (r)b.get(l);
                if (r != null)
                {
                    r.a(6);
                }
            }

        } else
        {
            for (int j = -1 + b.size(); j >= 0; j--)
            {
                if (!d(j))
                {
                    ((r)b.get(j)).a(6);
                }
            }

        }
    }

    void h()
    {
        int j = 0;
        int k = b.size();
        for (int l = 0; l < k; l++)
        {
            ((r)b.get(l)).a();
        }

        int i1 = a.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            ((r)a.get(j1)).a();
        }

        if (d != null)
        {
            for (int k1 = d.size(); j < k1; j++)
            {
                ((r)d.get(j)).a();
            }

        }
    }

    void i()
    {
        int j = b.size();
        for (int k = 0; k < j; k++)
        {
            ams ams = (ams)((r)b.get(k)).a.getLayoutParams();
            if (ams != null)
            {
                ams.c = true;
            }
        }

    }

    public r(RecyclerView recyclerview)
    {
        c = recyclerview;
        super();
        d = null;
        e = Collections.unmodifiableList(a);
        f = 2;
    }
}
