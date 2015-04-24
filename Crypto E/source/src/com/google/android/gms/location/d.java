// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.location:
//            e

public class d
    implements SafeParcelable
{

    public static final e CREATOR = new e();
    private final int DN;
    int anL;
    int anM;
    long anN;

    public d(int i, int j, int k, long l)
    {
        DN = i;
        anL = j;
        anM = k;
        anN = l;
    }

    private String fH(int i)
    {
        switch (i)
        {
        case 1: // '\001'
        default:
            return "STATUS_UNKNOWN";

        case 0: // '\0'
            return "STATUS_SUCCESSFUL";

        case 2: // '\002'
            return "STATUS_TIMED_OUT_ON_SCAN";

        case 3: // '\003'
            return "STATUS_NO_INFO_IN_DATABASE";

        case 4: // '\004'
            return "STATUS_INVALID_SCAN";

        case 5: // '\005'
            return "STATUS_UNABLE_TO_QUERY_DATABASE";

        case 6: // '\006'
            return "STATUS_SCANS_DISABLED_IN_SETTINGS";

        case 7: // '\007'
            return "STATUS_LOCATION_DISABLED_IN_SETTINGS";

        case 8: // '\b'
            return "STATUS_IN_PROGRESS";
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        d d1;
        if (obj instanceof d)
        {
            if (anL == (d1 = (d)obj).anL && anM == d1.anM && anN == d1.anN)
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
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(anL);
        aobj[1] = Integer.valueOf(anM);
        aobj[2] = Long.valueOf(anN);
        return r.hashCode(aobj);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("LocationStatus[cell status: ").append(fH(anL));
        stringbuilder.append(", wifi status: ").append(fH(anM));
        stringbuilder.append(", elapsed realtime ns: ").append(anN);
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        e.a(this, parcel, i);
    }

}
