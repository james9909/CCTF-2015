// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            of

public class oe
    implements SafeParcelable
{

    public static final of CREATOR = new of();
    static final List aov = Collections.emptyList();
    private final int DN;
    LocationRequest adt;
    boolean aow;
    boolean aox;
    boolean aoy;
    List aoz;
    final String mTag;

    oe(int i, LocationRequest locationrequest, boolean flag, boolean flag1, boolean flag2, List list, String s)
    {
        DN = i;
        adt = locationrequest;
        aow = flag;
        aox = flag1;
        aoy = flag2;
        aoz = list;
        mTag = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        oe oe1;
        if (obj instanceof oe)
        {
            if (r.equal(adt, (oe1 = (oe)obj).adt) && aow == oe1.aow && aox == oe1.aox && aoy == oe1.aoy && r.equal(aoz, oe1.aoz))
            {
                return true;
            }
        }
        return false;
    }

    int getVersionCode()
    {
        return DN;
    }

    public int hashCode()
    {
        return adt.hashCode();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(adt.toString());
        stringbuilder.append(" requestNlpDebugInfo=");
        stringbuilder.append(aow);
        stringbuilder.append(" restorePendingIntentListeners=");
        stringbuilder.append(aox);
        stringbuilder.append(" triggerUpdate=");
        stringbuilder.append(aoy);
        stringbuilder.append(" clients=");
        stringbuilder.append(aoz);
        if (mTag != null)
        {
            stringbuilder.append(" tag=");
            stringbuilder.append(mTag);
        }
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        of.a(this, parcel, i);
    }

}
