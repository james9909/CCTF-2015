// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import com.google.android.gms.common.data.DataHolder;

// Referenced classes of package com.google.android.gms.common.api:
//            Releasable, Result, Status

public abstract class b
    implements Releasable, Result
{

    public final Status EI;
    protected final DataHolder Rb;

    public b(DataHolder dataholder)
    {
        EI = new Status(dataholder.getStatusCode());
        Rb = dataholder;
    }

    public Status getStatus()
    {
        return EI;
    }

    public void release()
    {
        if (Rb != null)
        {
            Rb.close();
        }
    }
}
