// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

class ChildHelper
{
    static class Bucket
    {

        long a;
        Bucket b;

        private void b()
        {
            if (b == null)
            {
                b = new Bucket();
            }
        }

        void a()
        {
            a = 0L;
            if (b != null)
            {
                b.a();
            }
        }

        void a(int i)
        {
            if (i >= 64)
            {
                b();
                b.a(i - 64);
                return;
            } else
            {
                a = a | 1L << i;
                return;
            }
        }

        void a(int i, boolean flag)
        {
            if (i >= 64)
            {
                b();
                b.a(i - 64, flag);
            } else
            {
                boolean flag1;
                long l;
                if ((0x8000000000000000L & a) != 0L)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                l = (1L << i) - 1L;
                a = l & a | (a & ~l) << 1;
                if (flag)
                {
                    a(i);
                } else
                {
                    b(i);
                }
                if (flag1 || b != null)
                {
                    b();
                    b.a(0, flag1);
                    return;
                }
            }
        }

        void b(int i)
        {
            if (i >= 64)
            {
                if (b != null)
                {
                    b.b(i - 64);
                }
                return;
            } else
            {
                a = a & (-1L ^ 1L << i);
                return;
            }
        }

        boolean c(int i)
        {
            if (i >= 64)
            {
                b();
                return b.c(i - 64);
            }
            return (a & 1L << i) != 0L;
        }

        boolean d(int i)
        {
            boolean flag;
            if (i >= 64)
            {
                b();
                flag = b.d(i - 64);
            } else
            {
                long l = 1L << i;
                long l1;
                if ((l & a) != 0L)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                a = a & ~l;
                l1 = l - 1L;
                a = l1 & a | Long.rotateRight(a & ~l1, 1);
                if (b != null)
                {
                    if (b.c(0))
                    {
                        a(63);
                    }
                    b.d(0);
                    return flag;
                }
            }
            return flag;
        }

        int e(int i)
        {
            if (b == null)
            {
                if (i >= 64)
                {
                    return Long.bitCount(a);
                } else
                {
                    return Long.bitCount(a & (1L << i) - 1L);
                }
            }
            if (i < 64)
            {
                return Long.bitCount(a & (1L << i) - 1L);
            } else
            {
                return b.e(i - 64) + Long.bitCount(a);
            }
        }

        public String toString()
        {
            if (b == null)
            {
                return Long.toBinaryString(a);
            } else
            {
                return (new StringBuilder()).append(b.toString()).append("xx").append(Long.toBinaryString(a)).toString();
            }
        }

        Bucket()
        {
            a = 0L;
        }
    }

    static interface Callback
    {

        public abstract int a();

        public abstract int a(View view);

        public abstract void a(int i);

        public abstract void a(View view, int i);

        public abstract void a(View view, int i, android.view.ViewGroup.LayoutParams layoutparams);

        public abstract RecyclerView.ViewHolder b(View view);

        public abstract View b(int i);

        public abstract void b();

        public abstract void c(int i);
    }


    final Callback a;
    final Bucket b = new Bucket();
    final List c = new ArrayList();

    ChildHelper(Callback callback)
    {
        a = callback;
    }

    private int e(int i)
    {
        if (i >= 0) goto _L2; else goto _L1
_L1:
        int k = -1;
_L4:
        return k;
_L2:
        int j = a.a();
        k = i;
        do
        {
            if (k >= j)
            {
                break;
            }
            int l = i - (k - b.e(k));
            if (l == 0)
            {
                while (b.c(k)) 
                {
                    k++;
                }
                continue; /* Loop/switch isn't completed */
            }
            k += l;
        } while (true);
        return -1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    View a(int i, int j)
    {
        int k = c.size();
        for (int l = 0; l < k; l++)
        {
            View view = (View)c.get(l);
            RecyclerView.ViewHolder viewholder = a.b(view);
            if (viewholder.d() == i && !viewholder.l() && (j == -1 || viewholder.f() == j))
            {
                return view;
            }
        }

        return null;
    }

    void a()
    {
        a.b();
        b.a();
        c.clear();
    }

    void a(int i)
    {
        int j = e(i);
        View view = a.b(j);
        if (view != null)
        {
            a.a(j);
            if (b.d(j))
            {
                c.remove(view);
                return;
            }
        }
    }

    void a(View view)
    {
        int i = a.a(view);
        if (i >= 0)
        {
            a.a(i);
            if (b.d(i))
            {
                c.remove(view);
                return;
            }
        }
    }

    void a(View view, int i, android.view.ViewGroup.LayoutParams layoutparams, boolean flag)
    {
        int j;
        if (i < 0)
        {
            j = a.a();
        } else
        {
            j = e(i);
        }
        a.a(view, j, layoutparams);
        b.a(j, flag);
        if (flag)
        {
            c.add(view);
        }
    }

    void a(View view, int i, boolean flag)
    {
        int j;
        if (i < 0)
        {
            j = a.a();
        } else
        {
            j = e(i);
        }
        a.a(view, j);
        b.a(j, flag);
        if (flag)
        {
            c.add(view);
        }
    }

    void a(View view, boolean flag)
    {
        a(view, -1, flag);
    }

    int b()
    {
        return a.a() - c.size();
    }

    int b(View view)
    {
        int i;
        for (i = a.a(view); i == -1 || b.c(i);)
        {
            return -1;
        }

        return i - b.e(i);
    }

    View b(int i)
    {
        int j = e(i);
        return a.b(j);
    }

    int c()
    {
        return a.a();
    }

    View c(int i)
    {
        return a.b(i);
    }

    boolean c(View view)
    {
        return c.contains(view);
    }

    void d(int i)
    {
        int j = e(i);
        a.c(j);
        b.d(j);
    }

    void d(View view)
    {
        int i = a.a(view);
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("view is not a child, cannot hide ").append(view).toString());
        } else
        {
            b.a(i);
            c.add(view);
            return;
        }
    }

    boolean e(View view)
    {
        int i = a.a(view);
        if (i == -1)
        {
            if (!c.remove(view));
        } else
        if (b.c(i))
        {
            b.d(i);
            a.a(i);
            if (!c.remove(view))
            {
                return true;
            }
        } else
        {
            return false;
        }
        return true;
    }

    public String toString()
    {
        return (new StringBuilder()).append(b.toString()).append(", hidden list:").append(c.size()).toString();
    }
}
