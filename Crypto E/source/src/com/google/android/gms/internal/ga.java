// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            fz

public class ga
    implements android.os.Parcelable.Creator
{

    public ga()
    {
    }

    static void a(fz fz1, Parcel parcel, int j)
    {
        int k = b.am(parcel);
        b.c(parcel, 1, fz1.versionCode);
        b.a(parcel, 2, fz1.sT, false);
        b.a(parcel, 3, fz1.uX, false);
        b.b(parcel, 4, fz1.qX, false);
        b.c(parcel, 5, fz1.errorCode);
        b.b(parcel, 6, fz1.qY, false);
        b.a(parcel, 7, fz1.uY);
        b.a(parcel, 8, fz1.uZ);
        b.a(parcel, 9, fz1.va);
        b.b(parcel, 10, fz1.vb, false);
        b.a(parcel, 11, fz1.rb);
        b.c(parcel, 12, fz1.orientation);
        b.a(parcel, 13, fz1.vc, false);
        b.a(parcel, 14, fz1.vd);
        b.a(parcel, 15, fz1.ve, false);
        b.a(parcel, 19, fz1.vg, false);
        b.a(parcel, 18, fz1.vf);
        b.a(parcel, 21, fz1.vh, false);
        b.a(parcel, 23, fz1.vj);
        b.a(parcel, 22, fz1.vi);
        b.a(parcel, 25, fz1.vk);
        b.a(parcel, 24, fz1.uS);
        b.a(parcel, 26, fz1.vl);
        b.I(parcel, k);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return i(parcel);
    }

    public fz i(Parcel parcel)
    {
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int k = 0;
        String s = null;
        String s1 = null;
        java.util.ArrayList arraylist = null;
        int l = 0;
        java.util.ArrayList arraylist1 = null;
        long l1 = 0L;
        boolean flag = false;
        long l2 = 0L;
        java.util.ArrayList arraylist2 = null;
        long l3 = 0L;
        int i1 = 0;
        String s2 = null;
        long l4 = 0L;
        String s3 = null;
        boolean flag1 = false;
        String s4 = null;
        String s5 = null;
        boolean flag2 = false;
        boolean flag3 = false;
        boolean flag4 = false;
        boolean flag5 = false;
        boolean flag6 = false;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int j1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(j1))
                {
                case 16: // '\020'
                case 17: // '\021'
                case 20: // '\024'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 4: // '\004'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.D(parcel, j1);
                    break;

                case 5: // '\005'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 6: // '\006'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.D(parcel, j1);
                    break;

                case 7: // '\007'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 8: // '\b'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 9: // '\t'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 10: // '\n'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.D(parcel, j1);
                    break;

                case 11: // '\013'
                    l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 12: // '\f'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 13: // '\r'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 14: // '\016'
                    l4 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 15: // '\017'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 19: // '\023'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 18: // '\022'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 21: // '\025'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 23: // '\027'
                    flag3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 22: // '\026'
                    flag2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 25: // '\031'
                    flag5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 24: // '\030'
                    flag4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 26: // '\032'
                    flag6 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new fz(k, s, s1, arraylist, l, arraylist1, l1, flag, l2, arraylist2, l3, i1, s2, l4, s3, flag1, s4, s5, flag2, flag3, flag4, flag5, flag6);
            }
        } while (true);
    }

    public Object[] newArray(int j)
    {
        return t(j);
    }

    public fz[] t(int j)
    {
        return new fz[j];
    }
}
