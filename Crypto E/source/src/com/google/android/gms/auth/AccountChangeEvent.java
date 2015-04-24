// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.auth:
//            AccountChangeEventCreator

public class AccountChangeEvent
    implements SafeParcelable
{

    public static final AccountChangeEventCreator CREATOR = new AccountChangeEventCreator();
    final String Fm;
    final int Fr;
    final long Fs;
    final int Ft;
    final int Fu;
    final String Fv;

    AccountChangeEvent(int i, long l, String s1, int j, int k, String s2)
    {
        Fr = i;
        Fs = l;
        Fm = (String)s.l(s1);
        Ft = j;
        Fu = k;
        Fv = s2;
    }

    public AccountChangeEvent(long l, String s1, int i, int j, String s2)
    {
        Fr = 1;
        Fs = l;
        Fm = (String)s.l(s1);
        Ft = i;
        Fu = j;
        Fv = s2;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        AccountChangeEvent accountchangeevent;
        if (obj != this)
        {
            if (obj instanceof AccountChangeEvent)
            {
                if (Fr != (accountchangeevent = (AccountChangeEvent)obj).Fr || Fs != accountchangeevent.Fs || !r.equal(Fm, accountchangeevent.Fm) || Ft != accountchangeevent.Ft || Fu != accountchangeevent.Fu || !r.equal(Fv, accountchangeevent.Fv))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public String getAccountName()
    {
        return Fm;
    }

    public String getChangeData()
    {
        return Fv;
    }

    public int getChangeType()
    {
        return Ft;
    }

    public int getEventIndex()
    {
        return Fu;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[6];
        aobj[0] = Integer.valueOf(Fr);
        aobj[1] = Long.valueOf(Fs);
        aobj[2] = Fm;
        aobj[3] = Integer.valueOf(Ft);
        aobj[4] = Integer.valueOf(Fu);
        aobj[5] = Fv;
        return r.hashCode(aobj);
    }

    public String toString()
    {
        String s1 = "UNKNOWN";
        Ft;
        JVM INSTR tableswitch 1 4: default 36
    //                   1 97
    //                   2 103
    //                   3 115
    //                   4 109;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return (new StringBuilder()).append("AccountChangeEvent {accountName = ").append(Fm).append(", changeType = ").append(s1).append(", changeData = ").append(Fv).append(", eventIndex = ").append(Fu).append("}").toString();
_L2:
        s1 = "ADDED";
        continue; /* Loop/switch isn't completed */
_L3:
        s1 = "REMOVED";
        continue; /* Loop/switch isn't completed */
_L5:
        s1 = "RENAMED_TO";
        continue; /* Loop/switch isn't completed */
_L4:
        s1 = "RENAMED_FROM";
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        AccountChangeEventCreator.a(this, parcel, i);
    }

}
