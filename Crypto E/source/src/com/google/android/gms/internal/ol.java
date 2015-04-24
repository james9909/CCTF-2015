// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            om, on

public final class ol
    implements SafeParcelable
{

    public static final om CREATOR = new om();
    private final int DN;
    private final int ans;
    private final int aoE;
    private final on aoF;

    ol(int i, int j, int k, on on1)
    {
        DN = i;
        ans = j;
        aoE = k;
        aoF = on1;
    }

    public int describeContents()
    {
        om _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ol))
            {
                return false;
            }
            ol ol1 = (ol)obj;
            if (ans != ol1.ans || aoE != ol1.aoE || !aoF.equals(ol1.aoF))
            {
                return false;
            }
        }
        return true;
    }

    public int getVersionCode()
    {
        return DN;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(ans);
        aobj[1] = Integer.valueOf(aoE);
        return r.hashCode(aobj);
    }

    public int pB()
    {
        return aoE;
    }

    public on pC()
    {
        return aoF;
    }

    public int py()
    {
        return ans;
    }

    public String toString()
    {
        return r.k(this).a("transitionTypes", Integer.valueOf(ans)).a("loiteringTimeMillis", Integer.valueOf(aoE)).a("placeFilter", aoF).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        om _tmp = CREATOR;
        om.a(this, parcel, i);
    }

}
