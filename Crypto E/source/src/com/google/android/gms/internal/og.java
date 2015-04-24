// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.Geofence;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.internal:
//            oh

public class og
    implements SafeParcelable, Geofence
{

    public static final oh CREATOR = new oh();
    private final int DN;
    private final String agI;
    private final int ans;
    private final short anu;
    private final double anv;
    private final double anw;
    private final float anx;
    private final int any;
    private final int anz;
    private final long aoA;

    public og(int i, String s, int j, short word0, double d, double d1, float f, long l, int k, int i1)
    {
        ci(s);
        b(f);
        a(d, d1);
        int j1 = fN(j);
        DN = i;
        anu = word0;
        agI = s;
        anv = d;
        anw = d1;
        anx = f;
        aoA = l;
        ans = j1;
        any = k;
        anz = i1;
    }

    public og(String s, int i, short word0, double d, double d1, 
            float f, long l, int j, int k)
    {
        this(1, s, i, word0, d, d1, f, l, j, k);
    }

    private static void a(double d, double d1)
    {
        if (d > 90D || d < -90D)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid latitude: ").append(d).toString());
        }
        if (d1 > 180D || d1 < -180D)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid longitude: ").append(d1).toString());
        } else
        {
            return;
        }
    }

    private static void b(float f)
    {
        if (f <= 0.0F)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid radius: ").append(f).toString());
        } else
        {
            return;
        }
    }

    private static void ci(String s)
    {
        if (s == null || s.length() > 100)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("requestId is null or too long: ").append(s).toString());
        } else
        {
            return;
        }
    }

    private static int fN(int i)
    {
        int j = i & 7;
        if (j == 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No supported transition specified: ").append(i).toString());
        } else
        {
            return j;
        }
    }

    private static String fO(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 1: // '\001'
            return "CIRCLE";
        }
    }

    public static og h(byte abyte0[])
    {
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall(abyte0, 0, abyte0.length);
        parcel.setDataPosition(0);
        og og1 = CREATOR.dr(parcel);
        parcel.recycle();
        return og1;
    }

    public int describeContents()
    {
        oh _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (!(obj instanceof og))
            {
                return false;
            }
            og og1 = (og)obj;
            if (anx != og1.anx)
            {
                return false;
            }
            if (anv != og1.anv)
            {
                return false;
            }
            if (anw != og1.anw)
            {
                return false;
            }
            if (anu != og1.anu)
            {
                return false;
            }
        }
        return true;
    }

    public long getExpirationTime()
    {
        return aoA;
    }

    public double getLatitude()
    {
        return anv;
    }

    public double getLongitude()
    {
        return anw;
    }

    public int getNotificationResponsiveness()
    {
        return any;
    }

    public String getRequestId()
    {
        return agI;
    }

    public int getVersionCode()
    {
        return DN;
    }

    public int hashCode()
    {
        long l = Double.doubleToLongBits(anv);
        int i = 31 + (int)(l ^ l >>> 32);
        long l1 = Double.doubleToLongBits(anw);
        return 31 * (31 * (31 * (i * 31 + (int)(l1 ^ l1 >>> 32)) + Float.floatToIntBits(anx)) + anu) + ans;
    }

    public short pw()
    {
        return anu;
    }

    public float px()
    {
        return anx;
    }

    public int py()
    {
        return ans;
    }

    public int pz()
    {
        return anz;
    }

    public String toString()
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[9];
        aobj[0] = fO(anu);
        aobj[1] = agI;
        aobj[2] = Integer.valueOf(ans);
        aobj[3] = Double.valueOf(anv);
        aobj[4] = Double.valueOf(anw);
        aobj[5] = Float.valueOf(anx);
        aobj[6] = Integer.valueOf(any / 1000);
        aobj[7] = Integer.valueOf(anz);
        aobj[8] = Long.valueOf(aoA);
        return String.format(locale, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        oh _tmp = CREATOR;
        oh.a(this, parcel, i);
    }

}
