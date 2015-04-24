// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            hy

public class hx
    implements SafeParcelable
{

    public static final hy CREATOR = new hy();
    final int DN;
    final String DV;
    final String DW;
    final String DX;

    hx(int i, String s, String s1, String s2)
    {
        DN = i;
        DV = s;
        DW = s1;
        DX = s2;
    }

    public hx(String s, String s1, String s2)
    {
        this(1, s, s1, s2);
    }

    public int describeContents()
    {
        hy _tmp = CREATOR;
        return 0;
    }

    public String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = DV;
        aobj[1] = DW;
        aobj[2] = DX;
        return String.format("DocumentId[packageName=%s, corpusName=%s, uri=%s]", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        hy _tmp = CREATOR;
        hy.a(this, parcel, i);
    }

}
