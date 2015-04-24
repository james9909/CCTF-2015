// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.common.api:
//            Result, StatusCreator, CommonStatusCodes

public final class Status
    implements Result, SafeParcelable
{

    public static final StatusCreator CREATOR = new StatusCreator();
    public static final Status RQ = new Status(0);
    public static final Status RR = new Status(14);
    public static final Status RS = new Status(8);
    public static final Status RT = new Status(15);
    public static final Status RU = new Status(16);
    private final int DN;
    private final int Pu;
    private final String RV;
    private final PendingIntent mPendingIntent;

    public Status(int i)
    {
        this(i, null);
    }

    Status(int i, int j, String s, PendingIntent pendingintent)
    {
        DN = i;
        Pu = j;
        RV = s;
        mPendingIntent = pendingintent;
    }

    public Status(int i, String s)
    {
        this(1, i, s, null);
    }

    public Status(int i, String s, PendingIntent pendingintent)
    {
        this(1, i, s, pendingintent);
    }

    private String iJ()
    {
        if (RV != null)
        {
            return RV;
        } else
        {
            return CommonStatusCodes.getStatusCodeString(Pu);
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        Status status;
        if (obj instanceof Status)
        {
            if (DN == (status = (Status)obj).DN && Pu == status.Pu && r.equal(RV, status.RV) && r.equal(mPendingIntent, status.mPendingIntent))
            {
                return true;
            }
        }
        return false;
    }

    PendingIntent getPendingIntent()
    {
        return mPendingIntent;
    }

    public PendingIntent getResolution()
    {
        return mPendingIntent;
    }

    public Status getStatus()
    {
        return this;
    }

    public int getStatusCode()
    {
        return Pu;
    }

    public String getStatusMessage()
    {
        return RV;
    }

    int getVersionCode()
    {
        return DN;
    }

    public boolean hasResolution()
    {
        return mPendingIntent != null;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(DN);
        aobj[1] = Integer.valueOf(Pu);
        aobj[2] = RV;
        aobj[3] = mPendingIntent;
        return r.hashCode(aobj);
    }

    public boolean isCanceled()
    {
        return Pu == 16;
    }

    public boolean isInterrupted()
    {
        return Pu == 14;
    }

    public boolean isSuccess()
    {
        return Pu <= 0;
    }

    public ConnectionResult jf()
    {
        return new ConnectionResult(Pu, mPendingIntent);
    }

    public void startResolutionForResult(Activity activity, int i)
    {
        if (!hasResolution())
        {
            return;
        } else
        {
            activity.startIntentSenderForResult(mPendingIntent.getIntentSender(), i, null, 0, 0, 0);
            return;
        }
    }

    public String toString()
    {
        return r.k(this).a("statusCode", iJ()).a("resolution", mPendingIntent).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        StatusCreator.a(this, parcel, i);
    }

}
