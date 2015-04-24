// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.plus.model.moments.ItemScope;
import com.google.android.gms.plus.model.moments.Moment;

// Referenced classes of package com.google.android.gms.internal:
//            py, pz

public final class qa extends d
    implements Moment
{

    private py aww;

    public qa(DataHolder dataholder, int i)
    {
        super(dataholder, i);
    }

    private py qS()
    {
        this;
        JVM INSTR monitorenter ;
        if (aww == null)
        {
            byte abyte0[] = getByteArray("momentImpl");
            Parcel parcel = Parcel.obtain();
            parcel.unmarshall(abyte0, 0, abyte0.length);
            parcel.setDataPosition(0);
            aww = py.CREATOR.ec(parcel);
            parcel.recycle();
        }
        this;
        JVM INSTR monitorexit ;
        return aww;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Object freeze()
    {
        return qR();
    }

    public String getId()
    {
        return qS().getId();
    }

    public ItemScope getResult()
    {
        return qS().getResult();
    }

    public String getStartDate()
    {
        return qS().getStartDate();
    }

    public ItemScope getTarget()
    {
        return qS().getTarget();
    }

    public String getType()
    {
        return qS().getType();
    }

    public boolean hasId()
    {
        return qS().hasId();
    }

    public boolean hasResult()
    {
        return qS().hasResult();
    }

    public boolean hasStartDate()
    {
        return qS().hasStartDate();
    }

    public boolean hasTarget()
    {
        return qS().hasTarget();
    }

    public boolean hasType()
    {
        return qS().hasType();
    }

    public py qR()
    {
        return qS();
    }
}
