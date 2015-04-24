// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            jf, jd

public class je
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new jf();
    private final int DN;
    private double Mh;
    private boolean Mi;
    private int Nj;
    private int Nk;
    private ApplicationMetadata Nv;

    public je()
    {
        this(3, (0.0D / 0.0D), false, -1, null, -1);
    }

    je(int i, double d, boolean flag, int j, ApplicationMetadata applicationmetadata, int k)
    {
        DN = i;
        Mh = d;
        Mi = flag;
        Nj = j;
        Nv = applicationmetadata;
        Nk = k;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof je))
            {
                return false;
            }
            je je1 = (je)obj;
            if (Mh != je1.Mh || Mi != je1.Mi || Nj != je1.Nj || !jd.a(Nv, je1.Nv) || Nk != je1.Nk)
            {
                return false;
            }
        }
        return true;
    }

    public ApplicationMetadata getApplicationMetadata()
    {
        return Nv;
    }

    public int getVersionCode()
    {
        return DN;
    }

    public double hJ()
    {
        return Mh;
    }

    public boolean hR()
    {
        return Mi;
    }

    public int hS()
    {
        return Nj;
    }

    public int hT()
    {
        return Nk;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[5];
        aobj[0] = Double.valueOf(Mh);
        aobj[1] = Boolean.valueOf(Mi);
        aobj[2] = Integer.valueOf(Nj);
        aobj[3] = Nv;
        aobj[4] = Integer.valueOf(Nk);
        return r.hashCode(aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        jf.a(this, parcel, i);
    }

}
