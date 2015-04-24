// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.common.data:
//            DataBuffer, DataHolder

public class e extends DataBuffer
{

    private static final String Sr[] = {
        "data"
    };
    private final android.os.Parcelable.Creator Ss;

    public e(DataHolder dataholder, android.os.Parcelable.Creator creator)
    {
        super(dataholder);
        Ss = creator;
    }

    public static void a(DataHolder.a a1, SafeParcelable safeparcelable)
    {
        Parcel parcel = Parcel.obtain();
        safeparcelable.writeToParcel(parcel, 0);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("data", parcel.marshall());
        a1.a(contentvalues);
        parcel.recycle();
    }

    public static DataHolder.a jm()
    {
        return DataHolder.d(Sr);
    }

    public SafeParcelable bA(int i)
    {
        byte abyte0[] = Rb.f("data", i, 0);
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall(abyte0, 0, abyte0.length);
        parcel.setDataPosition(0);
        SafeParcelable safeparcelable = (SafeParcelable)Ss.createFromParcel(parcel);
        parcel.recycle();
        return safeparcelable;
    }

    public Object get(int i)
    {
        return bA(i);
    }

}
