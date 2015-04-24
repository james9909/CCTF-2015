// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public class hs
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public hs[] K(int i)
        {
            return new hs[i];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return k(parcel);
        }

        public hs k(Parcel parcel)
        {
            return new hs(parcel);
        }

        public Object[] newArray(int i)
        {
            return K(i);
        }

    };
    private String DH;
    private String DI;
    private String mValue;

    public hs()
    {
    }

    hs(Parcel parcel)
    {
        readFromParcel(parcel);
    }

    public hs(String s, String s1, String s2)
    {
        DH = s;
        DI = s1;
        mValue = s2;
    }

    private void readFromParcel(Parcel parcel)
    {
        DH = parcel.readString();
        DI = parcel.readString();
        mValue = parcel.readString();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getId()
    {
        return DH;
    }

    public String getValue()
    {
        return mValue;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(DH);
        parcel.writeString(DI);
        parcel.writeString(mValue);
    }

}
