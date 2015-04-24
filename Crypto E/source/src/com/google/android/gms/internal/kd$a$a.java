// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            kd, kc, jt, jy, 
//            ke, ki, km

static class le
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

    (IBinder ibinder)
    {
        le = ibinder;
    }
}
