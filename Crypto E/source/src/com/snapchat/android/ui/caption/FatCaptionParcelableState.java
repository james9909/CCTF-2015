// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.snapchat.android.ui.caption:
//            FatCaptionEditText

public class FatCaptionParcelableState
    implements Parcelable
{

    protected float a;
    protected float b;
    protected float c[];
    protected float d;
    protected float e;
    protected int f;
    protected int g;
    protected double h;
    protected double i;

    public FatCaptionParcelableState(FatCaptionEditText fatcaptionedittext)
    {
        a = fatcaptionedittext.p;
        b = fatcaptionedittext.q;
        c = fatcaptionedittext.getLastSelectedCenterPoint();
        d = fatcaptionedittext.getLastSelectedPositionX();
        e = fatcaptionedittext.getLastSelectedPositionY();
        f = fatcaptionedittext.getWidth();
        g = fatcaptionedittext.getHeight();
        h = fatcaptionedittext.s;
        i = fatcaptionedittext.r;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        parcel.writeFloat(a);
        parcel.writeFloat(b);
        parcel.writeFloatArray(c);
        parcel.writeFloat(d);
        parcel.writeFloat(e);
        parcel.writeInt(f);
        parcel.writeInt(g);
        parcel.writeDouble(h);
        parcel.writeDouble(i);
    }
}
