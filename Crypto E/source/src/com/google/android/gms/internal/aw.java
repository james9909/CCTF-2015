// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            av, bj

public class aw
    implements android.os.Parcelable.Creator
{

    public aw()
    {
    }

    static void a(av av1, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.b.am(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, av1.versionCode);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, av1.on);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, av1.extras, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, av1.oo);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 5, av1.op, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, av1.oq);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 7, av1.or);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, av1.os);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, av1.ot, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, av1.ou, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, av1.ov, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, av1.ow, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, av1.ox, false);
        com.google.android.gms.common.internal.safeparcel.b.I(parcel, j);
    }

    public av b(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        long l = 0L;
        android.os.Bundle bundle = null;
        int k = 0;
        java.util.ArrayList arraylist = null;
        boolean flag = false;
        int i1 = 0;
        boolean flag1 = false;
        String s = null;
        bj bj1 = null;
        Location location = null;
        String s1 = null;
        android.os.Bundle bundle1 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int j1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(j1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 3: // '\003'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.r(parcel, j1);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 5: // '\005'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.D(parcel, j1);
                    break;

                case 6: // '\006'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 7: // '\007'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 8: // '\b'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 9: // '\t'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 10: // '\n'
                    bj1 = (bj)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, bj.CREATOR);
                    break;

                case 11: // '\013'
                    location = (Location)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, Location.CREATOR);
                    break;

                case 12: // '\f'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 13: // '\r'
                    bundle1 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new av(j, l, bundle, k, arraylist, flag, i1, flag1, s, bj1, location, s1, bundle1);
            }
        } while (true);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return b(parcel);
    }

    public av[] f(int i)
    {
        return new av[i];
    }

    public Object[] newArray(int i)
    {
        return f(i);
    }
}
