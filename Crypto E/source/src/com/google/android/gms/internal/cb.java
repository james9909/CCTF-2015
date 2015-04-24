// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.d;

public interface cb
    extends IInterface
{
    public static abstract class a extends Binder
        implements cb
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
                parcel1.writeString("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                j(parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                recordImpression();
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                String s3 = bH();
                parcel1.writeNoException();
                parcel1.writeString(s3);
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                d d2 = bI();
                parcel1.writeNoException();
                IBinder ibinder1 = null;
                if (d2 != null)
                {
                    ibinder1 = d2.asBinder();
                }
                parcel1.writeStrongBinder(ibinder1);
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                String s2 = getBody();
                parcel1.writeNoException();
                parcel1.writeString(s2);
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                d d1 = bO();
                parcel1.writeNoException();
                IBinder ibinder = null;
                if (d1 != null)
                {
                    ibinder = d1.asBinder();
                }
                parcel1.writeStrongBinder(ibinder);
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                String s1 = bK();
                parcel1.writeNoException();
                parcel1.writeString(s1);
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                String s = bP();
                parcel1.writeNoException();
                parcel1.writeString(s);
                return true;
            }
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        }
    }


    public abstract String bH();

    public abstract d bI();

    public abstract String bK();

    public abstract d bO();

    public abstract String bP();

    public abstract String getBody();

    public abstract void j(int i);

    public abstract void recordImpression();
}
