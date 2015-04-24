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
//            py, pw

public class pz
    implements android.os.Parcelable.Creator
{

    public pz()
    {
    }

    static void a(py py1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        Set set = py1.avz;
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, py1.DN);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.a(parcel, 2, py1.DH, true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.a(parcel, 4, py1.awu, i, true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            b.a(parcel, 5, py1.awm, true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            b.a(parcel, 6, py1.awv, i, true);
        }
        if (set.contains(Integer.valueOf(7)))
        {
            b.a(parcel, 7, py1.we, true);
        }
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ec(parcel);
    }

    public py ec(Parcel parcel)
    {
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        HashSet hashset = new HashSet();
        int j = 0;
        pw pw1 = null;
        String s1 = null;
        pw pw2 = null;
        String s2 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(k))
                {
                case 3: // '\003'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    hashset.add(Integer.valueOf(2));
                    break;

                case 4: // '\004'
                    pw pw4 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, pw.CREATOR);
                    hashset.add(Integer.valueOf(4));
                    pw2 = pw4;
                    break;

                case 5: // '\005'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    hashset.add(Integer.valueOf(5));
                    break;

                case 6: // '\006'
                    pw pw3 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, pw.CREATOR);
                    hashset.add(Integer.valueOf(6));
                    pw1 = pw3;
                    break;

                case 7: // '\007'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    hashset.add(Integer.valueOf(7));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != i)
                {
                    throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
                }
                return new py(hashset, j, s2, pw2, s1, pw1, s);
            }
        } while (true);
    }

    public py[] gC(int i)
    {
        return new py[i];
    }

    public Object[] newArray(int i)
    {
        return gC(i);
    }
}
