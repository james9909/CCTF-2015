// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;

// Referenced classes of package com.google.android.gms.appindexing:
//            a

public class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(com.google.android.gms.appindexing.a a1, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.b.am(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, a1.EJ, i, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1000, a1.DN);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, a1.EW, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, a1.DV, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, a1.CN, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 5, a1.EK);
        com.google.android.gms.common.internal.safeparcel.b.I(parcel, j);
    }

    public com.google.android.gms.appindexing.a[] V(int i)
    {
        return new com.google.android.gms.appindexing.a[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return t(parcel);
    }

    public Object[] newArray(int i)
    {
        return V(i);
    }

    public com.google.android.gms.appindexing.a t(Parcel parcel)
    {
        int i = 0;
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        String s1 = null;
        Uri uri = null;
        Uri uri1 = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(l))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    uri1 = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Uri.CREATOR);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    uri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Uri.CREATOR);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;

                case 5: // '\005'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new com.google.android.gms.appindexing.a(k, uri1, uri, s1, s, i);
            }
        } while (true);
    }
}
