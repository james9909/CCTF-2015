// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            dy, dv, hg, y

public class dx
    implements android.os.Parcelable.Creator
{

    public dx()
    {
    }

    static void a(dy dy1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, dy1.versionCode);
        b.a(parcel, 2, dy1.sO, i, false);
        b.a(parcel, 3, dy1.cs(), false);
        b.a(parcel, 4, dy1.ct(), false);
        b.a(parcel, 5, dy1.cu(), false);
        b.a(parcel, 6, dy1.cv(), false);
        b.a(parcel, 7, dy1.sT, false);
        b.a(parcel, 8, dy1.sU);
        b.a(parcel, 9, dy1.sV, false);
        b.a(parcel, 10, dy1.cx(), false);
        b.c(parcel, 11, dy1.orientation);
        b.c(parcel, 12, dy1.sX);
        b.a(parcel, 13, dy1.st, false);
        b.a(parcel, 14, dy1.lH, i, false);
        b.a(parcel, 15, dy1.cw(), false);
        b.a(parcel, 17, dy1.ta, i, false);
        b.a(parcel, 16, dy1.sZ, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return f(parcel);
    }

    public dy f(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        dv dv1 = null;
        android.os.IBinder ibinder = null;
        android.os.IBinder ibinder1 = null;
        android.os.IBinder ibinder2 = null;
        android.os.IBinder ibinder3 = null;
        String s = null;
        boolean flag = false;
        String s1 = null;
        android.os.IBinder ibinder4 = null;
        int k = 0;
        int l = 0;
        String s2 = null;
        hg hg1 = null;
        android.os.IBinder ibinder5 = null;
        String s3 = null;
        y y1 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int i1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(i1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    dv1 = (dv)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, dv.CREATOR);
                    break;

                case 3: // '\003'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.q(parcel, i1);
                    break;

                case 4: // '\004'
                    ibinder1 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, i1);
                    break;

                case 5: // '\005'
                    ibinder2 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, i1);
                    break;

                case 6: // '\006'
                    ibinder3 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, i1);
                    break;

                case 7: // '\007'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 8: // '\b'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
                    break;

                case 9: // '\t'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 10: // '\n'
                    ibinder4 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, i1);
                    break;

                case 11: // '\013'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 12: // '\f'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 13: // '\r'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 14: // '\016'
                    hg1 = (hg)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, hg.CREATOR);
                    break;

                case 15: // '\017'
                    ibinder5 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, i1);
                    break;

                case 17: // '\021'
                    y1 = (y)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, y.CREATOR);
                    break;

                case 16: // '\020'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new dy(j, dv1, ibinder, ibinder1, ibinder2, ibinder3, s, flag, s1, ibinder4, k, l, s2, hg1, ibinder5, s3, y1);
            }
        } while (true);
    }

    public dy[] n(int i)
    {
        return new dy[i];
    }

    public Object[] newArray(int i)
    {
        return n(i);
    }
}
