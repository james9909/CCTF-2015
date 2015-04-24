// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            bj

public class bk
    implements android.os.Parcelable.Creator
{

    public bk()
    {
    }

    static void a(bj bj1, Parcel parcel, int j)
    {
        int k = b.am(parcel);
        b.c(parcel, 1, bj1.versionCode);
        b.c(parcel, 2, bj1.pa);
        b.c(parcel, 3, bj1.backgroundColor);
        b.c(parcel, 4, bj1.pb);
        b.c(parcel, 5, bj1.pc);
        b.c(parcel, 6, bj1.pd);
        b.c(parcel, 7, bj1.pe);
        b.c(parcel, 8, bj1.pf);
        b.c(parcel, 9, bj1.pg);
        b.a(parcel, 10, bj1.ph, false);
        b.c(parcel, 11, bj1.pi);
        b.a(parcel, 12, bj1.pj, false);
        b.c(parcel, 13, bj1.pk);
        b.c(parcel, 14, bj1.pl);
        b.a(parcel, 15, bj1.pm, false);
        b.I(parcel, k);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return d(parcel);
    }

    public bj d(Parcel parcel)
    {
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int k = 0;
        int l = 0;
        int i1 = 0;
        int j1 = 0;
        int k1 = 0;
        int l1 = 0;
        int i2 = 0;
        int j2 = 0;
        int k2 = 0;
        String s = null;
        int l2 = 0;
        String s1 = null;
        int i3 = 0;
        int j3 = 0;
        String s2 = null;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int k3 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(k3))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k3);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 3: // '\003'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 4: // '\004'
                    j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 5: // '\005'
                    k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 6: // '\006'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 7: // '\007'
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 8: // '\b'
                    j2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 9: // '\t'
                    k2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 10: // '\n'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k3);
                    break;

                case 11: // '\013'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 12: // '\f'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k3);
                    break;

                case 13: // '\r'
                    i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 14: // '\016'
                    j3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k3);
                    break;

                case 15: // '\017'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k3);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new bj(k, l, i1, j1, k1, l1, i2, j2, k2, s, l2, s1, i3, j3, s2);
            }
        } while (true);
    }

    public bj[] i(int j)
    {
        return new bj[j];
    }

    public Object[] newArray(int j)
    {
        return i(j);
    }
}
