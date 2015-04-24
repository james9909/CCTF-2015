// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;

// Referenced classes of package com.google.android.gms.internal:
//            cp, cq, hf

public final class co
{
    public static final class a
        implements com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    {

        private final Object mL;
        private final b qv;
        private final cp qw;

        public void onConnected(Bundle bundle)
        {
            Bundle bundle1 = new Bundle();
            Object obj = mL;
            obj;
            JVM INSTR monitorenter ;
            cq cq1 = qw.bQ();
            if (cq1 == null) goto _L2; else goto _L1
_L1:
            Bundle bundle3 = cq1.bR();
            Bundle bundle2 = bundle3;
_L5:
            if (qw.isConnected() || qw.isConnecting())
            {
                qw.disconnect();
            }
_L3:
            obj;
            JVM INSTR monitorexit ;
            qv.e(bundle2);
            return;
            IllegalStateException illegalstateexception;
            illegalstateexception;
            hf.d("Error when get Gservice values", illegalstateexception);
            if (!qw.isConnected() && !qw.isConnecting())
            {
                break MISSING_BLOCK_LABEL_206;
            }
            qw.disconnect();
            bundle2 = bundle1;
              goto _L3
            RemoteException remoteexception;
            remoteexception;
            hf.d("Error when get Gservice values", remoteexception);
            if (!qw.isConnected() && !qw.isConnecting())
            {
                break MISSING_BLOCK_LABEL_206;
            }
            qw.disconnect();
            bundle2 = bundle1;
              goto _L3
            Exception exception;
            exception;
            if (qw.isConnected() || qw.isConnecting())
            {
                qw.disconnect();
            }
            throw exception;
            Exception exception1;
            exception1;
            obj;
            JVM INSTR monitorexit ;
            throw exception1;
            bundle2 = bundle1;
              goto _L3
_L2:
            bundle2 = bundle1;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public void onConnectionFailed(ConnectionResult connectionresult)
        {
            qv.e(new Bundle());
        }

        public void onConnectionSuspended(int i)
        {
            hf.T("Disconnected from remote ad request service.");
        }

        public a(Context context, b b1)
        {
            this(context, b1, false);
        }

        a(Context context, b b1, boolean flag)
        {
            mL = new Object();
            qv = b1;
            qw = new cp(context, this, this, 0x640578);
            if (!flag)
            {
                qw.connect();
            }
        }
    }

    public static interface b
    {

        public abstract void e(Bundle bundle);
    }


    public static void a(Context context, b b1)
    {
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) != 0)
        {
            b1.e(new Bundle());
            return;
        } else
        {
            new a(context, b1);
            return;
        }
    }
}
