// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.d;

// Referenced classes of package com.google.android.gms.internal:
//            av, df, ay, az, 
//            aw

public interface de
    extends IInterface
{
    public static abstract class a extends Binder
        implements de
    {

        public static de o(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (iinterface != null && (iinterface instanceof de))
            {
                return (de)iinterface;
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
                parcel1.writeString("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                d d5 = com.google.android.gms.dynamic.d.a.aX(parcel.readStrongBinder());
                ay ay2;
                av av4;
                if (parcel.readInt() != 0)
                {
                    ay2 = ay.CREATOR.c(parcel);
                } else
                {
                    ay2 = null;
                }
                if (parcel.readInt() != 0)
                {
                    av4 = av.CREATOR.b(parcel);
                } else
                {
                    av4 = null;
                }
                a(d5, ay2, av4, parcel.readString(), df.a.p(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                d d4 = getView();
                parcel1.writeNoException();
                IBinder ibinder = null;
                if (d4 != null)
                {
                    ibinder = d4.asBinder();
                }
                parcel1.writeStrongBinder(ibinder);
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                d d3 = com.google.android.gms.dynamic.d.a.aX(parcel.readStrongBinder());
                int k = parcel.readInt();
                av av3 = null;
                if (k != 0)
                {
                    av3 = av.CREATOR.b(parcel);
                }
                a(d3, av3, parcel.readString(), df.a.p(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                showInterstitial();
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                destroy();
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                d d2 = com.google.android.gms.dynamic.d.a.aX(parcel.readStrongBinder());
                ay ay1;
                av av2;
                if (parcel.readInt() != 0)
                {
                    ay1 = ay.CREATOR.c(parcel);
                } else
                {
                    ay1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    av2 = av.CREATOR.b(parcel);
                } else
                {
                    av2 = null;
                }
                a(d2, ay1, av2, parcel.readString(), parcel.readString(), df.a.p(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                d d1 = com.google.android.gms.dynamic.d.a.aX(parcel.readStrongBinder());
                av av1;
                if (parcel.readInt() != 0)
                {
                    av1 = av.CREATOR.b(parcel);
                } else
                {
                    av1 = null;
                }
                a(d1, av1, parcel.readString(), parcel.readString(), df.a.p(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                pause();
                parcel1.writeNoException();
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                resume();
                parcel1.writeNoException();
                return true;
            }
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        }
    }

    static class a.a
        implements de
    {

        private IBinder le;

        public void a(d d1, av av1, String s, df df1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = d1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (av1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            av1.writeToParcel(parcel, 0);
_L6:
            parcel.writeString(s);
            IBinder ibinder1;
            ibinder1 = null;
            if (df1 == null)
            {
                break MISSING_BLOCK_LABEL_76;
            }
            ibinder1 = df1.asBinder();
            parcel.writeStrongBinder(ibinder1);
            le.transact(3, parcel, parcel1, 0);
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

        public void a(d d1, av av1, String s, String s1, df df1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = d1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (av1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            av1.writeToParcel(parcel, 0);
_L6:
            parcel.writeString(s);
            parcel.writeString(s1);
            IBinder ibinder1;
            ibinder1 = null;
            if (df1 == null)
            {
                break MISSING_BLOCK_LABEL_83;
            }
            ibinder1 = df1.asBinder();
            parcel.writeStrongBinder(ibinder1);
            le.transact(7, parcel, parcel1, 0);
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

        public void a(d d1, ay ay1, av av1, String s, df df1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = d1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (ay1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            ay1.writeToParcel(parcel, 0);
_L6:
            if (av1 == null)
            {
                break MISSING_BLOCK_LABEL_163;
            }
            parcel.writeInt(1);
            av1.writeToParcel(parcel, 0);
_L7:
            parcel.writeString(s);
            IBinder ibinder1;
            ibinder1 = null;
            if (df1 == null)
            {
                break MISSING_BLOCK_LABEL_94;
            }
            ibinder1 = df1.asBinder();
            parcel.writeStrongBinder(ibinder1);
            le.transact(1, parcel, parcel1, 0);
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

        public void a(d d1, ay ay1, av av1, String s, String s1, df df1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = d1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (ay1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            ay1.writeToParcel(parcel, 0);
_L6:
            if (av1 == null)
            {
                break MISSING_BLOCK_LABEL_171;
            }
            parcel.writeInt(1);
            av1.writeToParcel(parcel, 0);
_L7:
            parcel.writeString(s);
            parcel.writeString(s1);
            IBinder ibinder1;
            ibinder1 = null;
            if (df1 == null)
            {
                break MISSING_BLOCK_LABEL_101;
            }
            ibinder1 = df1.asBinder();
            parcel.writeStrongBinder(ibinder1);
            le.transact(6, parcel, parcel1, 0);
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

        public void destroy()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            le.transact(5, parcel, parcel1, 0);
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

        public d getView()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            d d1;
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            le.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            d1 = com.google.android.gms.dynamic.d.a.aX(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return d1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void pause()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            le.transact(8, parcel, parcel1, 0);
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

        public void resume()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            le.transact(9, parcel, parcel1, 0);
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

        public void showInterstitial()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            le.transact(4, parcel, parcel1, 0);
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


    public abstract void a(d d, av av, String s, df df);

    public abstract void a(d d, av av, String s, String s1, df df);

    public abstract void a(d d, ay ay, av av, String s, df df);

    public abstract void a(d d, ay ay, av av, String s, String s1, df df);

    public abstract void destroy();

    public abstract d getView();

    public abstract void pause();

    public abstract void resume();

    public abstract void showInterstitial();
}
