// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            bo, bn

public class bp
{

    Collection pr;
    Collection ps;

    public bp()
    {
        pr = new ArrayList();
        ps = new ArrayList();
    }

    public void a(bn bn)
    {
        pr.add(bn);
    }

    public void a(bo bo1)
    {
        ps.add(bo1);
    }

    public List bF()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = ps.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)((bo)iterator.next()).get();
            if (s != null)
            {
                arraylist.add(s);
            }
        } while (true);
        return arraylist;
    }
}
