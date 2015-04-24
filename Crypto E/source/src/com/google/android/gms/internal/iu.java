// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.appstate.AppState;
import com.google.android.gms.appstate.AppStateBuffer;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.s;

// Referenced classes of package com.google.android.gms.internal:
//            iw, it

public final class iu extends h
{
    static final class a extends it
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void f(int i, int j)
        {
            Status status = new Status(i);
            Fn.e(new b(status, j));
        }

        public a(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            Fn = (com.google.android.gms.common.api.BaseImplementation.b)s.b(b1, "Result holder must not be null");
        }
    }

    static final class b
        implements com.google.android.gms.appstate.AppStateManager.StateDeletedResult
    {

        private final Status EI;
        private final int Fo;

        public int getStateKey()
        {
            return Fo;
        }

        public Status getStatus()
        {
            return EI;
        }

        public b(Status status, int i)
        {
            EI = status;
            Fo = i;
        }
    }

    static final class c extends it
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void a(DataHolder dataholder)
        {
            Fn.e(new d(dataholder));
        }

        public c(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            Fn = (com.google.android.gms.common.api.BaseImplementation.b)s.b(b1, "Result holder must not be null");
        }
    }

    static final class d extends com.google.android.gms.common.api.b
        implements com.google.android.gms.appstate.AppStateManager.StateListResult
    {

        private final AppStateBuffer Fp;

        public AppStateBuffer getStateBuffer()
        {
            return Fp;
        }

        public d(DataHolder dataholder)
        {
            super(dataholder);
            Fp = new AppStateBuffer(dataholder);
        }
    }

    static final class e extends it
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void a(int i, DataHolder dataholder)
        {
            Fn.e(new f(i, dataholder));
        }

        public e(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            Fn = (com.google.android.gms.common.api.BaseImplementation.b)s.b(b1, "Result holder must not be null");
        }
    }

    static final class f extends com.google.android.gms.common.api.b
        implements com.google.android.gms.appstate.AppStateManager.StateConflictResult, com.google.android.gms.appstate.AppStateManager.StateLoadedResult, com.google.android.gms.appstate.AppStateManager.StateResult
    {

        private final int Fo;
        private final AppStateBuffer Fp;

        private boolean fX()
        {
            return EI.getStatusCode() == 2000;
        }

        public com.google.android.gms.appstate.AppStateManager.StateConflictResult getConflictResult()
        {
            if (fX())
            {
                return this;
            } else
            {
                return null;
            }
        }

        public com.google.android.gms.appstate.AppStateManager.StateLoadedResult getLoadedResult()
        {
            if (fX())
            {
                this = null;
            }
            return this;
        }

        public byte[] getLocalData()
        {
            if (Fp.getCount() == 0)
            {
                return null;
            } else
            {
                return Fp.get(0).getLocalData();
            }
        }

        public String getResolvedVersion()
        {
            if (Fp.getCount() == 0)
            {
                return null;
            } else
            {
                return Fp.get(0).getConflictVersion();
            }
        }

        public byte[] getServerData()
        {
            if (Fp.getCount() == 0)
            {
                return null;
            } else
            {
                return Fp.get(0).getConflictData();
            }
        }

        public int getStateKey()
        {
            return Fo;
        }

        public void release()
        {
            Fp.release();
        }

        public f(int i, DataHolder dataholder)
        {
            super(dataholder);
            Fo = i;
            Fp = new AppStateBuffer(dataholder);
        }
    }

    static final class g extends it
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void fU()
        {
            Status status = new Status(0);
            Fn.e(status);
        }

        public g(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            Fn = (com.google.android.gms.common.api.BaseImplementation.b)s.b(b1, "Holder must not be null");
        }
    }


    private final String Fm;

    public iu(Context context, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String s1, String as[])
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, as);
        Fm = (String)s.l(s1);
    }

    protected iw H(IBinder ibinder)
    {
        return iw.a.J(ibinder);
    }

    public void a(com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        try
        {
            ((iw)jG()).a(new c(b1));
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("AppStateClient", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.BaseImplementation.b b1, int i)
    {
        try
        {
            ((iw)jG()).b(new a(b1), i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("AppStateClient", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.BaseImplementation.b b1, int i, String s1, byte abyte0[])
    {
        try
        {
            ((iw)jG()).a(new e(b1), i, s1, abyte0);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("AppStateClient", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.BaseImplementation.b b1, int i, byte abyte0[])
    {
        if (b1 != null) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L3:
        e e1;
        try
        {
            ((iw)jG()).a(((iv) (obj)), i, abyte0);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("AppStateClient", "service died");
        }
        break MISSING_BLOCK_LABEL_51;
_L2:
        e1 = new e(b1);
        obj = e1;
          goto _L3
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e1)
    {
        p1.a(e1, 0x640578, getContext().getPackageName(), Fm, jF());
    }

    public void b(com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        try
        {
            ((iw)jG()).b(new g(b1));
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("AppStateClient", "service died");
        }
    }

    public void b(com.google.android.gms.common.api.BaseImplementation.b b1, int i)
    {
        try
        {
            ((iw)jG()).a(new e(b1), i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("AppStateClient", "service died");
        }
    }

    protected transient void c(String as[])
    {
        int i = 0;
        boolean flag = false;
        for (; i < as.length; i++)
        {
            if (as[i].equals("https://www.googleapis.com/auth/appstate"))
            {
                flag = true;
            }
        }

        s.a(flag, String.format("App State APIs requires %s to function.", new Object[] {
            "https://www.googleapis.com/auth/appstate"
        }));
    }

    public int fV()
    {
        int i;
        try
        {
            i = ((iw)jG()).fV();
        }
        catch (RemoteException remoteexception)
        {
            Log.w("AppStateClient", "service died");
            return 2;
        }
        return i;
    }

    public int fW()
    {
        int i;
        try
        {
            i = ((iw)jG()).fW();
        }
        catch (RemoteException remoteexception)
        {
            Log.w("AppStateClient", "service died");
            return 2;
        }
        return i;
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.appstate.internal.IAppStateService";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.appstate.service.START";
    }

    protected IInterface l(IBinder ibinder)
    {
        return H(ibinder);
    }
}
