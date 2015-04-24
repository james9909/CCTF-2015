// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.d;

public interface ca
    extends IInterface
{
    public static abstract class a extends Binder
        implements ca
    {

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int k)
        {
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, k);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                j(parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                recordImpression();
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                String s4 = bH();
                parcel1.writeNoException();
                parcel1.writeString(s4);
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                d d3 = bI();
                parcel1.writeNoException();
                IBinder ibinder1 = null;
                if (d3 != null)
                {
                    ibinder1 = d3.asBinder();
                }
                parcel1.writeStrongBinder(ibinder1);
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                String s3 = getBody();
                parcel1.writeNoException();
                parcel1.writeString(s3);
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                d d2 = bJ();
                parcel1.writeNoException();
                IBinder ibinder = null;
                if (d2 != null)
                {
                    ibinder = d2.asBinder();
                }
                parcel1.writeStrongBinder(ibinder);
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                String s2 = bK();
                parcel1.writeNoException();
                parcel1.writeString(s2);
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                double d1 = bL();
                parcel1.writeNoException();
                parcel1.writeDouble(d1);
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                String s1 = bM();
                parcel1.writeNoException();
                parcel1.writeString(s1);
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                String s = bN();
                parcel1.writeNoException();
                parcel1.writeString(s);
                return true;
            }
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
        }
    }


    public abstract String bH();

    public abstract d bI();

    public abstract d bJ();

    public abstract String bK();

    public abstract double bL();

    public abstract String bM();

    public abstract String bN();

    public abstract String getBody();

    public abstract void j(int i);

    public abstract void recordImpression();
}
