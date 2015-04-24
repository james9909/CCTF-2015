// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ParcelableClientSettingsCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION;

    public ParcelableClientSettingsCreator()
    {
    }

    static void a(ClientSettings.ParcelableClientSettings parcelableclientsettings, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, parcelableclientsettings.getAccountName(), false);
        b.c(parcel, 1000, parcelableclientsettings.getVersionCode());
        b.b(parcel, 2, parcelableclientsettings.getScopes(), false);
        b.c(parcel, 3, parcelableclientsettings.getGravityForPopups());
        b.a(parcel, 4, parcelableclientsettings.getRealClientPackageName(), false);
        b.I(parcel, j);
    }

    public ClientSettings.ParcelableClientSettings createFromParcel(Parcel parcel)
    {
        int i = 0;
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        java.util.ArrayList arraylist = null;
        String s1 = null;
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
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.D(parcel, l);
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new ClientSettings.ParcelableClientSettings(k, s1, arraylist, i, s);
            }
        } while (true);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public ClientSettings.ParcelableClientSettings[] newArray(int i)
    {
        return new ClientSettings.ParcelableClientSettings[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
