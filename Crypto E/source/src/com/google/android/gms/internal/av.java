// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            aw, bj

public final class av
    implements SafeParcelable
{

    public static final aw CREATOR = new aw();
    public final Bundle extras;
    public final long on;
    public final int oo;
    public final List op;
    public final boolean oq;
    public final int or;
    public final boolean os;
    public final String ot;
    public final bj ou;
    public final Location ov;
    public final String ow;
    public final Bundle ox;
    public final int versionCode;

    public av(int i, long l, Bundle bundle, int j, List list, boolean flag, 
            int k, boolean flag1, String s, bj bj, Location location, String s1, Bundle bundle1)
    {
        versionCode = i;
        on = l;
        extras = bundle;
        oo = j;
        op = list;
        oq = flag;
        or = k;
        os = flag1;
        ot = s;
        ou = bj;
        ov = location;
        ow = s1;
        ox = bundle1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        aw.a(this, parcel, i);
    }

}
