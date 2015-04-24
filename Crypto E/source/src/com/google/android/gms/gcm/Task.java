// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class Task
    implements Parcelable
{

    private final String amG = null;
    private final boolean amH = false;
    private final boolean amI = false;
    private final String mTag = null;

    Task()
    {
    }

    public int describeContents()
    {
        return 0;
    }

    public String getServiceName()
    {
        return amG;
    }

    public String getTag()
    {
        return mTag;
    }

    public boolean isPersisted()
    {
        return amI;
    }

    public boolean isUpdateCurrent()
    {
        return amH;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeString(amG);
        parcel.writeString(mTag);
        int k;
        if (amH)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeInt(k);
        if (!amI)
        {
            j = 0;
        }
        parcel.writeInt(j);
    }
}
