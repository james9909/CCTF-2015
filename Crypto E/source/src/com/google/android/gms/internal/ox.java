// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            oy

public final class ox
    implements SafeParcelable
{

    public static final oy CREATOR = new oy();
    public static final ox arq;
    public static final ox arr;
    public static final Set ars;
    final int DN;
    final int art;
    final String we;

    ox(int i, String s1, int j)
    {
        s.bi(s1);
        DN = i;
        we = s1;
        art = j;
    }

    private static ox B(String s1, int i)
    {
        return new ox(0, s1, i);
    }

    public int describeContents()
    {
        oy _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ox))
            {
                return false;
            }
            ox ox1 = (ox)obj;
            if (!we.equals(ox1.we) || art != ox1.art)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return we.hashCode();
    }

    public String toString()
    {
        return we;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        oy _tmp = CREATOR;
        oy.a(this, parcel, i);
    }

    static 
    {
        arq = B("test_type", 1);
        arr = B("labeled_place", 6);
        ox aox[] = new ox[2];
        aox[0] = arq;
        aox[1] = arr;
        ars = Collections.unmodifiableSet(new HashSet(Arrays.asList(aox)));
    }
}
