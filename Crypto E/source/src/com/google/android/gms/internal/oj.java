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
//            ok

public class oj
    implements SafeParcelable
{

    public static final ok CREATOR = new ok();
    final int DN;
    final boolean aoB;
    final List aoC;
    private final Set aoD;

    oj(int i, boolean flag, List list)
    {
        DN = i;
        aoB = flag;
        List list1;
        if (list == null)
        {
            list1 = Collections.emptyList();
        } else
        {
            list1 = Collections.unmodifiableList(list);
        }
        aoC = list1;
        if (aoC.isEmpty())
        {
            aoD = Collections.emptySet();
            return;
        } else
        {
            aoD = Collections.unmodifiableSet(new HashSet(aoC));
            return;
        }
    }

    public int describeContents()
    {
        ok _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof oj))
            {
                return false;
            }
            oj oj1 = (oj)obj;
            if (!aoD.equals(oj1.aoD) || aoB != oj1.aoB)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = aoD;
        aobj[1] = Boolean.valueOf(aoB);
        return r.hashCode(aobj);
    }

    public boolean pA()
    {
        return aoB;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ok _tmp = CREATOR;
        ok.a(this, parcel, i);
    }

}
