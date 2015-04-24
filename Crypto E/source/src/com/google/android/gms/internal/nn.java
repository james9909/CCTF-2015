// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.fitness.service.FitnessSensorServiceRequest;

// Referenced classes of package com.google.android.gms.internal:
//            mw, nj, mq, nl

public interface nn
    extends IInterface
{
    public static abstract class a extends Binder
        implements nn
    {

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        {
            int k;
            nl nl1;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                int i1 = parcel.readInt();
                nj nj1 = null;
                if (i1 != 0)
                {
                    nj1 = (nj)nj.CREATOR.createFromParcel(parcel);
                }
                a(nj1, mq.a.bb(parcel.readStrongBinder()));
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                int l = parcel.readInt();
                FitnessSensorServiceRequest fitnesssensorservicerequest = null;
                if (l != 0)
                {
                    fitnesssensorservicerequest = (FitnessSensorServiceRequest)FitnessSensorServiceRequest.CREATOR.createFromParcel(parcel);
                }
                a(fitnesssensorservicerequest, mw.a.bh(parcel.readStrongBinder()));
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                k = parcel.readInt();
                nl1 = null;
                break;
            }
            if (k != 0)
            {
                nl1 = (nl)nl.CREATOR.createFromParcel(parcel);
            }
            a(nl1, mw.a.bh(parcel.readStrongBinder()));
            return true;
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.fitness.internal.service.IFitnessSensorService");
        }
    }


    public abstract void a(FitnessSensorServiceRequest fitnesssensorservicerequest, mw mw);

    public abstract void a(nj nj, mq mq);

    public abstract void a(nl nl, mw mw);
}
