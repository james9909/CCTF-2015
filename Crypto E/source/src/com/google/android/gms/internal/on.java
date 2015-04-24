// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            oo

public final class on
    implements SafeParcelable
{

    public static final oo CREATOR = new oo();
    final int DN;
    final List aoC;
    private final Set aoD;
    private final String aoG;
    private final boolean aoH;
    final List aoI;
    final List aoJ;
    private final Set aoK;
    private final Set aoL;

    on(int i, List list, String s, boolean flag, List list1, List list2)
    {
        DN = i;
        List list3;
        List list4;
        List list5;
        if (list == null)
        {
            list3 = Collections.emptyList();
        } else
        {
            list3 = Collections.unmodifiableList(list);
        }
        aoC = list3;
        if (s == null)
        {
            s = "";
        }
        aoG = s;
        aoH = flag;
        if (list1 == null)
        {
            list4 = Collections.emptyList();
        } else
        {
            list4 = Collections.unmodifiableList(list1);
        }
        aoI = list4;
        if (list2 == null)
        {
            list5 = Collections.emptyList();
        } else
        {
            list5 = Collections.unmodifiableList(list2);
        }
        aoJ = list5;
        aoD = g(aoC);
        aoK = g(aoI);
        aoL = g(aoJ);
    }

    private static Set g(List list)
    {
        if (list.isEmpty())
        {
            return Collections.emptySet();
        } else
        {
            return Collections.unmodifiableSet(new HashSet(list));
        }
    }

    public int describeContents()
    {
        oo _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof on))
            {
                return false;
            }
            on on1 = (on)obj;
            if (!aoD.equals(on1.aoD) || aoH != on1.aoH || !aoK.equals(on1.aoK) || !aoL.equals(on1.aoL))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[4];
        aobj[0] = aoD;
        aobj[1] = Boolean.valueOf(aoH);
        aobj[2] = aoK;
        aobj[3] = aoL;
        return r.hashCode(aobj);
    }

    public String pD()
    {
        return aoG;
    }

    public boolean pE()
    {
        return aoH;
    }

    public String toString()
    {
        return r.k(this).a("types", aoD).a("placeIds", aoL).a("requireOpenNow", Boolean.valueOf(aoH)).a("requestedUserDataTypes", aoK).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        oo _tmp = CREATOR;
        oo.a(this, parcel, i);
    }

}
