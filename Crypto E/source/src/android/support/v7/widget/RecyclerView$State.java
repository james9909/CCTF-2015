// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v4.util.ArrayMap;
import android.util.SparseArray;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static class l
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

    static int a(l l1, int i1)
    {
        int j1 = i1 + l1.h;
        l1.h = j1;
        return j1;
    }

    private void a(ArrayMap arraymap, lder lder)
    {
        int i1 = -1 + arraymap.size();
        do
        {
label0:
            {
                if (i1 >= 0)
                {
                    if (lder != arraymap.valueAt(i1))
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

    static boolean a(lder lder)
    {
        return lder.l;
    }

    static boolean a(l l1, boolean flag)
    {
        l1.i = flag;
        return flag;
    }

    static int b(i i1, int j1)
    {
        i1.h = j1;
        return j1;
    }

    static boolean b(h h1)
    {
        return h1.k;
    }

    static boolean b(k k1, boolean flag)
    {
        k1.j = flag;
        return flag;
    }

    static int c(j j1, int i1)
    {
        j1.g = i1;
        return i1;
    }

    static boolean c(g g1)
    {
        return g1.i;
    }

    static boolean c(i i1, boolean flag)
    {
        i1.k = flag;
        return flag;
    }

    static int d(k k1, int i1)
    {
        k1.e = i1;
        return i1;
    }

    static boolean d(e e1)
    {
        return e1.j;
    }

    static boolean d(j j1, boolean flag)
    {
        j1.l = flag;
        return flag;
    }

    public void a(lder lder)
    {
        a.remove(lder);
        b.remove(lder);
        if (c != null)
        {
            a(c, lder);
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

    public lder()
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
