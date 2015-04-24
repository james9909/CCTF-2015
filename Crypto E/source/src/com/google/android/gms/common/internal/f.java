// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.common.internal:
//            g, m

public class f
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new g();
    final int TT;
    int TU;
    String TV;
    IBinder TW;
    Scope TX[];
    Bundle TY;
    final int version;

    public f(int i)
    {
        version = 1;
        TU = 0x640578;
        TT = i;
    }

    f(int i, int j, int l, String s, IBinder ibinder, Scope ascope[], Bundle bundle)
    {
        version = i;
        TT = j;
        TU = l;
        TV = s;
        TW = ibinder;
        TX = ascope;
        TY = bundle;
    }

    public f a(m m1)
    {
        if (m1 != null)
        {
            TW = m1.asBinder();
        }
        return this;
    }

    public f a(Scope ascope[])
    {
        TX = ascope;
        return this;
    }

    public f be(String s)
    {
        TV = s;
        return this;
    }

    public int describeContents()
    {
        return 0;
    }

    public f k(Bundle bundle)
    {
        TY = bundle;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        g.a(this, parcel, i);
    }

}
