// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import android.os.Parcel;
import android.os.Parcelable;

public class InChatSnapEvent
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public InChatSnapEvent a(Parcel parcel)
        {
            return new InChatSnapEvent(parcel);
        }

        public InChatSnapEvent[] a(int i)
        {
            return new InChatSnapEvent[i];
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

    public InChatSnapEvent(Parcel parcel)
    {
        a(parcel);
    }

    public InChatSnapEvent(String s, String s1, int i)
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

    public String a()
    {
        return a;
    }

    public int b()
    {
        return c;
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
