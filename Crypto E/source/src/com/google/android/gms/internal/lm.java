// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            lf

public class lm
    implements android.os.Parcelable.Creator
{

    public lm()
    {
    }

    static void a(lk.a a1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, a1.getVersionCode());
        b.c(parcel, 2, a1.jS());
        b.a(parcel, 3, a1.jY());
        b.c(parcel, 4, a1.jT());
        b.a(parcel, 5, a1.jZ());
        b.a(parcel, 6, a1.ka(), false);
        b.c(parcel, 7, a1.kb());
        b.a(parcel, 8, a1.kd(), false);
        b.a(parcel, 9, a1.kf(), i, false);
        b.I(parcel, j);
    }

    public lk.a ar(Parcel parcel)
    {
        lf lf1 = null;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        String s = null;
        String s1 = null;
        boolean flag = false;
        int k = 0;
        boolean flag1 = false;
        int l = 0;
        int i1 = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int j1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(j1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 3: // '\003'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 5: // '\005'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 7: // '\007'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 8: // '\b'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 9: // '\t'
                    lf1 = (lf)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, lf.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new lk.a(i1, l, flag1, k, flag, s1, i, s, lf1);
            }
        } while (true);
    }

    public lk.a[] bU(int i)
    {
        return new lk.a[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ar(parcel);
    }

    public Object[] newArray(int i)
    {
        return bU(i);
    }
}
