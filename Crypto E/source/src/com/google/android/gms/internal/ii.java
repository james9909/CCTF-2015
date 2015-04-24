// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ih, ib

public class ii
    implements android.os.Parcelable.Creator
{

    public ii()
    {
    }

    static void a(ih ih1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, ih1.name, false);
        b.c(parcel, 1000, ih1.DN);
        b.a(parcel, 2, ih1.Ek, false);
        b.a(parcel, 3, ih1.El);
        b.c(parcel, 4, ih1.weight);
        b.a(parcel, 5, ih1.Em);
        b.a(parcel, 6, ih1.En, false);
        b.a(parcel, 7, ih1.Eo, i, false);
        b.a(parcel, 8, ih1.Ep, false);
        b.a(parcel, 11, ih1.Eq, false);
        b.I(parcel, j);
    }

    public ih[] T(int i)
    {
        return new ih[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return r(parcel);
    }

    public Object[] newArray(int i)
    {
        return T(i);
    }

    public ih r(Parcel parcel)
    {
        boolean flag = false;
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 1;
        int ai[] = null;
        ib aib[] = null;
        String s1 = null;
        boolean flag1 = false;
        String s2 = null;
        String s3 = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(l))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;

                case 3: // '\003'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;

                case 4: // '\004'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 5: // '\005'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;

                case 7: // '\007'
                    aib = (ib[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, ib.CREATOR);
                    break;

                case 8: // '\b'
                    ai = com.google.android.gms.common.internal.safeparcel.a.v(parcel, l);
                    break;

                case 11: // '\013'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new ih(k, s3, s2, flag1, j, flag, s1, aib, ai, s);
            }
        } while (true);
    }
}
