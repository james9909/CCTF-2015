// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Parcel;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.common.api:
//            ScopeCreator

public final class Scope
    implements SafeParcelable
{

    public static final ScopeCreator CREATOR = new ScopeCreator();
    final int DN;
    private final String RP;

    Scope(int i, String s1)
    {
        s.b(s1, "scopeUri must not be null or empty");
        DN = i;
        RP = s1;
    }

    public Scope(String s1)
    {
        this(1, s1);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Scope))
        {
            return false;
        } else
        {
            return RP.equals(((Scope)obj).RP);
        }
    }

    public int hashCode()
    {
        return RP.hashCode();
    }

    public String je()
    {
        return RP;
    }

    public String toString()
    {
        return RP;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ScopeCreator.a(this, parcel, i);
    }

}
