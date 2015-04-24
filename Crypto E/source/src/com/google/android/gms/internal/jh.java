// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;

// Referenced classes of package com.google.android.gms.internal:
//            iz, je

public interface jh
    extends IInterface
{
    public static abstract class a extends Binder
        implements jh
    {

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        {
            int k;
            je je1;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                aR(parcel.readInt());
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                int k1 = parcel.readInt();
                ApplicationMetadata applicationmetadata = null;
                if (k1 != 0)
                {
                    applicationmetadata = (ApplicationMetadata)ApplicationMetadata.CREATOR.createFromParcel(parcel);
                }
                String s1 = parcel.readString();
                String s2 = parcel.readString();
                int l1 = parcel.readInt();
                boolean flag1 = false;
                if (l1 != 0)
                {
                    flag1 = true;
                }
                a(applicationmetadata, s1, s2, flag1);
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                aS(parcel.readInt());
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                String s = parcel.readString();
                double d = parcel.readDouble();
                int j1 = parcel.readInt();
                boolean flag = false;
                if (j1 != 0)
                {
                    flag = true;
                }
                a(s, d, flag);
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                l(parcel.readString(), parcel.readString());
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                b(parcel.readString(), parcel.createByteArray());
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                aU(parcel.readInt());
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                aT(parcel.readInt());
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                onApplicationDisconnected(parcel.readInt());
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                a(parcel.readString(), parcel.readLong(), parcel.readInt());
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                a(parcel.readString(), parcel.readLong());
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                int i1 = parcel.readInt();
                iz iz1 = null;
                if (i1 != 0)
                {
                    iz1 = (iz)iz.CREATOR.createFromParcel(parcel);
                }
                b(iz1);
                return true;

            case 13: // '\r'
                parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                k = parcel.readInt();
                je1 = null;
                break;
            }
            if (k != 0)
            {
                je1 = (je)je.CREATOR.createFromParcel(parcel);
            }
            b(je1);
            return true;
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.cast.internal.ICastDeviceControllerListener");
        }
    }


    public abstract void a(ApplicationMetadata applicationmetadata, String s, String s1, boolean flag);

    public abstract void a(String s, double d, boolean flag);

    public abstract void a(String s, long l1);

    public abstract void a(String s, long l1, int i);

    public abstract void aR(int i);

    public abstract void aS(int i);

    public abstract void aT(int i);

    public abstract void aU(int i);

    public abstract void b(iz iz);

    public abstract void b(je je);

    public abstract void b(String s, byte abyte0[]);

    public abstract void l(String s, String s1);

    public abstract void onApplicationDisconnected(int i);
}
