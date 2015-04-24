// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            po

public class pp
    implements android.os.Parcelable.Creator
{

    public pp()
    {
    }

    static void a(po po1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, po1.versionCode);
        b.a(parcel, 2, po1.packageName, false);
        b.c(parcel, 3, po1.aut);
        b.c(parcel, 4, po1.auu);
        b.a(parcel, 5, po1.auv, false);
        b.a(parcel, 6, po1.auw, false);
        b.a(parcel, 7, po1.aux);
        b.a(parcel, 8, po1.auy, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return dY(parcel);
    }

    public po dY(Parcel parcel)
    {
        int i = 0;
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        boolean flag = true;
        String s1 = null;
        String s2 = null;
        int k = 0;
        String s3 = null;
        int l = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int i1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(i1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 3: // '\003'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 4: // '\004'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 5: // '\005'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 7: // '\007'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
                    break;

                case 8: // '\b'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new po(l, s3, k, i, s2, s1, flag, s);
            }
        } while (true);
    }

    public po[] gx(int i)
    {
        return new po[i];
    }

    public Object[] newArray(int i)
    {
        return gx(i);
    }
}
