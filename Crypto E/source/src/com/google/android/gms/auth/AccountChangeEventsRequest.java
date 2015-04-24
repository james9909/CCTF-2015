// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.auth:
//            AccountChangeEventsRequestCreator

public class AccountChangeEventsRequest
    implements SafeParcelable
{

    public static final AccountChangeEventsRequestCreator CREATOR = new AccountChangeEventsRequestCreator();
    String Fm;
    final int Fr;
    int Fu;

    public AccountChangeEventsRequest()
    {
        Fr = 1;
    }

    AccountChangeEventsRequest(int i, int j, String s)
    {
        Fr = i;
        Fu = j;
        Fm = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAccountName()
    {
        return Fm;
    }

    public int getEventIndex()
    {
        return Fu;
    }

    public AccountChangeEventsRequest setAccountName(String s)
    {
        Fm = s;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i)
    {
        Fu = i;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        AccountChangeEventsRequestCreator.a(this, parcel, i);
    }

}
