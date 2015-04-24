// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.location:
//            c

public final class LocationRequest
    implements SafeParcelable
{

    public static final c CREATOR = new c();
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
    public static final int PRIORITY_HIGH_ACCURACY = 100;
    public static final int PRIORITY_LOW_POWER = 104;
    public static final int PRIORITY_NO_POWER = 105;
    private final int DN;
    boolean adv;
    long anG;
    long anH;
    int anI;
    float anJ;
    long anK;
    long ant;
    int mPriority;

    public LocationRequest()
    {
        DN = 1;
        mPriority = 102;
        anG = 0x36ee80L;
        anH = 0x927c0L;
        adv = false;
        ant = 0x7fffffffffffffffL;
        anI = 0x7fffffff;
        anJ = 0.0F;
        anK = 0L;
    }

    LocationRequest(int i, int j, long l, long l1, boolean flag, 
            long l2, int k, float f, long l3)
    {
        DN = i;
        mPriority = j;
        anG = l;
        anH = l1;
        adv = flag;
        ant = l2;
        anI = k;
        anJ = f;
        anK = l3;
    }

    private static void a(float f)
    {
        if (f < 0.0F)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid displacement: ").append(f).toString());
        } else
        {
            return;
        }
    }

    public static LocationRequest create()
    {
        return new LocationRequest();
    }

    private static void fE(int i)
    {
        switch (i)
        {
        case 101: // 'e'
        case 103: // 'g'
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("invalid quality: ").append(i).toString());

        case 100: // 'd'
        case 102: // 'f'
        case 104: // 'h'
        case 105: // 'i'
            return;
        }
    }

    public static String fF(int i)
    {
        switch (i)
        {
        case 101: // 'e'
        case 103: // 'g'
        default:
            return "???";

        case 100: // 'd'
            return "PRIORITY_HIGH_ACCURACY";

        case 102: // 'f'
            return "PRIORITY_BALANCED_POWER_ACCURACY";

        case 104: // 'h'
            return "PRIORITY_LOW_POWER";

        case 105: // 'i'
            return "PRIORITY_NO_POWER";
        }
    }

    private static void w(long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid interval: ").append(l).toString());
        } else
        {
            return;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof LocationRequest))
            {
                return false;
            }
            LocationRequest locationrequest = (LocationRequest)obj;
            if (mPriority != locationrequest.mPriority || anG != locationrequest.anG || anH != locationrequest.anH || adv != locationrequest.adv || ant != locationrequest.ant || anI != locationrequest.anI || anJ != locationrequest.anJ)
            {
                return false;
            }
        }
        return true;
    }

    public long getExpirationTime()
    {
        return ant;
    }

    public long getFastestInterval()
    {
        return anH;
    }

    public long getInterval()
    {
        return anG;
    }

    public int getNumUpdates()
    {
        return anI;
    }

    public int getPriority()
    {
        return mPriority;
    }

    public float getSmallestDisplacement()
    {
        return anJ;
    }

    int getVersionCode()
    {
        return DN;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[7];
        aobj[0] = Integer.valueOf(mPriority);
        aobj[1] = Long.valueOf(anG);
        aobj[2] = Long.valueOf(anH);
        aobj[3] = Boolean.valueOf(adv);
        aobj[4] = Long.valueOf(ant);
        aobj[5] = Integer.valueOf(anI);
        aobj[6] = Float.valueOf(anJ);
        return r.hashCode(aobj);
    }

    public LocationRequest setExpirationDuration(long l)
    {
        long l1 = SystemClock.elapsedRealtime();
        if (l > 0x7fffffffffffffffL - l1)
        {
            ant = 0x7fffffffffffffffL;
        } else
        {
            ant = l1 + l;
        }
        if (ant < 0L)
        {
            ant = 0L;
        }
        return this;
    }

    public LocationRequest setExpirationTime(long l)
    {
        ant = l;
        if (ant < 0L)
        {
            ant = 0L;
        }
        return this;
    }

    public LocationRequest setFastestInterval(long l)
    {
        w(l);
        adv = true;
        anH = l;
        return this;
    }

    public LocationRequest setInterval(long l)
    {
        w(l);
        anG = l;
        if (!adv)
        {
            anH = (long)((double)anG / 6D);
        }
        return this;
    }

    public LocationRequest setNumUpdates(int i)
    {
        if (i <= 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid numUpdates: ").append(i).toString());
        } else
        {
            anI = i;
            return this;
        }
    }

    public LocationRequest setPriority(int i)
    {
        fE(i);
        mPriority = i;
        return this;
    }

    public LocationRequest setSmallestDisplacement(float f)
    {
        a(f);
        anJ = f;
        return this;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Request[").append(fF(mPriority));
        if (mPriority != 105)
        {
            stringbuilder.append(" requested=");
            stringbuilder.append((new StringBuilder()).append(anG).append("ms").toString());
        }
        stringbuilder.append(" fastest=");
        stringbuilder.append((new StringBuilder()).append(anH).append("ms").toString());
        if (ant != 0x7fffffffffffffffL)
        {
            long l = ant - SystemClock.elapsedRealtime();
            stringbuilder.append(" expireIn=");
            stringbuilder.append((new StringBuilder()).append(l).append("ms").toString());
        }
        if (anI != 0x7fffffff)
        {
            stringbuilder.append(" num=").append(anI);
        }
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        c.a(this, parcel, i);
    }

}
