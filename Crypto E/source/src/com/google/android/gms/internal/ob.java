// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.GeofencingRequestCreator;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.a;
import com.google.android.gms.location.c;
import com.google.android.gms.location.d;
import com.google.android.gms.location.e;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.g;
import com.google.android.gms.maps.model.i;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            oa, oe, ol, pa, 
//            on, oz, op, or, 
//            ov, ox, oj, og, 
//            of, oo, pb, oy, 
//            os, om, ok, oq

public interface ob
    extends IInterface
{
    public static abstract class a extends Binder
        implements ob
    {

        public static ob bw(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (iinterface != null && (iinterface instanceof ob))
            {
                return (ob)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int j, Parcel parcel, Parcel parcel1, int k)
        {
            switch (j)
            {
            default:
                return super.onTransact(j, parcel, parcel1, k);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                java.util.ArrayList arraylist2 = parcel.createTypedArrayList(og.CREATOR);
                PendingIntent pendingintent11;
                if (parcel.readInt() != 0)
                {
                    pendingintent11 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent11 = null;
                }
                a(arraylist2, pendingintent11, oa.a.bv(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 57: // '9'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                GeofencingRequest geofencingrequest;
                PendingIntent pendingintent10;
                if (parcel.readInt() != 0)
                {
                    geofencingrequest = GeofencingRequest.CREATOR.createFromParcel(parcel);
                } else
                {
                    geofencingrequest = null;
                }
                if (parcel.readInt() != 0)
                {
                    pendingintent10 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent10 = null;
                }
                a(geofencingrequest, pendingintent10, oa.a.bv(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                PendingIntent pendingintent9;
                if (parcel.readInt() != 0)
                {
                    pendingintent9 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent9 = null;
                }
                a(pendingintent9, oa.a.bv(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.createStringArray(), oa.a.bv(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(oa.a.bv(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                long l4 = parcel.readLong();
                boolean flag1;
                PendingIntent pendingintent8;
                if (parcel.readInt() != 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (parcel.readInt() != 0)
                {
                    pendingintent8 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent8 = null;
                }
                a(l4, flag1, pendingintent8);
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                PendingIntent pendingintent7;
                if (parcel.readInt() != 0)
                {
                    pendingintent7 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent7 = null;
                }
                a(pendingintent7);
                parcel1.writeNoException();
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                Location location3 = pr();
                parcel1.writeNoException();
                if (location3 != null)
                {
                    parcel1.writeInt(1);
                    location3.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                int i4 = parcel.readInt();
                LocationRequest locationrequest2 = null;
                if (i4 != 0)
                {
                    locationrequest2 = LocationRequest.CREATOR.dn(parcel);
                }
                a(locationrequest2, com.google.android.gms.location.a.a.bt(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 20: // '\024'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                int l3 = parcel.readInt();
                LocationRequest locationrequest1 = null;
                if (l3 != 0)
                {
                    locationrequest1 = LocationRequest.CREATOR.dn(parcel);
                }
                a(locationrequest1, com.google.android.gms.location.a.a.bt(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LocationRequest locationrequest;
                PendingIntent pendingintent6;
                if (parcel.readInt() != 0)
                {
                    locationrequest = LocationRequest.CREATOR.dn(parcel);
                } else
                {
                    locationrequest = null;
                }
                if (parcel.readInt() != 0)
                {
                    pendingintent6 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent6 = null;
                }
                a(locationrequest, pendingintent6);
                parcel1.writeNoException();
                return true;

            case 52: // '4'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                int k3 = parcel.readInt();
                oe oe2 = null;
                if (k3 != 0)
                {
                    oe2 = oe.CREATOR.dq(parcel);
                }
                a(oe2, com.google.android.gms.location.a.a.bt(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 53: // '5'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                oe oe1;
                PendingIntent pendingintent5;
                if (parcel.readInt() != 0)
                {
                    oe1 = oe.CREATOR.dq(parcel);
                } else
                {
                    oe1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    pendingintent5 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent5 = null;
                }
                a(oe1, pendingintent5);
                parcel1.writeNoException();
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(com.google.android.gms.location.a.a.bt(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                PendingIntent pendingintent4;
                if (parcel.readInt() != 0)
                {
                    pendingintent4 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent4 = null;
                }
                b(pendingintent4);
                parcel1.writeNoException();
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                int j3 = parcel.readInt();
                boolean flag = false;
                if (j3 != 0)
                {
                    flag = true;
                }
                U(flag);
                parcel1.writeNoException();
                return true;

            case 13: // '\r'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                Location location2;
                if (parcel.readInt() != 0)
                {
                    location2 = (Location)Location.CREATOR.createFromParcel(parcel);
                } else
                {
                    location2 = null;
                }
                b(location2);
                parcel1.writeNoException();
                return true;

            case 14: // '\016'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LatLngBounds latlngbounds3;
                int i3;
                on on4;
                pa pa15;
                if (parcel.readInt() != 0)
                {
                    latlngbounds3 = LatLngBounds.CREATOR.dH(parcel);
                } else
                {
                    latlngbounds3 = null;
                }
                i3 = parcel.readInt();
                if (parcel.readInt() != 0)
                {
                    on4 = on.CREATOR.du(parcel);
                } else
                {
                    on4 = null;
                }
                if (parcel.readInt() != 0)
                {
                    pa15 = pa.CREATOR.dA(parcel);
                } else
                {
                    pa15 = null;
                }
                a(latlngbounds3, i3, on4, pa15, oz.a.bx(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 47: // '/'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LatLngBounds latlngbounds2;
                int k2;
                String s3;
                on on3;
                int l2;
                pa pa14;
                if (parcel.readInt() != 0)
                {
                    latlngbounds2 = LatLngBounds.CREATOR.dH(parcel);
                } else
                {
                    latlngbounds2 = null;
                }
                k2 = parcel.readInt();
                s3 = parcel.readString();
                if (parcel.readInt() != 0)
                {
                    on3 = on.CREATOR.du(parcel);
                } else
                {
                    on3 = null;
                }
                l2 = parcel.readInt();
                pa14 = null;
                if (l2 != 0)
                {
                    pa14 = pa.CREATOR.dA(parcel);
                }
                a(latlngbounds2, k2, s3, on3, pa14, oz.a.bx(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 15: // '\017'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                String s2 = parcel.readString();
                int j2 = parcel.readInt();
                pa pa13 = null;
                if (j2 != 0)
                {
                    pa13 = pa.CREATOR.dA(parcel);
                }
                a(s2, pa13, oz.a.bx(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 16: // '\020'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LatLng latlng;
                on on2;
                int i2;
                pa pa12;
                if (parcel.readInt() != 0)
                {
                    latlng = LatLng.CREATOR.dI(parcel);
                } else
                {
                    latlng = null;
                }
                if (parcel.readInt() != 0)
                {
                    on2 = on.CREATOR.du(parcel);
                } else
                {
                    on2 = null;
                }
                i2 = parcel.readInt();
                pa12 = null;
                if (i2 != 0)
                {
                    pa12 = pa.CREATOR.dA(parcel);
                }
                a(latlng, on2, pa12, oz.a.bx(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 17: // '\021'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                on on1;
                int l1;
                pa pa11;
                if (parcel.readInt() != 0)
                {
                    on1 = on.CREATOR.du(parcel);
                } else
                {
                    on1 = null;
                }
                l1 = parcel.readInt();
                pa11 = null;
                if (l1 != 0)
                {
                    pa11 = pa.CREATOR.dA(parcel);
                }
                a(on1, pa11, oz.a.bx(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 42: // '*'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                String s1 = parcel.readString();
                int k1 = parcel.readInt();
                pa pa10 = null;
                if (k1 != 0)
                {
                    pa10 = pa.CREATOR.dA(parcel);
                }
                b(s1, pa10, oz.a.bx(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 58: // ':'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                java.util.ArrayList arraylist1 = parcel.createStringArrayList();
                int j1 = parcel.readInt();
                pa pa9 = null;
                if (j1 != 0)
                {
                    pa9 = pa.CREATOR.dA(parcel);
                }
                a(arraylist1, pa9, oz.a.bx(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 50: // '2'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                ox ox1;
                LatLngBounds latlngbounds1;
                java.util.ArrayList arraylist;
                pa pa8;
                if (parcel.readInt() != 0)
                {
                    ox1 = ox.CREATOR.dz(parcel);
                } else
                {
                    ox1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    latlngbounds1 = LatLngBounds.CREATOR.dH(parcel);
                } else
                {
                    latlngbounds1 = null;
                }
                arraylist = parcel.createStringArrayList();
                if (parcel.readInt() != 0)
                {
                    pa8 = pa.CREATOR.dA(parcel);
                } else
                {
                    pa8 = null;
                }
                a(ox1, latlngbounds1, arraylist, pa8, oz.a.bx(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 18: // '\022'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                or or1;
                pa pa7;
                PendingIntent pendingintent3;
                if (parcel.readInt() != 0)
                {
                    or1 = or.CREATOR.dw(parcel);
                } else
                {
                    or1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    pa7 = pa.CREATOR.dA(parcel);
                } else
                {
                    pa7 = null;
                }
                if (parcel.readInt() != 0)
                {
                    pendingintent3 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent3 = null;
                }
                a(or1, pa7, pendingintent3);
                parcel1.writeNoException();
                return true;

            case 19: // '\023'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                pa pa6;
                PendingIntent pendingintent2;
                if (parcel.readInt() != 0)
                {
                    pa6 = pa.CREATOR.dA(parcel);
                } else
                {
                    pa6 = null;
                }
                if (parcel.readInt() != 0)
                {
                    pendingintent2 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent2 = null;
                }
                a(pa6, pendingintent2);
                parcel1.writeNoException();
                return true;

            case 48: // '0'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                ol ol1;
                pa pa5;
                PendingIntent pendingintent1;
                if (parcel.readInt() != 0)
                {
                    ol1 = ol.CREATOR.dt(parcel);
                } else
                {
                    ol1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    pa5 = pa.CREATOR.dA(parcel);
                } else
                {
                    pa5 = null;
                }
                if (parcel.readInt() != 0)
                {
                    pendingintent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent1 = null;
                }
                a(ol1, pa5, pendingintent1);
                parcel1.writeNoException();
                return true;

            case 49: // '1'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                pa pa4;
                PendingIntent pendingintent;
                if (parcel.readInt() != 0)
                {
                    pa4 = pa.CREATOR.dA(parcel);
                } else
                {
                    pa4 = null;
                }
                if (parcel.readInt() != 0)
                {
                    pendingintent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent = null;
                }
                b(pa4, pendingintent);
                parcel1.writeNoException();
                return true;

            case 55: // '7'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                String s = parcel.readString();
                LatLngBounds latlngbounds;
                oj oj1;
                pa pa3;
                if (parcel.readInt() != 0)
                {
                    latlngbounds = LatLngBounds.CREATOR.dH(parcel);
                } else
                {
                    latlngbounds = null;
                }
                if (parcel.readInt() != 0)
                {
                    oj1 = oj.CREATOR.ds(parcel);
                } else
                {
                    oj1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    pa3 = pa.CREATOR.dA(parcel);
                } else
                {
                    pa3 = null;
                }
                a(s, latlngbounds, oj1, pa3, oz.a.bx(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 46: // '.'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                ov ov1;
                int i1;
                pa pa2;
                if (parcel.readInt() != 0)
                {
                    ov1 = (ov)ov.CREATOR.createFromParcel(parcel);
                } else
                {
                    ov1 = null;
                }
                i1 = parcel.readInt();
                pa2 = null;
                if (i1 != 0)
                {
                    pa2 = pa.CREATOR.dA(parcel);
                }
                a(ov1, pa2, oz.a.bx(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 21: // '\025'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                Location location1 = cg(parcel.readString());
                parcel1.writeNoException();
                if (location1 != null)
                {
                    parcel1.writeInt(1);
                    location1.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 25: // '\031'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                op op1;
                int l;
                pa pa1;
                if (parcel.readInt() != 0)
                {
                    op1 = op.CREATOR.dv(parcel);
                } else
                {
                    op1 = null;
                }
                l = parcel.readInt();
                pa1 = null;
                if (l != 0)
                {
                    pa1 = pa.CREATOR.dA(parcel);
                }
                a(op1, pa1);
                return true;

            case 26: // '\032'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                Location location;
                if (parcel.readInt() != 0)
                {
                    location = (Location)Location.CREATOR.createFromParcel(parcel);
                } else
                {
                    location = null;
                }
                a(location, parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 34: // '"'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                d d1 = ch(parcel.readString());
                parcel1.writeNoException();
                if (d1 != null)
                {
                    parcel1.writeInt(1);
                    d1.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 51: // '3'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                IBinder ibinder1 = ps();
                parcel1.writeNoException();
                parcel1.writeStrongBinder(ibinder1);
                return true;

            case 54: // '6'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                IBinder ibinder = pt();
                parcel1.writeNoException();
                parcel1.writeStrongBinder(ibinder);
                return true;
            }
        }
    }

    static class a.a
        implements ob
    {

        private IBinder le;

        public void U(boolean flag)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            int i;
            i = 0;
            if (flag)
            {
                i = 1;
            }
            parcel.writeInt(i);
            le.transact(12, parcel, parcel1, 0);
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

        public void a(long l, boolean flag, PendingIntent pendingintent)
        {
            int i;
            Parcel parcel;
            Parcel parcel1;
            i = 1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeLong(l);
            if (!flag)
            {
                i = 0;
            }
            parcel.writeInt(i);
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_94;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L1:
            le.transact(5, parcel, parcel1, 0);
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

        public void a(PendingIntent pendingintent)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L1:
            le.transact(6, parcel, parcel1, 0);
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

        public void a(PendingIntent pendingintent, oa oa1, String s)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pendingintent == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L3:
            if (oa1 == null)
            {
                break MISSING_BLOCK_LABEL_115;
            }
            IBinder ibinder = oa1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(Location location, int i)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (location == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            location.writeToParcel(parcel, 0);
_L1:
            parcel.writeInt(i);
            le.transact(26, parcel, parcel1, 0);
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

        public void a(oa oa1, String s)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (oa1 == null)
            {
                break MISSING_BLOCK_LABEL_68;
            }
            IBinder ibinder = oa1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
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

        public void a(oe oe1, PendingIntent pendingintent)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (oe1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            oe1.writeToParcel(parcel, 0);
_L3:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L4:
            le.transact(53, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(oe oe1, com.google.android.gms.location.a a1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (oe1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            oe1.writeToParcel(parcel, 0);
_L3:
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_101;
            }
            IBinder ibinder = a1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            le.transact(52, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(ol ol1, pa pa1, PendingIntent pendingintent)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (ol1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            ol1.writeToParcel(parcel, 0);
_L5:
            if (pa1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L6:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_134;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L7:
            le.transact(48, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L6
            parcel.writeInt(0);
              goto _L7
        }

        public void a(on on1, pa pa1, oz oz1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (on1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            on1.writeToParcel(parcel, 0);
_L5:
            if (pa1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L6:
            if (oz1 == null)
            {
                break MISSING_BLOCK_LABEL_136;
            }
            IBinder ibinder = oz1.asBinder();
_L7:
            parcel.writeStrongBinder(ibinder);
            le.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L6
            ibinder = null;
              goto _L7
        }

        public void a(op op1, pa pa1)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (op1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            op1.writeToParcel(parcel, 0);
_L3:
            if (pa1 == null)
            {
                break MISSING_BLOCK_LABEL_77;
            }
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L4:
            le.transact(25, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(or or1, pa pa1, PendingIntent pendingintent)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (or1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            or1.writeToParcel(parcel, 0);
_L5:
            if (pa1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L6:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_134;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L7:
            le.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L6
            parcel.writeInt(0);
              goto _L7
        }

        public void a(ov ov1, pa pa1, oz oz1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (ov1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            ov1.writeToParcel(parcel, 0);
_L5:
            if (pa1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L6:
            if (oz1 == null)
            {
                break MISSING_BLOCK_LABEL_136;
            }
            IBinder ibinder = oz1.asBinder();
_L7:
            parcel.writeStrongBinder(ibinder);
            le.transact(46, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L6
            ibinder = null;
              goto _L7
        }

        public void a(ox ox1, LatLngBounds latlngbounds, List list, pa pa1, oz oz1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (ox1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            ox1.writeToParcel(parcel, 0);
_L7:
            if (latlngbounds == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L8:
            parcel.writeStringList(list);
            if (pa1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L9:
            if (oz1 == null)
            {
                break MISSING_BLOCK_LABEL_172;
            }
            IBinder ibinder = oz1.asBinder();
_L10:
            parcel.writeStrongBinder(ibinder);
            le.transact(50, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            ibinder = null;
              goto _L10
        }

        public void a(pa pa1, PendingIntent pendingintent)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pa1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L3:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L4:
            le.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(GeofencingRequest geofencingrequest, PendingIntent pendingintent, oa oa1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (geofencingrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            geofencingrequest.writeToParcel(parcel, 0);
_L5:
            if (pendingintent == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L6:
            if (oa1 == null)
            {
                break MISSING_BLOCK_LABEL_136;
            }
            IBinder ibinder = oa1.asBinder();
_L7:
            parcel.writeStrongBinder(ibinder);
            le.transact(57, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L6
            ibinder = null;
              goto _L7
        }

        public void a(LocationRequest locationrequest, PendingIntent pendingintent)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (locationrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            locationrequest.writeToParcel(parcel, 0);
_L3:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L4:
            le.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(LocationRequest locationrequest, com.google.android.gms.location.a a1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (locationrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            locationrequest.writeToParcel(parcel, 0);
_L3:
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_101;
            }
            IBinder ibinder = a1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            le.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(LocationRequest locationrequest, com.google.android.gms.location.a a1, String s)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (locationrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            locationrequest.writeToParcel(parcel, 0);
_L3:
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_116;
            }
            IBinder ibinder = a1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(com.google.android.gms.location.a a1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_60;
            }
            IBinder ibinder = a1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
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

        public void a(LatLng latlng, on on1, pa pa1, oz oz1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (latlng == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlng.writeToParcel(parcel, 0);
_L7:
            if (on1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            on1.writeToParcel(parcel, 0);
_L8:
            if (pa1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L9:
            if (oz1 == null)
            {
                break MISSING_BLOCK_LABEL_164;
            }
            IBinder ibinder = oz1.asBinder();
_L10:
            parcel.writeStrongBinder(ibinder);
            le.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            ibinder = null;
              goto _L10
        }

        public void a(LatLngBounds latlngbounds, int i, on on1, pa pa1, oz oz1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (latlngbounds == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L7:
            parcel.writeInt(i);
            if (on1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            on1.writeToParcel(parcel, 0);
_L8:
            if (pa1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L9:
            if (oz1 == null)
            {
                break MISSING_BLOCK_LABEL_172;
            }
            IBinder ibinder = oz1.asBinder();
_L10:
            parcel.writeStrongBinder(ibinder);
            le.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            ibinder = null;
              goto _L10
        }

        public void a(LatLngBounds latlngbounds, int i, String s, on on1, pa pa1, oz oz1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (latlngbounds == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L7:
            parcel.writeInt(i);
            parcel.writeString(s);
            if (on1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            on1.writeToParcel(parcel, 0);
_L8:
            if (pa1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L9:
            if (oz1 == null)
            {
                break MISSING_BLOCK_LABEL_180;
            }
            IBinder ibinder = oz1.asBinder();
_L10:
            parcel.writeStrongBinder(ibinder);
            le.transact(47, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            ibinder = null;
              goto _L10
        }

        public void a(String s, pa pa1, oz oz1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            if (pa1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L3:
            if (oz1 == null)
            {
                break MISSING_BLOCK_LABEL_116;
            }
            IBinder ibinder = oz1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            le.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(String s, LatLngBounds latlngbounds, oj oj1, pa pa1, oz oz1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            if (latlngbounds == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L7:
            if (oj1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            oj1.writeToParcel(parcel, 0);
_L8:
            if (pa1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L9:
            if (oz1 == null)
            {
                break MISSING_BLOCK_LABEL_172;
            }
            IBinder ibinder = oz1.asBinder();
_L10:
            parcel.writeStrongBinder(ibinder);
            le.transact(55, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            ibinder = null;
              goto _L10
        }

        public void a(List list, PendingIntent pendingintent, oa oa1, String s)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeTypedList(list);
            if (pendingintent == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L3:
            if (oa1 == null)
            {
                break MISSING_BLOCK_LABEL_122;
            }
            IBinder ibinder = oa1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(List list, pa pa1, oz oz1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeStringList(list);
            if (pa1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L3:
            if (oz1 == null)
            {
                break MISSING_BLOCK_LABEL_116;
            }
            IBinder ibinder = oz1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            le.transact(58, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(String as[], oa oa1, String s)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeStringArray(as);
            if (oa1 == null)
            {
                break MISSING_BLOCK_LABEL_80;
            }
            IBinder ibinder = oa1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
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

        public IBinder asBinder()
        {
            return le;
        }

        public void b(PendingIntent pendingintent)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L1:
            le.transact(11, parcel, parcel1, 0);
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

        public void b(Location location)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (location == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            location.writeToParcel(parcel, 0);
_L1:
            le.transact(13, parcel, parcel1, 0);
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

        public void b(pa pa1, PendingIntent pendingintent)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pa1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L3:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L4:
            le.transact(49, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void b(String s, pa pa1, oz oz1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            if (pa1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pa1.writeToParcel(parcel, 0);
_L3:
            if (oz1 == null)
            {
                break MISSING_BLOCK_LABEL_116;
            }
            IBinder ibinder = oz1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            le.transact(42, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public Location cg(String s)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            le.transact(21, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            Location location = (Location)Location.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return location;
_L2:
            location = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public d ch(String s)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            le.transact(34, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            d d2 = d.CREATOR._mthdo(parcel1);
            d d1 = d2;
_L4:
            parcel1.recycle();
            parcel.recycle();
            return d1;
_L2:
            d1 = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public Location pr()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            le.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            Location location = (Location)Location.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return location;
_L2:
            location = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public IBinder ps()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            IBinder ibinder;
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            le.transact(51, parcel, parcel1, 0);
            parcel1.readException();
            ibinder = parcel1.readStrongBinder();
            parcel1.recycle();
            parcel.recycle();
            return ibinder;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public IBinder pt()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            IBinder ibinder;
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            le.transact(54, parcel, parcel1, 0);
            parcel1.readException();
            ibinder = parcel1.readStrongBinder();
            parcel1.recycle();
            parcel.recycle();
            return ibinder;
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


    public abstract void U(boolean flag);

    public abstract void a(long l, boolean flag, PendingIntent pendingintent);

    public abstract void a(PendingIntent pendingintent);

    public abstract void a(PendingIntent pendingintent, oa oa, String s);

    public abstract void a(Location location, int i);

    public abstract void a(oa oa, String s);

    public abstract void a(oe oe, PendingIntent pendingintent);

    public abstract void a(oe oe, com.google.android.gms.location.a a1);

    public abstract void a(ol ol, pa pa, PendingIntent pendingintent);

    public abstract void a(on on, pa pa, oz oz);

    public abstract void a(op op, pa pa);

    public abstract void a(or or, pa pa, PendingIntent pendingintent);

    public abstract void a(ov ov, pa pa, oz oz);

    public abstract void a(ox ox, LatLngBounds latlngbounds, List list, pa pa, oz oz);

    public abstract void a(pa pa, PendingIntent pendingintent);

    public abstract void a(GeofencingRequest geofencingrequest, PendingIntent pendingintent, oa oa);

    public abstract void a(LocationRequest locationrequest, PendingIntent pendingintent);

    public abstract void a(LocationRequest locationrequest, com.google.android.gms.location.a a1);

    public abstract void a(LocationRequest locationrequest, com.google.android.gms.location.a a1, String s);

    public abstract void a(com.google.android.gms.location.a a1);

    public abstract void a(LatLng latlng, on on, pa pa, oz oz);

    public abstract void a(LatLngBounds latlngbounds, int i, on on, pa pa, oz oz);

    public abstract void a(LatLngBounds latlngbounds, int i, String s, on on, pa pa, oz oz);

    public abstract void a(String s, pa pa, oz oz);

    public abstract void a(String s, LatLngBounds latlngbounds, oj oj, pa pa, oz oz);

    public abstract void a(List list, PendingIntent pendingintent, oa oa, String s);

    public abstract void a(List list, pa pa, oz oz);

    public abstract void a(String as[], oa oa, String s);

    public abstract void b(PendingIntent pendingintent);

    public abstract void b(Location location);

    public abstract void b(pa pa, PendingIntent pendingintent);

    public abstract void b(String s, pa pa, oz oz);

    public abstract Location cg(String s);

    public abstract d ch(String s);

    public abstract Location pr();

    public abstract IBinder ps();

    public abstract IBinder pt();
}
