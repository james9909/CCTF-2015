// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ij

public class if
    implements android.os.Parcelable.Creator
{

    public if()
    {
    }

    static void a(id.b b1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1000, b1.DN);
        b.a(parcel, 1, b1.Eg, i, false);
        b.c(parcel, 2, b1.Eh, false);
        b.I(parcel, j);
    }

    public id.b[] Q(int i)
    {
        return new id.b[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return q(parcel);
    }

    public Object[] newArray(int i)
    {
        return Q(i);
    }

    public id.b q(Parcel parcel)
    {
        Object obj;
        int i;
        int j;
        Status status;
        obj = null;
        i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        j = 0;
        status = null;
_L6:
        int k;
        if (parcel.dataPosition() >= i)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
        com.google.android.gms.common.internal.safeparcel.a.bO(k);
        JVM INSTR lookupswitch 3: default 68
    //                   1: 125
    //                   2: 153
    //                   1000: 99;
           goto _L1 _L2 _L3 _L4
_L3:
        break MISSING_BLOCK_LABEL_153;
_L4:
        break; /* Loop/switch isn't completed */
_L1:
        Object obj1;
        Status status1;
        int l;
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        obj1 = obj;
        status1 = status;
        l = j;
_L7:
        j = l;
        status = status1;
        obj = obj1;
        if (true) goto _L6; else goto _L5
_L5:
        int i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        Object obj2 = obj;
        status1 = status;
        l = i1;
        obj1 = obj2;
          goto _L7
_L2:
        Status status2 = (Status)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Status.CREATOR);
        l = j;
        obj1 = obj;
        status1 = status2;
          goto _L7
        obj1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, ij.CREATOR);
        status1 = status;
        l = j;
          goto _L7
        if (parcel.dataPosition() != i)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
        } else
        {
            return new id.b(j, status, ((java.util.List) (obj)));
        }
    }
}
