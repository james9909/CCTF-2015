// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.request.DataSourcesRequest;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.request.aa;
import com.google.android.gms.fitness.request.ad;
import com.google.android.gms.fitness.request.af;
import com.google.android.gms.fitness.request.ah;
import com.google.android.gms.fitness.request.aj;
import com.google.android.gms.fitness.request.b;
import com.google.android.gms.fitness.request.e;
import com.google.android.gms.fitness.request.j;
import com.google.android.gms.fitness.request.m;
import com.google.android.gms.fitness.request.o;
import com.google.android.gms.fitness.request.q;
import com.google.android.gms.fitness.request.u;
import com.google.android.gms.fitness.request.w;
import com.google.android.gms.fitness.request.y;

// Referenced classes of package com.google.android.gms.internal:
//            mw, mp, mq, mr, 
//            mu, mt, mv, ni

public interface ms
    extends IInterface
{
    public static abstract class a extends Binder
        implements ms
    {

        public static ms bd(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (iinterface != null && (iinterface instanceof ms))
            {
                return (ms)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int k)
        {
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, k);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int i6 = parcel.readInt();
                DataSourcesRequest datasourcesrequest = null;
                if (i6 != 0)
                {
                    datasourcesrequest = (DataSourcesRequest)DataSourcesRequest.CREATOR.createFromParcel(parcel);
                }
                a(datasourcesrequest, mq.a.bb(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int l5 = parcel.readInt();
                o o1 = null;
                if (l5 != 0)
                {
                    o1 = (o)o.CREATOR.createFromParcel(parcel);
                }
                a(o1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int k5 = parcel.readInt();
                q q1 = null;
                if (k5 != 0)
                {
                    q1 = (q)q.CREATOR.createFromParcel(parcel);
                }
                a(q1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int j5 = parcel.readInt();
                af af1 = null;
                if (j5 != 0)
                {
                    af1 = (af)af.CREATOR.createFromParcel(parcel);
                }
                a(af1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int i5 = parcel.readInt();
                aj aj1 = null;
                if (i5 != 0)
                {
                    aj1 = (aj)aj.CREATOR.createFromParcel(parcel);
                }
                a(aj1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int l4 = parcel.readInt();
                m m1 = null;
                if (l4 != 0)
                {
                    m1 = (m)m.CREATOR.createFromParcel(parcel);
                }
                a(m1, mt.a.be(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int k4 = parcel.readInt();
                e e1 = null;
                if (k4 != 0)
                {
                    e1 = (e)e.CREATOR.createFromParcel(parcel);
                }
                a(e1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 19: // '\023'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int i4 = parcel.readInt();
                DataDeleteRequest datadeleterequest = null;
                if (i4 != 0)
                {
                    datadeleterequest = (DataDeleteRequest)DataDeleteRequest.CREATOR.createFromParcel(parcel);
                }
                a(datadeleterequest, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 13: // '\r'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int l3 = parcel.readInt();
                DataTypeCreateRequest datatypecreaterequest = null;
                if (l3 != 0)
                {
                    datatypecreaterequest = (DataTypeCreateRequest)DataTypeCreateRequest.CREATOR.createFromParcel(parcel);
                }
                a(datatypecreaterequest, mr.a.bc(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 14: // '\016'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int k3 = parcel.readInt();
                j j4 = null;
                if (k3 != 0)
                {
                    j4 = (j)j.CREATOR.createFromParcel(parcel);
                }
                a(j4, mr.a.bc(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int j3 = parcel.readInt();
                DataReadRequest datareadrequest = null;
                if (j3 != 0)
                {
                    datareadrequest = (DataReadRequest)DataReadRequest.CREATOR.createFromParcel(parcel);
                }
                a(datareadrequest, mp.a.ba(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int i3 = parcel.readInt();
                SessionInsertRequest sessioninsertrequest = null;
                if (i3 != 0)
                {
                    sessioninsertrequest = (SessionInsertRequest)SessionInsertRequest.CREATOR.createFromParcel(parcel);
                }
                a(sessioninsertrequest, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int l2 = parcel.readInt();
                SessionReadRequest sessionreadrequest = null;
                if (l2 != 0)
                {
                    sessionreadrequest = (SessionReadRequest)SessionReadRequest.CREATOR.createFromParcel(parcel);
                }
                a(sessionreadrequest, mu.a.bf(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int k2 = parcel.readInt();
                w w1 = null;
                if (k2 != 0)
                {
                    w1 = (w)w.CREATOR.createFromParcel(parcel);
                }
                a(w1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int j2 = parcel.readInt();
                y y1 = null;
                if (j2 != 0)
                {
                    y1 = (y)y.CREATOR.createFromParcel(parcel);
                }
                a(y1, mv.a.bg(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 15: // '\017'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int i2 = parcel.readInt();
                StartBleScanRequest startblescanrequest = null;
                if (i2 != 0)
                {
                    startblescanrequest = (StartBleScanRequest)StartBleScanRequest.CREATOR.createFromParcel(parcel);
                }
                a(startblescanrequest, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 16: // '\020'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int l1 = parcel.readInt();
                ad ad1 = null;
                if (l1 != 0)
                {
                    ad1 = (ad)ad.CREATOR.createFromParcel(parcel);
                }
                a(ad1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 17: // '\021'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int k1 = parcel.readInt();
                b b1 = null;
                if (k1 != 0)
                {
                    b1 = (b)b.CREATOR.createFromParcel(parcel);
                }
                a(b1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 18: // '\022'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int j1 = parcel.readInt();
                ah ah1 = null;
                if (j1 != 0)
                {
                    ah1 = (ah)ah.CREATOR.createFromParcel(parcel);
                }
                a(ah1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 20: // '\024'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int i1 = parcel.readInt();
                u u1 = null;
                if (i1 != 0)
                {
                    u1 = (u)u.CREATOR.createFromParcel(parcel);
                }
                a(u1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 21: // '\025'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                int l = parcel.readInt();
                aa aa1 = null;
                if (l != 0)
                {
                    aa1 = (aa)aa.CREATOR.createFromParcel(parcel);
                }
                a(aa1, mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 22: // '\026'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                a(mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 23: // '\027'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                b(mw.a.bh(parcel.readStrongBinder()), parcel.readString());
                return true;

            case 24: // '\030'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                a(ni.a.bi(parcel.readStrongBinder()), parcel.readString());
                return true;
            }
        }
    }

    static class a.a
        implements ms
    {

        private IBinder le;

        public void a(DataDeleteRequest datadeleterequest, mw mw1, String s)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (datadeleterequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            datadeleterequest.writeToParcel(parcel, 0);
_L3:
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_116;
            }
            IBinder ibinder = mw1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
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
            ibinder = null;
              goto _L4
        }

        public void a(DataReadRequest datareadrequest, mp mp1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (datareadrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            datareadrequest.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mp1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mp1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(8, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(DataSourcesRequest datasourcesrequest, mq mq1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (datasourcesrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            datasourcesrequest.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mq1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mq1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(1, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(DataTypeCreateRequest datatypecreaterequest, mr mr1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (datatypecreaterequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            datatypecreaterequest.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mr1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mr1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(13, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(SessionInsertRequest sessioninsertrequest, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (sessioninsertrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            sessioninsertrequest.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(9, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(SessionReadRequest sessionreadrequest, mu mu1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (sessionreadrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            sessionreadrequest.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mu1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mu1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(10, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(StartBleScanRequest startblescanrequest, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (startblescanrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            startblescanrequest.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(15, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(aa aa1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (aa1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            aa1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(21, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(ad ad1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (ad1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            ad1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(16, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(af af1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (af1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            af1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(4, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(ah ah1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (ah1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            ah1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(18, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(aj aj1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (aj1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            aj1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(5, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(b b1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (b1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            b1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(17, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(e e1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (e1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            e1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(7, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(j j1, mr mr1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (j1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            j1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mr1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mr1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(14, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(m m1, mt mt1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (m1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            m1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mt1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mt1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(6, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(o o1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (o1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            o1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(2, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(q q1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (q1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            q1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(3, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(u u1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (u1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            u1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(20, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(w w1, mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (w1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            w1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(11, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(y y1, mv mv1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (y1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            y1.writeToParcel(parcel, 0);
_L4:
            IBinder ibinder;
            ibinder = null;
            if (mv1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            ibinder = mv1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(12, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_25;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(22, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(ni ni1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            IBinder ibinder;
            ibinder = null;
            if (ni1 == null)
            {
                break MISSING_BLOCK_LABEL_25;
            }
            ibinder = ni1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(24, parcel, null, 1);
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

        public void b(mw mw1, String s)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            IBinder ibinder;
            ibinder = null;
            if (mw1 == null)
            {
                break MISSING_BLOCK_LABEL_25;
            }
            ibinder = mw1.asBinder();
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            le.transact(23, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        a.a(IBinder ibinder)
        {
            le = ibinder;
        }
    }


    public abstract void a(DataDeleteRequest datadeleterequest, mw mw, String s);

    public abstract void a(DataReadRequest datareadrequest, mp mp, String s);

    public abstract void a(DataSourcesRequest datasourcesrequest, mq mq, String s);

    public abstract void a(DataTypeCreateRequest datatypecreaterequest, mr mr, String s);

    public abstract void a(SessionInsertRequest sessioninsertrequest, mw mw, String s);

    public abstract void a(SessionReadRequest sessionreadrequest, mu mu, String s);

    public abstract void a(StartBleScanRequest startblescanrequest, mw mw, String s);

    public abstract void a(aa aa, mw mw, String s);

    public abstract void a(ad ad, mw mw, String s);

    public abstract void a(af af, mw mw, String s);

    public abstract void a(ah ah, mw mw, String s);

    public abstract void a(aj aj, mw mw, String s);

    public abstract void a(b b1, mw mw, String s);

    public abstract void a(e e, mw mw, String s);

    public abstract void a(j j, mr mr, String s);

    public abstract void a(m m, mt mt, String s);

    public abstract void a(o o, mw mw, String s);

    public abstract void a(q q, mw mw, String s);

    public abstract void a(u u, mw mw, String s);

    public abstract void a(w w, mw mw, String s);

    public abstract void a(y y, mv mv, String s);

    public abstract void a(mw mw, String s);

    public abstract void a(ni ni, String s);

    public abstract void b(mw mw, String s);
}
