// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth.api;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.auth.api:
//            GoogleAuthApiRequest

public class GoogleAuthApiRequestCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION;

    public GoogleAuthApiRequestCreator()
    {
    }

    static void a(GoogleAuthApiRequest googleauthapirequest, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, googleauthapirequest.name, false);
        b.c(parcel, 1000, googleauthapirequest.versionCode);
        b.a(parcel, 2, googleauthapirequest.version, false);
        b.a(parcel, 3, googleauthapirequest.FC, false);
        b.a(parcel, 4, googleauthapirequest.path, false);
        b.a(parcel, 5, googleauthapirequest.FD, false);
        b.a(parcel, 6, googleauthapirequest.FE, false);
        b.b(parcel, 7, googleauthapirequest.FF, false);
        b.a(parcel, 8, googleauthapirequest.FG, false);
        b.c(parcel, 9, googleauthapirequest.FH);
        b.a(parcel, 10, googleauthapirequest.FI, false);
        b.a(parcel, 11, googleauthapirequest.FJ, false);
        b.a(parcel, 12, googleauthapirequest.FK);
        b.I(parcel, j);
    }

    public GoogleAuthApiRequest createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        String s = null;
        String s1 = null;
        String s2 = null;
        String s3 = null;
        android.os.Bundle bundle = null;
        String s4 = null;
        java.util.ArrayList arraylist = null;
        String s5 = null;
        int k = 0;
        android.os.Bundle bundle1 = null;
        byte abyte0[] = null;
        long l = 0L;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 3: // '\003'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 4: // '\004'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 5: // '\005'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.r(parcel, i1);
                    break;

                case 6: // '\006'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 7: // '\007'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.D(parcel, i1);
                    break;

                case 8: // '\b'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 9: // '\t'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 10: // '\n'
                    bundle1 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, i1);
                    break;

                case 11: // '\013'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.s(parcel, i1);
                    break;

                case 12: // '\f'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new GoogleAuthApiRequest(j, s, s1, s2, s3, bundle, s4, arraylist, s5, k, bundle1, abyte0, l);
            }
        } while (true);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public GoogleAuthApiRequest[] newArray(int i)
    {
        return new GoogleAuthApiRequest[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
