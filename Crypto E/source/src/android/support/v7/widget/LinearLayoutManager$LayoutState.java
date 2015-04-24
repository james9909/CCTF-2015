// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            LinearLayoutManager

static class j
{

    boolean a;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;
    boolean i;
    List j;

    private View a()
    {
        int k;
        int l;
        int i1;
        Object obj;
        k = j.size();
        l = 0x7fffffff;
        i1 = 0;
        obj = null;
_L2:
        j j1;
        int l1;
        j j2;
        if (i1 >= k)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        j1 = (j)j.get(i1);
        if (i || !j1.i())
        {
            break; /* Loop/switch isn't completed */
        }
        l1 = l;
        j2 = obj;
_L3:
        i1++;
        obj = j2;
        l = l1;
        if (true) goto _L2; else goto _L1
_L1:
        int k1;
label0:
        {
            k1 = (j1.i() - d) * e;
            if (k1 >= 0)
            {
                break label0;
            }
            l1 = l;
            j2 = obj;
        }
          goto _L3
        if (k1 >= l) goto _L5; else goto _L4
_L4:
        if (k1 != 0) goto _L7; else goto _L6
_L6:
        if (j1 != null)
        {
            d = j1.d() + e;
            return j1.e;
        } else
        {
            return null;
        }
_L7:
        j2 = j1;
        l1 = k1;
          goto _L3
_L5:
        l1 = l;
        j2 = obj;
          goto _L3
        j1 = obj;
          goto _L6
    }

    View a(e e1)
    {
        if (j != null)
        {
            return a();
        } else
        {
            View view = e1.a(d);
            d = d + e;
            return view;
        }
    }

    boolean a(e e1)
    {
        return d >= 0 && d < e1.d();
    }

    ()
    {
        a = true;
        h = 0;
        i = false;
        j = null;
    }
}
