// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            fx, fz, fy, ga

public interface gb
    extends IInterface
{
    public static abstract class a extends Binder
        implements gb
    {

        public static gb C(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
            if (iinterface != null && (iinterface instanceof gb))
            {
                return (gb)iinterface;
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
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.ads.internal.request.IAdRequestService");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
                break;
            }
            fx fx1;
            fz fz1;
            if (parcel.readInt() != 0)
            {
                fx1 = fx.CREATOR.h(parcel);
            } else
            {
                fx1 = null;
            }
            fz1 = b(fx1);
            parcel1.writeNoException();
            if (fz1 != null)
            {
                parcel1.writeInt(1);
                fz1.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.ads.internal.request.IAdRequestService");
        }
    }

    static class a.a
        implements gb
    {

        private IBinder le;

        public IBinder asBinder()
        {
            return le;
        }

        public fz b(fx fx1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
            if (fx1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            fx1.writeToParcel(parcel, 0);
_L3:
            fz fz2;
            le.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_99;
            }
            fz2 = fz.CREATOR.i(parcel1);
            fz fz1 = fz2;
_L4:
            parcel1.recycle();
            parcel.recycle();
            return fz1;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            fz1 = null;
              goto _L4
        }

        a.a(IBinder ibinder)
        {
            le = ibinder;
        }
    }


    public abstract fz b(fx fx);
}
