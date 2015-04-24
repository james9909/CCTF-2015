// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.util.SparseIntArray;

// Referenced classes of package android.support.v7.widget:
//            GridLayoutManager

public static abstract class b
{

    final SparseIntArray a = new SparseIntArray();
    private boolean b;

    public abstract int a(int i);

    public int a(int i, int j)
    {
        int k = a(i);
        if (k != j) goto _L2; else goto _L1
_L1:
        return 0;
_L2:
        int l;
        int i1;
        if (!b || a.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        int i2 = b(i);
        if (i2 < 0)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        i1 = a.get(i2) + a(i2);
        l = i2 + 1;
_L8:
        int j1 = l;
_L4:
        int k1;
        int l1;
        if (j1 >= i)
        {
            continue; /* Loop/switch isn't completed */
        }
        k1 = a(j1);
        l1 = i1 + k1;
        if (l1 != j)
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = 0;
_L6:
        j1++;
        i1 = k1;
        if (true) goto _L4; else goto _L3
_L3:
        if (l1 > j) goto _L6; else goto _L5
_L5:
        k1 = l1;
          goto _L6
        if (i1 + k > j) goto _L1; else goto _L7
_L7:
        return i1;
        l = 0;
        i1 = 0;
          goto _L8
    }

    public void a()
    {
        a.clear();
    }

    int b(int i)
    {
        int j = 0;
        for (int k = -1 + a.size(); j <= k;)
        {
            int i1 = j + k >>> 1;
            if (a.keyAt(i1) < i)
            {
                j = i1 + 1;
            } else
            {
                k = i1 - 1;
            }
        }

        int l = j - 1;
        if (l >= 0 && l < a.size())
        {
            return a.keyAt(l);
        } else
        {
            return -1;
        }
    }

    int b(int i, int j)
    {
        int k;
        if (!b)
        {
            k = a(i, j);
        } else
        {
            k = a.get(i, -1);
            if (k == -1)
            {
                int l = a(i, j);
                a.put(i, l);
                return l;
            }
        }
        return k;
    }

    public int c(int i, int j)
    {
        int k = a(i);
        int l = 0;
        int i1 = 0;
        int j1 = 0;
        while (l < i) 
        {
            int k1 = a(l);
            int l1 = j1 + k1;
            if (l1 == j)
            {
                i1++;
                k1 = 0;
            } else
            if (l1 > j)
            {
                i1++;
            } else
            {
                k1 = l1;
            }
            l++;
            j1 = k1;
        }
        if (j1 + k > j)
        {
            i1++;
        }
        return i1;
    }

    public ()
    {
        b = false;
    }
}
