// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            kc, jt, jy, ke, 
//            ki, km

public interface kd
    extends IInterface
{
    public static abstract class a extends Binder
        implements kd
    {

        public static kd au(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.cloudsave.internal.ICloudSaveService");
            if (iinterface != null && (iinterface instanceof kd))
            {
                return (kd)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        {
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.cloudsave.internal.ICloudSaveService");
                return true;

            case 5001: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveService");
                kc kc4 = com.google.android.gms.internal.kc.a.at(parcel.readStrongBinder());
                int k1 = parcel.readInt();
                km km1 = null;
                if (k1 != 0)
                {
                    km1 = (km)km.CREATOR.createFromParcel(parcel);
                }
                a(kc4, km1);
                parcel1.writeNoException();
                return true;

            case 5002: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveService");
                kc kc3 = com.google.android.gms.internal.kc.a.at(parcel.readStrongBinder());
                int j1 = parcel.readInt();
                jy jy1 = null;
                if (j1 != 0)
                {
                    jy1 = (jy)jy.CREATOR.createFromParcel(parcel);
                }
                a(kc3, jy1);
                parcel1.writeNoException();
                return true;

            case 5003: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveService");
                kc kc2 = com.google.android.gms.internal.kc.a.at(parcel.readStrongBinder());
                int i1 = parcel.readInt();
                jt jt1 = null;
                if (i1 != 0)
                {
                    jt1 = (jt)jt.CREATOR.createFromParcel(parcel);
                }
                a(kc2, jt1);
                parcel1.writeNoException();
                return true;

            case 5004: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveService");
                kc kc1 = com.google.android.gms.internal.kc.a.at(parcel.readStrongBinder());
                int l = parcel.readInt();
                ke ke1 = null;
                if (l != 0)
                {
                    ke1 = (ke)ke.CREATOR.createFromParcel(parcel);
                }
                a(kc1, ke1);
                parcel1.writeNoException();
                return true;

            case 5005: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveService");
                a(com.google.android.gms.internal.kc.a.at(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 5007: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveService");
                kc kc = com.google.android.gms.internal.kc.a.at(parcel.readStrongBinder());
                int k = parcel.readInt();
                ki ki1 = null;
                if (k != 0)
                {
                    ki1 = (ki)ki.CREATOR.createFromParcel(parcel);
                }
                a(kc, ki1, parcel.readStrongBinder());
                parcel1.writeNoException();
                return true;

            case 5101: 
                parcel.enforceInterface("com.google.android.gms.cloudsave.internal.ICloudSaveService");
                b(com.google.android.gms.internal.kc.a.at(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;
            }
        }
    }

    static class a.a
        implements kd
    {

        private IBinder le;

        public void a(kc kc1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveService");
            if (kc1 == null)
            {
                break MISSING_BLOCK_LABEL_61;
            }
            IBinder ibinder = kc1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            le.transact(5005, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            ibinder = null;
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void a(kc kc1, jt jt1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveService");
            if (kc1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = kc1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (jt1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            jt1.writeToParcel(parcel, 0);
_L6:
            le.transact(5003, parcel, parcel1, 0);
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

        public void a(kc kc1, jy jy1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveService");
            if (kc1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = kc1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (jy1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            jy1.writeToParcel(parcel, 0);
_L6:
            le.transact(5002, parcel, parcel1, 0);
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

        public void a(kc kc1, ke ke1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveService");
            if (kc1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = kc1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (ke1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            ke1.writeToParcel(parcel, 0);
_L6:
            le.transact(5004, parcel, parcel1, 0);
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

        public void a(kc kc1, ki ki1, IBinder ibinder)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveService");
            if (kc1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder1 = kc1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder1);
            if (ki1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            ki1.writeToParcel(parcel, 0);
_L6:
            parcel.writeStrongBinder(ibinder);
            le.transact(5007, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder1 = null;
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

        public void a(kc kc1, km km1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveService");
            if (kc1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = kc1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (km1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            km1.writeToParcel(parcel, 0);
_L6:
            le.transact(5001, parcel, parcel1, 0);
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

        public IBinder asBinder()
        {
            return le;
        }

        public void b(kc kc1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cloudsave.internal.ICloudSaveService");
            if (kc1 == null)
            {
                break MISSING_BLOCK_LABEL_61;
            }
            IBinder ibinder = kc1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            le.transact(5101, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            ibinder = null;
              goto _L1
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


    public abstract void a(kc kc);

    public abstract void a(kc kc, jt jt);

    public abstract void a(kc kc, jy jy);

    public abstract void a(kc kc, ke ke);

    public abstract void a(kc kc, ki ki, IBinder ibinder);

    public abstract void a(kc kc, km km);

    public abstract void b(kc kc);
}
