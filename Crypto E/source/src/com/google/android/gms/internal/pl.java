// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.s;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            po, pk

public class pl
{
    public static class a
    {

        public final po auo;
        public final pk aup;
        public final ru.c auq;

        private a(po po1, pk pk1)
        {
            auo = (po)s.l(po1);
            aup = (pk)s.l(pk1);
            auq = null;
        }

    }


    private final ArrayList aum;
    private int aun;

    public pl()
    {
        this(100);
    }

    public pl(int i)
    {
        aum = new ArrayList();
        aun = i;
    }

    private void qy()
    {
        for (; getSize() > getCapacity(); aum.remove(0)) { }
    }

    public void a(po po, pk pk)
    {
        aum.add(new a(po, pk));
        qy();
    }

    public void clear()
    {
        aum.clear();
    }

    public int getCapacity()
    {
        return aun;
    }

    public int getSize()
    {
        return aum.size();
    }

    public boolean isEmpty()
    {
        return aum.isEmpty();
    }

    public ArrayList qx()
    {
        return aum;
    }
}
