// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth.api;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.auth.api:
//            IGoogleAuthService, GoogleAuthApiRequest, GoogleAuthApiRequestCreator, IGoogleAuthApiCallbacks

public static abstract class attachInterface extends Binder
    implements IGoogleAuthService
{
    static class a
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

        a(IBinder ibinder)
        {
            le = ibinder;
        }
    }


    public static IGoogleAuthService asInterface(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.auth.api.IGoogleAuthService");
        if (iinterface != null && (iinterface instanceof IGoogleAuthService))
        {
            return (IGoogleAuthService)iinterface;
        } else
        {
            return new a(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        IGoogleAuthApiCallbacks igoogleauthapicallbacks;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.auth.api.IGoogleAuthService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.auth.api.IGoogleAuthService");
            igoogleauthapicallbacks = com.google.android.gms.auth.api.Stub.asInterface(parcel.readStrongBinder());
            break;
        }
        GoogleAuthApiRequest googleauthapirequest;
        if (parcel.readInt() != 0)
        {
            googleauthapirequest = GoogleAuthApiRequest.CREATOR.createFromParcel(parcel);
        } else
        {
            googleauthapirequest = null;
        }
        sendConnection(igoogleauthapicallbacks, googleauthapirequest);
        parcel1.writeNoException();
        return true;
    }

    public a.le()
    {
        attachInterface(this, "com.google.android.gms.auth.api.IGoogleAuthService");
    }
}
