// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import com.google.android.gms.common.data.DataHolder;

public abstract class a
    implements d.b
{

    private final DataHolder Rb;

    protected a(DataHolder dataholder)
    {
        Rb = dataholder;
    }

    protected abstract void a(Object obj, DataHolder dataholder);

    public final void f(Object obj)
    {
        a(obj, Rb);
    }

    public void iW()
    {
        if (Rb != null)
        {
            Rb.close();
        }
    }
}
