// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.os.Parcel;
import android.os.Parcelable;

public class CaptionColorRange
    implements Parcelable
{

    private final int a;
    private final int b;
    private final int c;

    public CaptionColorRange(int i, int j, int k)
    {
        a = i;
        b = j;
        c = k;
    }

    public int a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }

    public int c()
    {
        return c;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int ai[] = new int[3];
        ai[0] = a;
        ai[1] = b;
        ai[2] = c;
        parcel.writeIntArray(ai);
    }
}
