// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ie, if

public class id
{
    public static class a
        implements SafeParcelable
    {

        public static final ie CREATOR = new ie();
        final int DN;
        public final Account Ef;

        public int describeContents()
        {
            ie _tmp = CREATOR;
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            ie _tmp = CREATOR;
            ie.a(this, parcel, i);
        }


        public a()
        {
            this(null);
        }

        a(int i, Account account)
        {
            DN = i;
            Ef = account;
        }

        public a(Account account)
        {
            this(1, account);
        }
    }

    public static class b
        implements Result, SafeParcelable
    {

        public static final if CREATOR = new if();
        final int DN;
        public Status Eg;
        public List Eh;

        public int describeContents()
        {
            if _tmp = CREATOR;
            return 0;
        }

        public Status getStatus()
        {
            return Eg;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            if _tmp = CREATOR;
            com.google.android.gms.internal.if.a(this, parcel, i);
        }


        public b()
        {
            DN = 1;
        }

        b(int i, Status status, List list)
        {
            DN = i;
            Eg = status;
            Eh = list;
        }
    }

}
