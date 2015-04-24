// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            qb

public class qc
    implements android.os.Parcelable.Creator
{

    public qc()
    {
    }

    static void a(qb qb1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        Set set = qb1.avz;
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, qb1.DN);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.a(parcel, 2, qb1.awx, true);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.a(parcel, 3, qb1.awy, i, true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.a(parcel, 4, qb1.awz, true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            b.a(parcel, 5, qb1.awA, true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            b.c(parcel, 6, qb1.awB);
        }
        if (set.contains(Integer.valueOf(7)))
        {
            b.a(parcel, 7, qb1.awC, i, true);
        }
        if (set.contains(Integer.valueOf(8)))
        {
            b.a(parcel, 8, qb1.awD, true);
        }
        if (set.contains(Integer.valueOf(9)))
        {
            b.a(parcel, 9, qb1.Wi, true);
        }
        if (set.contains(Integer.valueOf(12)))
        {
            b.c(parcel, 12, qb1.oG);
        }
        if (set.contains(Integer.valueOf(14)))
        {
            b.a(parcel, 14, qb1.DH, true);
        }
        if (set.contains(Integer.valueOf(15)))
        {
            b.a(parcel, 15, qb1.awE, i, true);
        }
        if (set.contains(Integer.valueOf(16)))
        {
            b.a(parcel, 16, qb1.awF);
        }
        if (set.contains(Integer.valueOf(19)))
        {
            b.a(parcel, 19, qb1.awG, i, true);
        }
        if (set.contains(Integer.valueOf(18)))
        {
            b.a(parcel, 18, qb1.LK, true);
        }
        if (set.contains(Integer.valueOf(21)))
        {
            b.c(parcel, 21, qb1.awI);
        }
        if (set.contains(Integer.valueOf(20)))
        {
            b.a(parcel, 20, qb1.awH, true);
        }
        if (set.contains(Integer.valueOf(23)))
        {
            b.c(parcel, 23, qb1.awK, true);
        }
        if (set.contains(Integer.valueOf(22)))
        {
            b.c(parcel, 22, qb1.awJ, true);
        }
        if (set.contains(Integer.valueOf(25)))
        {
            b.c(parcel, 25, qb1.awM);
        }
        if (set.contains(Integer.valueOf(24)))
        {
            b.c(parcel, 24, qb1.awL);
        }
        if (set.contains(Integer.valueOf(27)))
        {
            b.a(parcel, 27, qb1.wh, true);
        }
        if (set.contains(Integer.valueOf(26)))
        {
            b.a(parcel, 26, qb1.awN, true);
        }
        if (set.contains(Integer.valueOf(29)))
        {
            b.a(parcel, 29, qb1.awP);
        }
        if (set.contains(Integer.valueOf(28)))
        {
            b.c(parcel, 28, qb1.awO, true);
        }
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ed(parcel);
    }

    public qb ed(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        HashSet hashset = new HashSet();
        int j = 0;
        String s = null;
        qb.a a1 = null;
        String s1 = null;
        String s2 = null;
        int k = 0;
        qb.b b1 = null;
        String s3 = null;
        String s4 = null;
        int l = 0;
        String s5 = null;
        qb.c c = null;
        boolean flag = false;
        String s6 = null;
        qb.d d = null;
        String s7 = null;
        int i1 = 0;
        java.util.ArrayList arraylist = null;
        java.util.ArrayList arraylist1 = null;
        int j1 = 0;
        int k1 = 0;
        String s8 = null;
        String s9 = null;
        java.util.ArrayList arraylist2 = null;
        boolean flag1 = false;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(l1))
                {
                case 10: // '\n'
                case 11: // '\013'
                case 13: // '\r'
                case 17: // '\021'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l1);
                    hashset.add(Integer.valueOf(2));
                    break;

                case 3: // '\003'
                    qb.a a2 = (qb.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l1, qb.a.CREATOR);
                    hashset.add(Integer.valueOf(3));
                    a1 = a2;
                    break;

                case 4: // '\004'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l1);
                    hashset.add(Integer.valueOf(4));
                    break;

                case 5: // '\005'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l1);
                    hashset.add(Integer.valueOf(5));
                    break;

                case 6: // '\006'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(6));
                    break;

                case 7: // '\007'
                    qb.b b2 = (qb.b)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l1, qb.b.CREATOR);
                    hashset.add(Integer.valueOf(7));
                    b1 = b2;
                    break;

                case 8: // '\b'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l1);
                    hashset.add(Integer.valueOf(8));
                    break;

                case 9: // '\t'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l1);
                    hashset.add(Integer.valueOf(9));
                    break;

                case 12: // '\f'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(12));
                    break;

                case 14: // '\016'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l1);
                    hashset.add(Integer.valueOf(14));
                    break;

                case 15: // '\017'
                    qb.c c1 = (qb.c)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l1, qb.c.CREATOR);
                    hashset.add(Integer.valueOf(15));
                    c = c1;
                    break;

                case 16: // '\020'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l1);
                    hashset.add(Integer.valueOf(16));
                    break;

                case 19: // '\023'
                    qb.d d1 = (qb.d)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l1, qb.d.CREATOR);
                    hashset.add(Integer.valueOf(19));
                    d = d1;
                    break;

                case 18: // '\022'
                    s6 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l1);
                    hashset.add(Integer.valueOf(18));
                    break;

                case 21: // '\025'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(21));
                    break;

                case 20: // '\024'
                    s7 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l1);
                    hashset.add(Integer.valueOf(20));
                    break;

                case 23: // '\027'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l1, qb.g.CREATOR);
                    hashset.add(Integer.valueOf(23));
                    break;

                case 22: // '\026'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l1, qb.f.CREATOR);
                    hashset.add(Integer.valueOf(22));
                    break;

                case 25: // '\031'
                    k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(25));
                    break;

                case 24: // '\030'
                    j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l1);
                    hashset.add(Integer.valueOf(24));
                    break;

                case 27: // '\033'
                    s9 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l1);
                    hashset.add(Integer.valueOf(27));
                    break;

                case 26: // '\032'
                    s8 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l1);
                    hashset.add(Integer.valueOf(26));
                    break;

                case 29: // '\035'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l1);
                    hashset.add(Integer.valueOf(29));
                    break;

                case 28: // '\034'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l1, qb.h.CREATOR);
                    hashset.add(Integer.valueOf(28));
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new qb(hashset, j, s, a1, s1, s2, k, b1, s3, s4, l, s5, c, flag, s6, d, s7, i1, arraylist, arraylist1, j1, k1, s8, s9, arraylist2, flag1);
            }
        } while (true);
    }

    public qb[] gD(int i)
    {
        return new qb[i];
    }

    public Object[] newArray(int i)
    {
        return gD(i);
    }
}
