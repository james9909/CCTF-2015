// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            jv, ka, kg, ko

public interface kc
    extends IInterface
{
    public static abstract class a extends Binder
        implements kc
    {

        public static kc at(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
            if (iinterface != null && (iinterface instanceof kc))
            {
                return (kc)iinterface;
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
                parcel1.writeString("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
                return true;

            case 5001: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
                int j1 = parcel.readInt();
                ko ko1 = null;
                if (j1 != 0)
                {
                    ko1 = (ko)ko.CREATOR.createFromParcel(parcel);
                }
                a(ko1);
                parcel1.writeNoException();
                return true;

            case 5002: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
                int i1 = parcel.readInt();
                ka ka1 = null;
                if (i1 != 0)
                {
                    ka1 = (ka)ka.CREATOR.createFromParcel(parcel);
                }
                a(ka1);
                parcel1.writeNoException();
                return true;

            case 5003: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
                int l = parcel.readInt();
                jv jv1 = null;
                if (l != 0)
                {
                    jv1 = (jv)jv.CREATOR.createFromParcel(parcel);
                }
                a(jv1);
                parcel1.writeNoException();
                return true;

            case 5004: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
                int k = parcel.readInt();
                kg kg1 = null;
                if (k != 0)
                {
                    kg1 = (kg)kg.CREATOR.createFromParcel(parcel);
                }
                a(kg1);
                parcel1.writeNoException();
                return true;

            case 5005: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
                bc(parcel.readInt());
                parcel1.writeNoException();
                return true;
            }
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
        }
    }

    static class a.a
        implements kc
    {

        private IBinder le;

        public void a(jv jv1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
            if (jv1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            parcel.writeInt(1);
            jv1.writeToParcel(parcel, 0);
_L1:
            le.transact(5003, parcel, parcel1, 0);
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

        public void a(ka ka1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
            if (ka1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            parcel.writeInt(1);
            ka1.writeToParcel(parcel, 0);
_L1:
            le.transact(5002, parcel, parcel1, 0);
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

        public void a(kg kg1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
            if (kg1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            parcel.writeInt(1);
            kg1.writeToParcel(parcel, 0);
_L1:
            le.transact(5004, parcel, parcel1, 0);
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

        public void a(ko ko1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
            if (ko1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            parcel.writeInt(1);
            ko1.writeToParcel(parcel, 0);
_L1:
            le.transact(5001, parcel, parcel1, 0);
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

        public IBinder asBinder()
        {
            return le;
        }

        public void bc(int i)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveCallbacks");
            parcel.writeInt(i);
            le.transact(5005, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        a.a(IBinder ibinder)
        {
            le = ibinder;
        }
    }


    public abstract void a(jv jv);

    public abstract void a(ka ka);

    public abstract void a(kg kg);

    public abstract void a(ko ko);

    public abstract void bc(int i);
}
