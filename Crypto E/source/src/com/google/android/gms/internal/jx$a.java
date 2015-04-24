// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.cloudsave.Entity;

// Referenced classes of package com.google.android.gms.internal:
//            jx

public static class ty
{

    private Entity OD;
    private Entity OL;
    private Entity OM;
    private IBinder PA;
    private int PB;
    private long PC;
    private long PD;
    private long PE;
    private com.google.android.gms.cloudsave.y.Key Pw;

    public static ty l(Intent intent)
    {
        ty ty = new <init>();
        ty.Pw = (com.google.android.gms.cloudsave.y.Key)intent.getParcelableExtra("entity_key");
        ty.OL = (Entity)intent.getParcelableExtra("new");
        ty.OD = (Entity)intent.getParcelableExtra("base");
        ty.OM = (Entity)intent.getParcelableExtra("accepted");
        ty.PA = intent.getExtras().getBinder("callback");
        ty.PB = intent.getIntExtra("calling_operation", -1);
        ty.PC = intent.getLongExtra("sessionId", -1L);
        ty.PD = intent.getLongExtra("major_version", 0L);
        ty.PE = intent.getLongExtra("minor_version", 0L);
        return ty;
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

    public Entity ig()
    {
        return OD;
    }

    public com.google.android.gms.cloudsave.y.Key ik()
    {
        return Pw;
    }

    public Entity iw()
    {
        return OM;
    }

    public Entity ix()
    {
        return OL;
    }

    public IBinder iy()
    {
        return PA;
    }

    public int iz()
    {
        return PB;
    }

    private ty()
    {
    }
}
