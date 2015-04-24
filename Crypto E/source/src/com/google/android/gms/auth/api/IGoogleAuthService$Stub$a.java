// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth.api;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.auth.api:
//            IGoogleAuthService, IGoogleAuthApiCallbacks, GoogleAuthApiRequest

static class le
    implements IGoogleAuthService
{

    private IBinder le;

    public IBinder asBinder()
    {
        return le;
    }

    public void sendConnection(IGoogleAuthApiCallbacks igoogleauthapicallbacks, GoogleAuthApiRequest googleauthapirequest)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.auth.api.IGoogleAuthService");
        if (igoogleauthapicallbacks == null) goto _L2; else goto _L1
_L1:
        IBinder ibinder = igoogleauthapicallbacks.asBinder();
_L5:
        parcel.writeStrongBinder(ibinder);
        if (googleauthapirequest == null) goto _L4; else goto _L3
_L3:
        parcel.writeInt(1);
        googleauthapirequest.writeToParcel(parcel, 0);
_L6:
        le.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        ibinder = null;
          goto _L5
_L4:
        parcel.writeInt(0);
          goto _L6
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
          goto _L5
    }

    (IBinder ibinder)
    {
        le = ibinder;
    }
}
