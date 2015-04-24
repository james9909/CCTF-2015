// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            oq

public class op
    implements SafeParcelable
{

    public static final oq CREATOR = new oq();
    final int DN;
    private final String aoM;
    private final String aoN;
    private final String mTag;

    op(int i, String s, String s1, String s2)
    {
        DN = i;
        aoM = s;
        mTag = s1;
        aoN = s2;
    }

    public int describeContents()
    {
        oq _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        op op1;
        if (obj instanceof op)
        {
            if (r.equal(aoM, (op1 = (op)obj).aoM) && r.equal(mTag, op1.mTag) && r.equal(aoN, op1.aoN))
            {
                return true;
            }
        }
        return false;
    }

    public String getSource()
    {
        return aoN;
    }

    public String getTag()
    {
        return mTag;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = aoM;
        aobj[1] = mTag;
        aobj[2] = aoN;
        return r.hashCode(aobj);
    }

    public String pF()
    {
        return aoM;
    }

    public String toString()
    {
        return r.k(this).a("mPlaceId", aoM).a("mTag", mTag).a("mSource", aoN).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        oq _tmp = CREATOR;
        oq.a(this, parcel, i);
    }

}
