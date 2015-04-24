// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.cast.LaunchOptions;

// Referenced classes of package com.google.android.gms.internal:
//            jg

public static abstract class a.le extends Binder
    implements jg
{
    static class a
        implements jg
    {

        private IBinder le;

        public void a(double d, double d1, boolean flag)
        {
            int i;
            Parcel parcel;
            i = 1;
            parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            parcel.writeDouble(d);
            parcel.writeDouble(d1);
            if (!flag)
            {
                i = 0;
            }
            parcel.writeInt(i);
            le.transact(7, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(String s, LaunchOptions launchoptions)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            parcel.writeString(s);
            if (launchoptions == null)
            {
                break MISSING_BLOCK_LABEL_50;
            }
            parcel.writeInt(1);
            launchoptions.writeToParcel(parcel, 0);
_L1:
            le.transact(13, parcel, null, 1);
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(String s, String s1, long l)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeLong(l);
            le.transact(9, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(String s, byte abyte0[], long l)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            parcel.writeString(s);
            parcel.writeByteArray(abyte0);
            parcel.writeLong(l);
            le.transact(10, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(boolean flag, double d, boolean flag1)
        {
            int i;
            Parcel parcel;
            i = 1;
            parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            int j;
            if (flag)
            {
                j = i;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
            parcel.writeDouble(d);
            if (!flag1)
            {
                i = 0;
            }
            parcel.writeInt(i);
            le.transact(8, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void aO(String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            parcel.writeString(s);
            le.transact(5, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void aP(String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            parcel.writeString(s);
            le.transact(11, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void aQ(String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            parcel.writeString(s);
            le.transact(12, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public IBinder asBinder()
        {
            return le;
        }

        public void disconnect()
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            le.transact(1, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void h(String s, boolean flag)
        {
            int i;
            Parcel parcel;
            i = 1;
            parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            parcel.writeString(s);
            if (!flag)
            {
                i = 0;
            }
            parcel.writeInt(i);
            le.transact(2, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void hI()
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            le.transact(6, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void hU()
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            le.transact(4, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void m(String s, String s1)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
            parcel.writeString(s);
            parcel.writeString(s1);
            le.transact(3, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        a(IBinder ibinder)
        {
            le = ibinder;
        }
    }


    public static jg ar(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
        if (iinterface != null && (iinterface instanceof jg))
        {
            return (jg)iinterface;
        } else
        {
            return new a(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        String s;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.cast.internal.ICastDeviceController");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            disconnect();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            String s1 = parcel.readString();
            int l = parcel.readInt();
            boolean flag3 = false;
            if (l != 0)
            {
                flag3 = true;
            }
            h(s1, flag3);
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            m(parcel.readString(), parcel.readString());
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            hU();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            aO(parcel.readString());
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            hI();
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            double d1 = parcel.readDouble();
            double d2 = parcel.readDouble();
            boolean flag2;
            if (parcel.readInt() != 0)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            a(d1, d2, flag2);
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            boolean flag;
            double d;
            int k;
            boolean flag1;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            d = parcel.readDouble();
            k = parcel.readInt();
            flag1 = false;
            if (k != 0)
            {
                flag1 = true;
            }
            a(flag, d, flag1);
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            a(parcel.readString(), parcel.readString(), parcel.readLong());
            return true;

        case 10: // '\n'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            a(parcel.readString(), parcel.createByteArray(), parcel.readLong());
            return true;

        case 11: // '\013'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            aP(parcel.readString());
            return true;

        case 12: // '\f'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            aQ(parcel.readString());
            return true;

        case 13: // '\r'
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            s = parcel.readString();
            break;
        }
        LaunchOptions launchoptions;
        if (parcel.readInt() != 0)
        {
            launchoptions = (LaunchOptions)LaunchOptions.CREATOR.createFromParcel(parcel);
        } else
        {
            launchoptions = null;
        }
        a(s, launchoptions);
        return true;
    }
}
