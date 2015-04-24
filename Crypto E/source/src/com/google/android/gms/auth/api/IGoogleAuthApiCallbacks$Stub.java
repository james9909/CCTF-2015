// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth.api;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.auth.api:
//            IGoogleAuthApiCallbacks, GoogleAuthApiResponse, GoogleAuthApiResponseCreator

public static abstract class attachInterface extends Binder
    implements IGoogleAuthApiCallbacks
{
    static class a
        implements IGoogleAuthApiCallbacks
    {

        private IBinder le;

        public IBinder asBinder()
        {
            return le;
        }

        public void onConnectionSuccess(GoogleAuthApiResponse googleauthapiresponse)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
            if (googleauthapiresponse == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            googleauthapiresponse.writeToParcel(parcel, 0);
_L1:
            le.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void onError(int i, String s, PendingIntent pendingintent)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
            parcel.writeInt(i);
            parcel.writeString(s);
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_78;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L1:
            le.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        a(IBinder ibinder)
        {
            le = ibinder;
        }
    }


    public static IGoogleAuthApiCallbacks asInterface(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
        if (iinterface != null && (iinterface instanceof IGoogleAuthApiCallbacks))
        {
            return (IGoogleAuthApiCallbacks)iinterface;
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
        int k;
        String s;
        int l;
        PendingIntent pendingintent;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
            int i1 = parcel.readInt();
            GoogleAuthApiResponse googleauthapiresponse = null;
            if (i1 != 0)
            {
                googleauthapiresponse = GoogleAuthApiResponse.CREATOR.createFromParcel(parcel);
            }
            onConnectionSuccess(googleauthapiresponse);
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
            k = parcel.readInt();
            s = parcel.readString();
            l = parcel.readInt();
            pendingintent = null;
            break;
        }
        if (l != 0)
        {
            pendingintent = (PendingIntent)PendingIntent.CREATOR.Parcel(parcel);
        }
        onError(k, s, pendingintent);
        parcel1.writeNoException();
        return true;
    }

    public a.le()
    {
        attachInterface(this, "com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
    }
}
