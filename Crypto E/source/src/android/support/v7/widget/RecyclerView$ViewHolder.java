// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static abstract class a
{

    public final View a;
    int b;
    int c;
    long d;
    int e;
    int f;
    a g;
    a h;
    private int i;
    private int j;
    private a k;

    static int a(a a1)
    {
        return a1.i;
    }

    static i a(i i1, i j1)
    {
        i1.k = j1;
        return j1;
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
            ((s)a.getLayoutParams()).c = true;
        }
    }

    void a(s.c c1)
    {
        k = c1;
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
        k.k(this);
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

    public s(View view)
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
