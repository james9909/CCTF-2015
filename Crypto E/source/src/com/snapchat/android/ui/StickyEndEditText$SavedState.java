// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.snapchat.android.ui:
//            StickyEndEditText

static class <init> extends android.view.SavedState
{

    public static final android.os.t.SavedState.a CREATOR = new android.os.Parcelable.Creator() {

        public StickyEndEditText.SavedState a(Parcel parcel)
        {
            return new StickyEndEditText.SavedState(parcel, null);
        }

        public StickyEndEditText.SavedState[] a(int i)
        {
            return new StickyEndEditText.SavedState[i];
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
    String a;

    public void writeToParcel(Parcel parcel, int i)
    {
        super.rcel(parcel, i);
        parcel.writeString(a);
    }


    private _cls1(Parcel parcel)
    {
        super(parcel);
        a = parcel.readString();
    }

    a(Parcel parcel, a a1)
    {
        this(parcel);
    }

    <init>(Parcelable parcelable)
    {
        super(parcelable);
    }
}
