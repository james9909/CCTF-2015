// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            po, pk, pp, pm

public interface pj
    extends IInterface
{
    public static abstract class a extends Binder
        implements pj
    {

        public static pj cq(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.playlog.internal.IPlayLogService");
            if (iinterface != null && (iinterface instanceof pj))
            {
                return (pj)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        {
            String s;
            int k;
            po po1;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.playlog.internal.IPlayLogService");
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                String s2 = parcel.readString();
                po po3;
                int i1;
                pk pk1;
                if (parcel.readInt() != 0)
                {
                    po3 = po.CREATOR.dY(parcel);
                } else
                {
                    po3 = null;
                }
                i1 = parcel.readInt();
                pk1 = null;
                if (i1 != 0)
                {
                    pk1 = pk.CREATOR.dX(parcel);
                }
                a(s2, po3, pk1);
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                String s1 = parcel.readString();
                int l = parcel.readInt();
                po po2 = null;
                if (l != 0)
                {
                    po2 = po.CREATOR.dY(parcel);
                }
                a(s1, po2, parcel.createTypedArrayList(pk.CREATOR));
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                s = parcel.readString();
                k = parcel.readInt();
                po1 = null;
                break;
            }
            if (k != 0)
            {
                po1 = po.CREATOR.dY(parcel);
            }
            a(s, po1, parcel.createByteArray());
            return true;
        }
    }

    static class a.a
        implements pj
    {

        private IBinder le;

        public void a(String s, po po1, pk pk1)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
            parcel.writeString(s);
            if (po1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            po1.writeToParcel(parcel, 0);
_L3:
            if (pk1 == null)
            {
                break MISSING_BLOCK_LABEL_92;
            }
            parcel.writeInt(1);
            pk1.writeToParcel(parcel, 0);
_L4:
            le.transact(2, parcel, null, 1);
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

        public void a(String s, po po1, List list)
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
            parcel.writeString(s);
            if (po1 == null)
            {
                break MISSING_BLOCK_LABEL_62;
            }
            parcel.writeInt(1);
            po1.writeToParcel(parcel, 0);
_L1:
            parcel.writeTypedList(list);
            le.transact(3, parcel, null, 1);
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(String s, po po1, byte abyte0[])
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
            parcel.writeString(s);
            if (po1 == null)
            {
                break MISSING_BLOCK_LABEL_62;
            }
            parcel.writeInt(1);
            po1.writeToParcel(parcel, 0);
_L1:
            parcel.writeByteArray(abyte0);
            le.transact(4, parcel, null, 1);
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public IBinder asBinder()
        {
            return le;
        }

        a.a(IBinder ibinder)
        {
            le = ibinder;
        }
    }


    public abstract void a(String s, po po, pk pk);

    public abstract void a(String s, po po, List list);

    public abstract void a(String s, po po, byte abyte0[]);
}
