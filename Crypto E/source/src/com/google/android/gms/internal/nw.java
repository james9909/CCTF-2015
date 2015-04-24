// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            nx

public class nw
    implements SafeParcelable
{

    public static final nx CREATOR = new nx();
    private final int DN;
    public final String packageName;
    public final int uid;

    nw(int i, int j, String s)
    {
        DN = i;
        uid = j;
        packageName = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        nw nw1;
        if (obj instanceof nw)
        {
            if ((nw1 = (nw)obj).uid == uid && r.equal(nw1.packageName, packageName))
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
        return uid;
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(uid);
        aobj[1] = packageName;
        return String.format("%d:%s", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        nx.a(this, parcel, i);
    }

}
