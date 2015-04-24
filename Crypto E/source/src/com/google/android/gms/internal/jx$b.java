// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.IBinder;
import com.google.android.gms.cloudsave.Entity;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.e;

// Referenced classes of package com.google.android.gms.internal:
//            jx

public static class ty.Key
{

    private long PC;
    private long PD;
    private long PE;
    private Entity PF;
    private Entity PG;
    private int PH;
    private int PI;
    private IBinder PJ;
    private com.google.android.gms.cloudsave.y.Key Pw;

    public ty.Key a(ty.Key key)
    {
        Pw = key.ik();
        Entity entity = key.ix();
        if (entity != null)
        {
            entity.a(null);
            PF = entity.clone();
        }
        Entity entity1 = key.ig();
        if (entity1 != null)
        {
            entity1.a(null);
            if (PF != null)
            {
                PF.a(entity1.clone());
            }
        }
        PI = key.iz();
        PC = key.iA();
        PD = key.iB();
        PE = key.iC();
        PJ = key.iy();
        return this;
    }

    public iy bi(int i)
    {
        PH = i;
        return this;
    }

    public ty e(Entity entity)
    {
        PG = entity;
        return this;
    }

    public long iA()
    {
        return PC;
    }

    public long iB()
    {
        return PD;
    }

    public long iC()
    {
        return PE;
    }

    public DataHolder iD()
    {
        com.google.android.gms.common.data.older.a a1 = com.google.android.gms.common.data.e.jm();
        if (PF != null)
        {
            com.google.android.gms.common.data.e.a(a1, PF);
        }
        return a1.bD(0);
    }

    public DataHolder iE()
    {
        if (PG == null)
        {
            return null;
        } else
        {
            com.google.android.gms.common.data.older.a a1 = com.google.android.gms.common.data.e.jm();
            com.google.android.gms.common.data.e.a(a1, PG);
            return a1.bD(0);
        }
    }

    public int iF()
    {
        return PH;
    }

    public int iG()
    {
        return PI;
    }

    public IBinder iH()
    {
        return PJ;
    }

    public com.google.android.gms.cloudsave.y.Key ik()
    {
        return Pw;
    }

    public ty.Key()
    {
    }
}
