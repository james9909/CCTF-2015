// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.internal:
//            os, on

public final class or
    implements SafeParcelable
{

    public static final os CREATOR = new os();
    public static final long aoO;
    final int DN;
    private final long anG;
    private final on aoP;
    private final int mPriority;

    public or(int i, on on, long l, int j)
    {
        DN = i;
        aoP = on;
        anG = l;
        mPriority = j;
    }

    public int describeContents()
    {
        os _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof or))
            {
                return false;
            }
            or or1 = (or)obj;
            if (!r.equal(aoP, or1.aoP) || anG != or1.anG || mPriority != or1.mPriority)
            {
                return false;
            }
        }
        return true;
    }

    public long getInterval()
    {
        return anG;
    }

    public int getPriority()
    {
        return mPriority;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = aoP;
        aobj[1] = Long.valueOf(anG);
        aobj[2] = Integer.valueOf(mPriority);
        return r.hashCode(aobj);
    }

    public on pC()
    {
        return aoP;
    }

    public String toString()
    {
        return r.k(this).a("filter", aoP).a("interval", Long.valueOf(anG)).a("priority", Integer.valueOf(mPriority)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        os _tmp = CREATOR;
        os.a(this, parcel, i);
    }

    static 
    {
        aoO = TimeUnit.HOURS.toMillis(1L);
    }
}
