// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.identity.intents.UserAddressRequest;

// Referenced classes of package com.google.android.gms.internal:
//            nr, nq

public static abstract class a.le extends Binder
    implements nr
{
    static class a
        implements nr
    {

        private IBinder le;

        public void a(nq nq1, UserAddressRequest useraddressrequest, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.identity.intents.internal.IAddressService");
            if (nq1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = nq1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (useraddressrequest == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            useraddressrequest.writeToParcel(parcel, 0);
_L6:
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_132;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L7:
            le.transact(2, parcel, parcel1, 0);
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
            parcel.writeInt(0);
              goto _L7
        }

        public IBinder asBinder()
        {
            return le;
        }

        a(IBinder ibinder)
        {
            le = ibinder;
        }
    }


    public static nr bs(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.identity.intents.internal.IAddressService");
        if (iinterface != null && (iinterface instanceof nr))
        {
            return (nr)iinterface;
        } else
        {
            return new a(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        nq nq;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.identity.intents.internal.IAddressService");
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.identity.intents.internal.IAddressService");
            nq = br(parcel.readStrongBinder());
            break;
        }
        UserAddressRequest useraddressrequest;
        Bundle bundle;
        if (parcel.readInt() != 0)
        {
            useraddressrequest = (UserAddressRequest)UserAddressRequest.CREATOR.createFromParcel(parcel);
        } else
        {
            useraddressrequest = null;
        }
        if (parcel.readInt() != 0)
        {
            bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
        } else
        {
            bundle = null;
        }
        a(nq, useraddressrequest, bundle);
        parcel1.writeNoException();
        return true;
    }
}
