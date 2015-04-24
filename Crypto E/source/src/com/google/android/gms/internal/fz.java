// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ga

public final class fz
    implements SafeParcelable
{

    public static final ga CREATOR = new ga();
    public final int errorCode;
    public final int orientation;
    public final List qX;
    public final List qY;
    public final long rb;
    public final String sT;
    public final boolean uS;
    public final String uX;
    public final long uY;
    public final boolean uZ;
    public final long va;
    public final List vb;
    public final String vc;
    public final long vd;
    public final String ve;
    public final int versionCode;
    public final boolean vf;
    public final String vg;
    public final String vh;
    public final boolean vi;
    public final boolean vj;
    public final boolean vk;
    public final boolean vl;

    public fz(int i)
    {
        this(11, null, null, null, i, null, -1L, false, -1L, null, -1L, -1, null, -1L, null, false, null, null, false, false, false, false, false);
    }

    public fz(int i, long l)
    {
        this(11, null, null, null, i, null, -1L, false, -1L, null, l, -1, null, -1L, null, false, null, null, false, false, false, false, false);
    }

    fz(int i, String s, String s1, List list, int j, List list1, long l, boolean flag, long l1, List list2, long l2, 
            int k, String s2, long l3, String s3, boolean flag1, String s4, 
            String s5, boolean flag2, boolean flag3, boolean flag4, boolean flag5, boolean flag6)
    {
        versionCode = i;
        sT = s;
        uX = s1;
        List list3;
        List list4;
        List list5;
        if (list != null)
        {
            list3 = Collections.unmodifiableList(list);
        } else
        {
            list3 = null;
        }
        qX = list3;
        errorCode = j;
        if (list1 != null)
        {
            list4 = Collections.unmodifiableList(list1);
        } else
        {
            list4 = null;
        }
        qY = list4;
        uY = l;
        uZ = flag;
        va = l1;
        if (list2 != null)
        {
            list5 = Collections.unmodifiableList(list2);
        } else
        {
            list5 = null;
        }
        vb = list5;
        rb = l2;
        orientation = k;
        vc = s2;
        vd = l3;
        ve = s3;
        vf = flag1;
        vg = s4;
        vh = s5;
        vi = flag2;
        vj = flag3;
        uS = flag4;
        vk = flag5;
        vl = flag6;
    }

    public fz(String s, String s1, List list, List list1, long l, boolean flag, 
            long l1, List list2, long l2, int i, String s2, 
            long l3, String s3, String s4, boolean flag1, boolean flag2, boolean flag3, 
            boolean flag4, boolean flag5)
    {
        this(11, s, s1, list, -2, list1, l, flag, l1, list2, l2, i, s2, l3, s3, false, null, s4, flag1, flag2, flag3, flag4, flag5);
    }

    public fz(String s, String s1, List list, List list1, long l, boolean flag, 
            long l1, List list2, long l2, int i, String s2, 
            long l3, String s3, boolean flag1, String s4, String s5, boolean flag2, 
            boolean flag3, boolean flag4, boolean flag5, boolean flag6)
    {
        this(11, s, s1, list, -2, list1, l, flag, l1, list2, l2, i, s2, l3, s3, flag1, s4, s5, flag2, flag3, flag4, flag5, flag6);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ga.a(this, parcel, i);
    }

}
