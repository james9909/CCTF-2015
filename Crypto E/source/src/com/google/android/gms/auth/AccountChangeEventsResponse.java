// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.auth:
//            AccountChangeEventsResponseCreator

public class AccountChangeEventsResponse
    implements SafeParcelable
{

    public static final AccountChangeEventsResponseCreator CREATOR = new AccountChangeEventsResponseCreator();
    final int Fr;
    final List mk;

    AccountChangeEventsResponse(int i, List list)
    {
        Fr = i;
        mk = (List)s.l(list);
    }

    public AccountChangeEventsResponse(List list)
    {
        Fr = 1;
        mk = (List)s.l(list);
    }

    public int describeContents()
    {
        return 0;
    }

    public List getEvents()
    {
        return mk;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        AccountChangeEventsResponseCreator.a(this, parcel, i);
    }

}
