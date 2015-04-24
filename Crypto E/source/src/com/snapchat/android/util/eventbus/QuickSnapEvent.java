// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import android.os.Parcel;
import android.os.Parcelable;

public class QuickSnapEvent
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public QuickSnapEvent a(Parcel parcel)
        {
            return new QuickSnapEvent(parcel);
        }

        public QuickSnapEvent[] a(int i)
        {
            return new QuickSnapEvent[i];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object[] newArray(int i)
        {
            return a(i);
        }

    };
    public String a;
    public String b;
    public int c;

    public QuickSnapEvent(Parcel parcel)
    {
        a(parcel);
    }

    public QuickSnapEvent(String s, String s1, int i)
    {
        a = s;
        b = s1;
        c = i;
    }

    private void a(Parcel parcel)
    {
        a = parcel.readString();
        b = parcel.readString();
        c = parcel.readInt();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(a);
        parcel.writeString(b);
        parcel.writeInt(c);
    }

}
