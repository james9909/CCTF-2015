// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import com.google.android.gms.common.data.DataHolder;

// Referenced classes of package com.google.android.gms.common.internal:
//            h

public abstract class Rb extends Rb
{

    private final DataHolder Rb;
    final h Uf;

    protected abstract void b(Object obj, DataHolder dataholder);

    protected final void j(Object obj)
    {
        b(obj, Rb);
    }

    protected void jH()
    {
        if (Rb != null)
        {
            Rb.close();
        }
    }

    public volatile void jI()
    {
        super.jI();
    }

    public volatile void jJ()
    {
        super.jJ();
    }

    public volatile void unregister()
    {
        super.unregister();
    }

    public er(h h1, Object obj, DataHolder dataholder)
    {
        Uf = h1;
        super(h1, obj);
        Rb = dataholder;
    }
}
