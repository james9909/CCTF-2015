// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static class c
{

    private SparseArray a;
    private SparseIntArray b;
    private int c;

    private ArrayList b(int i)
    {
        ArrayList arraylist = (ArrayList)a.get(i);
        if (arraylist == null)
        {
            arraylist = new ArrayList();
            a.put(i, arraylist);
            if (b.indexOfKey(i) < 0)
            {
                b.put(i, 5);
            }
        }
        return arraylist;
    }

    public b a(int i)
    {
        ArrayList arraylist = (ArrayList)a.get(i);
        if (arraylist != null && !arraylist.isEmpty())
        {
            int j = -1 + arraylist.size();
            b b1 = (a)arraylist.get(j);
            arraylist.remove(j);
            return b1;
        } else
        {
            return null;
        }
    }

    public void a()
    {
        a.clear();
    }

    void a(a a1)
    {
        c = 1 + c;
    }

    void a(c c1, c c2, boolean flag)
    {
        if (c1 != null)
        {
            b();
        }
        if (!flag && c == 0)
        {
            a();
        }
        if (c2 != null)
        {
            a(c2);
        }
    }

    public void a(a a1)
    {
        int i = a1.a();
        ArrayList arraylist = b(i);
        if (b.get(i) <= arraylist.size())
        {
            return;
        } else
        {
            a1.b();
            arraylist.add(a1);
            return;
        }
    }

    void b()
    {
        c = -1 + c;
    }

    public ()
    {
        a = new SparseArray();
        b = new SparseIntArray();
        c = 0;
    }
}
