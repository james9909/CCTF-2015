// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.common.internal:
//            o, f

public interface p
    extends IInterface
{
    public static abstract class a extends Binder
        implements p
    {

        public static p ay(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (iinterface != null && (iinterface instanceof p))
            {
                return (p)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int i1, Parcel parcel, Parcel parcel1, int j1)
        {
            o o1;
            int k1;
            f f1;
            switch (i1)
            {
            default:
                return super.onTransact(i1, parcel, parcel1, j1);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o26 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int l12 = parcel.readInt();
                String s30 = parcel.readString();
                String s31 = parcel.readString();
                String as3[] = parcel.createStringArray();
                String s32 = parcel.readString();
                Bundle bundle24;
                if (parcel.readInt() != 0)
                {
                    bundle24 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle24 = null;
                }
                a(o26, l12, s30, s31, as3, s32, bundle24);
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o25 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int j12 = parcel.readInt();
                String s29 = parcel.readString();
                int k12 = parcel.readInt();
                Bundle bundle23 = null;
                if (k12 != 0)
                {
                    bundle23 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                a(o25, j12, s29, bundle23);
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o24 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int l11 = parcel.readInt();
                String s28 = parcel.readString();
                int i12 = parcel.readInt();
                Bundle bundle22 = null;
                if (i12 != 0)
                {
                    bundle22 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                b(o24, l11, s28, bundle22);
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o23 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int j11 = parcel.readInt();
                String s27 = parcel.readString();
                int k11 = parcel.readInt();
                Bundle bundle21 = null;
                if (k11 != 0)
                {
                    bundle21 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                c(o23, j11, s27, bundle21);
                parcel1.writeNoException();
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o22 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int l10 = parcel.readInt();
                String s26 = parcel.readString();
                int i11 = parcel.readInt();
                Bundle bundle20 = null;
                if (i11 != 0)
                {
                    bundle20 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                d(o22, l10, s26, bundle20);
                parcel1.writeNoException();
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o21 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int j10 = parcel.readInt();
                String s25 = parcel.readString();
                int k10 = parcel.readInt();
                Bundle bundle19 = null;
                if (k10 != 0)
                {
                    bundle19 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                e(o21, j10, s25, bundle19);
                parcel1.writeNoException();
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o20 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int i10 = parcel.readInt();
                String s21 = parcel.readString();
                String s22 = parcel.readString();
                String as2[] = parcel.createStringArray();
                String s23 = parcel.readString();
                IBinder ibinder1 = parcel.readStrongBinder();
                String s24 = parcel.readString();
                Bundle bundle18;
                if (parcel.readInt() != 0)
                {
                    bundle18 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle18 = null;
                }
                a(o20, i10, s21, s22, as2, s23, ibinder1, s24, bundle18);
                parcel1.writeNoException();
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel1.writeNoException();
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o19 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int k9 = parcel.readInt();
                String s20 = parcel.readString();
                int l9 = parcel.readInt();
                Bundle bundle17 = null;
                if (l9 != 0)
                {
                    bundle17 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                f(o19, k9, s20, bundle17);
                parcel1.writeNoException();
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o18 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int i9 = parcel.readInt();
                String s19 = parcel.readString();
                int j9 = parcel.readInt();
                Bundle bundle16 = null;
                if (j9 != 0)
                {
                    bundle16 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                g(o18, i9, s19, bundle16);
                parcel1.writeNoException();
                return true;

            case 13: // '\r'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o17 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int k8 = parcel.readInt();
                String s18 = parcel.readString();
                int l8 = parcel.readInt();
                Bundle bundle15 = null;
                if (l8 != 0)
                {
                    bundle15 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                h(o17, k8, s18, bundle15);
                parcel1.writeNoException();
                return true;

            case 14: // '\016'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o16 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int i8 = parcel.readInt();
                String s17 = parcel.readString();
                int j8 = parcel.readInt();
                Bundle bundle14 = null;
                if (j8 != 0)
                {
                    bundle14 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                i(o16, i8, s17, bundle14);
                parcel1.writeNoException();
                return true;

            case 15: // '\017'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o15 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int k7 = parcel.readInt();
                String s16 = parcel.readString();
                int l7 = parcel.readInt();
                Bundle bundle13 = null;
                if (l7 != 0)
                {
                    bundle13 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                j(o15, k7, s16, bundle13);
                parcel1.writeNoException();
                return true;

            case 16: // '\020'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o14 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int i7 = parcel.readInt();
                String s15 = parcel.readString();
                int j7 = parcel.readInt();
                Bundle bundle12 = null;
                if (j7 != 0)
                {
                    bundle12 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                k(o14, i7, s15, bundle12);
                parcel1.writeNoException();
                return true;

            case 17: // '\021'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o13 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int k6 = parcel.readInt();
                String s14 = parcel.readString();
                int l6 = parcel.readInt();
                Bundle bundle11 = null;
                if (l6 != 0)
                {
                    bundle11 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                l(o13, k6, s14, bundle11);
                parcel1.writeNoException();
                return true;

            case 18: // '\022'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o12 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int i6 = parcel.readInt();
                String s13 = parcel.readString();
                int j6 = parcel.readInt();
                Bundle bundle10 = null;
                if (j6 != 0)
                {
                    bundle10 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                m(o12, i6, s13, bundle10);
                parcel1.writeNoException();
                return true;

            case 19: // '\023'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o11 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int l5 = parcel.readInt();
                String s12 = parcel.readString();
                IBinder ibinder = parcel.readStrongBinder();
                Bundle bundle9;
                if (parcel.readInt() != 0)
                {
                    bundle9 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle9 = null;
                }
                a(o11, l5, s12, ibinder, bundle9);
                parcel1.writeNoException();
                return true;

            case 20: // '\024'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o10 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int k5 = parcel.readInt();
                String s10 = parcel.readString();
                String as1[] = parcel.createStringArray();
                String s11 = parcel.readString();
                Bundle bundle8;
                if (parcel.readInt() != 0)
                {
                    bundle8 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle8 = null;
                }
                a(o10, k5, s10, as1, s11, bundle8);
                parcel1.writeNoException();
                return true;

            case 21: // '\025'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                b(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 22: // '\026'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                c(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 23: // '\027'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o9 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int i5 = parcel.readInt();
                String s9 = parcel.readString();
                int j5 = parcel.readInt();
                Bundle bundle7 = null;
                if (j5 != 0)
                {
                    bundle7 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                n(o9, i5, s9, bundle7);
                parcel1.writeNoException();
                return true;

            case 24: // '\030'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                d(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 25: // '\031'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o8 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int k4 = parcel.readInt();
                String s8 = parcel.readString();
                int l4 = parcel.readInt();
                Bundle bundle6 = null;
                if (l4 != 0)
                {
                    bundle6 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                o(o8, k4, s8, bundle6);
                parcel1.writeNoException();
                return true;

            case 26: // '\032'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                e(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 27: // '\033'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o7 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int i4 = parcel.readInt();
                String s7 = parcel.readString();
                int j4 = parcel.readInt();
                Bundle bundle5 = null;
                if (j4 != 0)
                {
                    bundle5 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                p(o7, i4, s7, bundle5);
                parcel1.writeNoException();
                return true;

            case 28: // '\034'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                b(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel1.writeNoException();
                return true;

            case 30: // '\036'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o6 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int l3 = parcel.readInt();
                String s5 = parcel.readString();
                String s6 = parcel.readString();
                String as[] = parcel.createStringArray();
                Bundle bundle4;
                if (parcel.readInt() != 0)
                {
                    bundle4 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle4 = null;
                }
                a(o6, l3, s5, s6, as, bundle4);
                parcel1.writeNoException();
                return true;

            case 31: // '\037'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                f(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 32: // ' '
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                g(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 33: // '!'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel1.writeNoException();
                return true;

            case 34: // '"'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 35: // '#'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                h(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 36: // '$'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                i(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 37: // '%'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o5 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int j3 = parcel.readInt();
                String s4 = parcel.readString();
                int k3 = parcel.readInt();
                Bundle bundle3 = null;
                if (k3 != 0)
                {
                    bundle3 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                q(o5, j3, s4, bundle3);
                parcel1.writeNoException();
                return true;

            case 38: // '&'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o4 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int l2 = parcel.readInt();
                String s3 = parcel.readString();
                int i3 = parcel.readInt();
                Bundle bundle2 = null;
                if (i3 != 0)
                {
                    bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                r(o4, l2, s3, bundle2);
                parcel1.writeNoException();
                return true;

            case 40: // '('
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                j(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 41: // ')'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o3 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int j2 = parcel.readInt();
                String s2 = parcel.readString();
                int k2 = parcel.readInt();
                Bundle bundle1 = null;
                if (k2 != 0)
                {
                    bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                s(o3, j2, s2, bundle1);
                parcel1.writeNoException();
                return true;

            case 42: // '*'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                k(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 43: // '+'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o o2 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                int l1 = parcel.readInt();
                String s1 = parcel.readString();
                int i2 = parcel.readInt();
                Bundle bundle = null;
                if (i2 != 0)
                {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                t(o2, l1, s1, bundle);
                parcel1.writeNoException();
                return true;

            case 44: // ','
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                l(com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 46: // '.'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                o1 = com.google.android.gms.common.internal.o.a.ax(parcel.readStrongBinder());
                k1 = parcel.readInt();
                f1 = null;
                break;
            }
            if (k1 != 0)
            {
                f1 = (f)f.CREATOR.createFromParcel(parcel);
            }
            a(o1, f1);
            parcel1.writeNoException();
            return true;
        }
    }

    static class a.a
        implements p
    {

        private IBinder le;

        public void a(o o1, int i1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_68;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            le.transact(4, parcel, parcel1, 0);
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

        public void a(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_80;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(3, parcel, parcel1, 0);
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

        public void a(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
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
              goto _L5
        }

        public void a(o o1, int i1, String s1, IBinder ibinder, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder1 = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder1);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            parcel.writeStrongBinder(ibinder);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(19, parcel, parcel1, 0);
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

        public void a(o o1, int i1, String s1, String s2)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_88;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            parcel.writeString(s2);
            le.transact(34, parcel, parcel1, 0);
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

        public void a(o o1, int i1, String s1, String s2, String s3, String as[])
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_102;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeString(s3);
            parcel.writeStringArray(as);
            le.transact(33, parcel, parcel1, 0);
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

        public void a(o o1, int i1, String s1, String s2, String as[])
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_95;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeStringArray(as);
            le.transact(10, parcel, parcel1, 0);
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

        public void a(o o1, int i1, String s1, String s2, String as[], Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeStringArray(as);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(30, parcel, parcel1, 0);
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

        public void a(o o1, int i1, String s1, String s2, String as[], String s3, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeStringArray(as);
            parcel.writeString(s3);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
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
              goto _L5
        }

        public void a(o o1, int i1, String s1, String s2, String as[], String s3, IBinder ibinder, 
                String s4, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder1 = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder1);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeStringArray(as);
            parcel.writeString(s3);
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s4);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(9, parcel, parcel1, 0);
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

        public void a(o o1, int i1, String s1, String as[], String s2, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            parcel.writeString(s2);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(20, parcel, parcel1, 0);
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

        public void a(o o1, f f1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (f1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            f1.writeToParcel(parcel, 0);
_L6:
            le.transact(46, parcel, parcel1, 0);
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

        public void b(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(21, parcel, parcel1, 0);
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

        public void b(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(5, parcel, parcel1, 0);
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

        public void b(o o1, int i1, String s1, String s2, String as[])
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_95;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeStringArray(as);
            le.transact(28, parcel, parcel1, 0);
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

        public void c(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(22, parcel, parcel1, 0);
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

        public void c(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
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
              goto _L5
        }

        public void d(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(24, parcel, parcel1, 0);
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

        public void d(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
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

        public void e(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(26, parcel, parcel1, 0);
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

        public void e(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(8, parcel, parcel1, 0);
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

        public void f(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(31, parcel, parcel1, 0);
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

        public void f(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(11, parcel, parcel1, 0);
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

        public void g(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(32, parcel, parcel1, 0);
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

        public void g(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(12, parcel, parcel1, 0);
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

        public void h(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(35, parcel, parcel1, 0);
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

        public void h(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(13, parcel, parcel1, 0);
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

        public void i(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(36, parcel, parcel1, 0);
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

        public void i(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(14, parcel, parcel1, 0);
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

        public void j(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(40, parcel, parcel1, 0);
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

        public void j(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(15, parcel, parcel1, 0);
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

        public void k(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(42, parcel, parcel1, 0);
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

        public void k(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(16, parcel, parcel1, 0);
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

        public void l(o o1, int i1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = o1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            le.transact(44, parcel, parcel1, 0);
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

        public void l(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(17, parcel, parcel1, 0);
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

        public void m(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(18, parcel, parcel1, 0);
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

        public void n(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(23, parcel, parcel1, 0);
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

        public void o(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(25, parcel, parcel1, 0);
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

        public void p(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(27, parcel, parcel1, 0);
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

        public void q(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(37, parcel, parcel1, 0);
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

        public void r(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(38, parcel, parcel1, 0);
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

        public void s(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(41, parcel, parcel1, 0);
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

        public void t(o o1, int i1, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = o1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            le.transact(43, parcel, parcel1, 0);
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

        a.a(IBinder ibinder)
        {
            le = ibinder;
        }
    }


    public abstract void a(o o1, int i1);

    public abstract void a(o o1, int i1, String s1);

    public abstract void a(o o1, int i1, String s1, Bundle bundle);

    public abstract void a(o o1, int i1, String s1, IBinder ibinder, Bundle bundle);

    public abstract void a(o o1, int i1, String s1, String s2);

    public abstract void a(o o1, int i1, String s1, String s2, String s3, String as[]);

    public abstract void a(o o1, int i1, String s1, String s2, String as[]);

    public abstract void a(o o1, int i1, String s1, String s2, String as[], Bundle bundle);

    public abstract void a(o o1, int i1, String s1, String s2, String as[], String s3, Bundle bundle);

    public abstract void a(o o1, int i1, String s1, String s2, String as[], String s3, IBinder ibinder, 
            String s4, Bundle bundle);

    public abstract void a(o o1, int i1, String s1, String as[], String s2, Bundle bundle);

    public abstract void a(o o1, f f1);

    public abstract void b(o o1, int i1, String s1);

    public abstract void b(o o1, int i1, String s1, Bundle bundle);

    public abstract void b(o o1, int i1, String s1, String s2, String as[]);

    public abstract void c(o o1, int i1, String s1);

    public abstract void c(o o1, int i1, String s1, Bundle bundle);

    public abstract void d(o o1, int i1, String s1);

    public abstract void d(o o1, int i1, String s1, Bundle bundle);

    public abstract void e(o o1, int i1, String s1);

    public abstract void e(o o1, int i1, String s1, Bundle bundle);

    public abstract void f(o o1, int i1, String s1);

    public abstract void f(o o1, int i1, String s1, Bundle bundle);

    public abstract void g(o o1, int i1, String s1);

    public abstract void g(o o1, int i1, String s1, Bundle bundle);

    public abstract void h(o o1, int i1, String s1);

    public abstract void h(o o1, int i1, String s1, Bundle bundle);

    public abstract void i(o o1, int i1, String s1);

    public abstract void i(o o1, int i1, String s1, Bundle bundle);

    public abstract void j(o o1, int i1, String s1);

    public abstract void j(o o1, int i1, String s1, Bundle bundle);

    public abstract void k(o o1, int i1, String s1);

    public abstract void k(o o1, int i1, String s1, Bundle bundle);

    public abstract void l(o o1, int i1, String s1);

    public abstract void l(o o1, int i1, String s1, Bundle bundle);

    public abstract void m(o o1, int i1, String s1, Bundle bundle);

    public abstract void n(o o1, int i1, String s1, Bundle bundle);

    public abstract void o(o o1, int i1, String s1, Bundle bundle);

    public abstract void p(o o1, int i1, String s1, Bundle bundle);

    public abstract void q(o o1, int i1, String s1, Bundle bundle);

    public abstract void r(o o1, int i1, String s1, Bundle bundle);

    public abstract void s(o o1, int i1, String s1, Bundle bundle);

    public abstract void t(o o1, int i1, String s1, Bundle bundle);
}
