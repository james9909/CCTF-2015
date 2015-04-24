// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.s;
import java.util.List;

// Referenced classes of package com.google.android.gms.common.api:
//            GoogleApiClient

public class f extends Fragment
    implements android.content.DialogInterface.OnCancelListener, android.support.v4.app.LoaderManager.LoaderCallbacks
{
    static class a extends Loader
        implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
    {

        public final GoogleApiClient Sb;
        private boolean Sc;
        private ConnectionResult Sd;

        private void a(ConnectionResult connectionresult)
        {
            Sd = connectionresult;
            if (isStarted() && !isAbandoned())
            {
                deliverResult(connectionresult);
            }
        }

        public void jh()
        {
            if (Sc)
            {
                Sc = false;
                if (isStarted() && !isAbandoned())
                {
                    Sb.connect();
                }
            }
        }

        public void onConnected(Bundle bundle)
        {
            Sc = false;
            a(ConnectionResult.PY);
        }

        public void onConnectionFailed(ConnectionResult connectionresult)
        {
            Sc = true;
            a(connectionresult);
        }

        public void onConnectionSuspended(int i)
        {
        }

        protected void onReset()
        {
            Sd = null;
            Sc = false;
            Sb.unregisterConnectionCallbacks(this);
            Sb.unregisterConnectionFailedListener(this);
            Sb.disconnect();
        }

        protected void onStartLoading()
        {
            super.onStartLoading();
            Sb.registerConnectionCallbacks(this);
            Sb.registerConnectionFailedListener(this);
            if (Sd != null)
            {
                deliverResult(Sd);
            }
            if (!Sb.isConnected() && !Sb.isConnecting() && !Sc)
            {
                Sb.connect();
            }
        }

        protected void onStopLoading()
        {
            Sb.disconnect();
        }

        public a(Context context, GoogleApiClient googleapiclient)
        {
            super(context);
            Sb = googleapiclient;
        }
    }

    static class b
    {

        public final GoogleApiClient Sb;
        public final GoogleApiClient.OnConnectionFailedListener Se;

        private b(GoogleApiClient googleapiclient, GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
        {
            Sb = googleapiclient;
            Se = onconnectionfailedlistener;
        }

    }

    class c
        implements Runnable
    {

        private final int Sf;
        private final ConnectionResult Sg;
        final f Sh;

        public void run()
        {
            if (Sg.hasResolution())
            {
                try
                {
                    int i = 1 + (1 + Sh.getActivity().getSupportFragmentManager().getFragments().indexOf(Sh) << 16);
                    Sg.startResolutionForResult(Sh.getActivity(), i);
                    return;
                }
                catch (android.content.IntentSender.SendIntentException sendintentexception)
                {
                    f.a(Sh);
                }
                return;
            }
            if (GooglePlayServicesUtil.isUserRecoverableError(Sg.getErrorCode()))
            {
                GooglePlayServicesUtil.showErrorDialogFragment(Sg.getErrorCode(), Sh.getActivity(), Sh, 2, Sh);
                return;
            } else
            {
                f.a(Sh, Sf, Sg);
                return;
            }
        }

        public c(int i, ConnectionResult connectionresult)
        {
            Sh = f.this;
            super();
            Sf = i;
            Sg = connectionresult;
        }
    }


    private boolean RW;
    private int RX;
    private ConnectionResult RY;
    private final Handler RZ = new Handler(Looper.getMainLooper());
    private final SparseArray Sa = new SparseArray();

    public f()
    {
        RX = -1;
    }

    public static f a(FragmentActivity fragmentactivity)
    {
        s.bb("Must be called from main thread of process");
        FragmentManager fragmentmanager = fragmentactivity.getSupportFragmentManager();
        f f1;
        try
        {
            f1 = (f)fragmentmanager.findFragmentByTag("GmsSupportLifecycleFragment");
        }
        catch (ClassCastException classcastexception)
        {
            throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", classcastexception);
        }
        if (f1 == null || f1.isRemoving())
        {
            f1 = new f();
            fragmentmanager.beginTransaction().add(f1, "GmsSupportLifecycleFragment").commit();
            fragmentmanager.executePendingTransactions();
        }
        return f1;
    }

    private void a(int i, ConnectionResult connectionresult)
    {
        if (!RW)
        {
            RW = true;
            RX = i;
            RY = connectionresult;
            RZ.post(new c(i, connectionresult));
        }
    }

    static void a(f f1)
    {
        f1.jg();
    }

    static void a(f f1, int i, ConnectionResult connectionresult)
    {
        f1.b(i, connectionresult);
    }

    private void b(int i, ConnectionResult connectionresult)
    {
        Log.w("GmsSupportLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
        b b1 = (b)Sa.get(i);
        if (b1 != null)
        {
            bv(i);
            GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener = b1.Se;
            if (onconnectionfailedlistener != null)
            {
                onconnectionfailedlistener.onConnectionFailed(connectionresult);
            }
        }
        jg();
    }

    private void bx(int i)
    {
        if (i == RX)
        {
            jg();
        }
    }

    private void jg()
    {
        int i = 0;
        RW = false;
        RX = -1;
        RY = null;
        LoaderManager loadermanager = getLoaderManager();
        for (; i < Sa.size(); i++)
        {
            int j = Sa.keyAt(i);
            a a1 = bw(j);
            if (a1 != null)
            {
                a1.jh();
            }
            loadermanager.initLoader(j, null, this);
        }

    }

    public void a(int i, GoogleApiClient googleapiclient, GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        s.b(googleapiclient, "GoogleApiClient instance cannot be null");
        boolean flag;
        b b1;
        if (Sa.indexOfKey(i) < 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.a(flag, (new StringBuilder()).append("Already managing a GoogleApiClient with id ").append(i).toString());
        b1 = new b(googleapiclient, onconnectionfailedlistener);
        Sa.put(i, b1);
        if (getActivity() != null)
        {
            getLoaderManager().initLoader(i, null, this);
        }
    }

    public void a(Loader loader, ConnectionResult connectionresult)
    {
        if (connectionresult.isSuccess())
        {
            bx(loader.getId());
            return;
        } else
        {
            a(loader.getId(), connectionresult);
            return;
        }
    }

    public GoogleApiClient bu(int i)
    {
        if (getActivity() != null)
        {
            a a1 = bw(i);
            if (a1 != null)
            {
                return a1.Sb;
            }
        }
        return null;
    }

    public void bv(int i)
    {
        getLoaderManager().destroyLoader(i);
        Sa.remove(i);
    }

    a bw(int i)
    {
        a a1;
        try
        {
            a1 = (a)getLoaderManager().getLoader(i);
        }
        catch (ClassCastException classcastexception)
        {
            throw new IllegalStateException("Unknown loader in SupportLifecycleFragment", classcastexception);
        }
        return a1;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        boolean flag = true;
        i;
        JVM INSTR tableswitch 1 2: default 28
    //                   1 54
    //                   2 41;
           goto _L1 _L2 _L3
_L1:
        flag = false;
_L4:
        if (flag)
        {
            jg();
            return;
        } else
        {
            b(RX, RY);
            return;
        }
_L3:
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(getActivity()) != 0) goto _L5; else goto _L4
_L5:
        break; /* Loop/switch isn't completed */
_L2:
        if (j != -1) goto _L1; else goto _L4
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        int i = 0;
        while (i < Sa.size()) 
        {
            int j = Sa.keyAt(i);
            a a1 = bw(j);
            if (a1 != null && ((b)Sa.valueAt(i)).Sb != a1.Sb)
            {
                getLoaderManager().restartLoader(j, null, this);
            } else
            {
                getLoaderManager().initLoader(j, null, this);
            }
            i++;
        }
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        b(RX, RY);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle != null)
        {
            RW = bundle.getBoolean("resolving_error", false);
            RX = bundle.getInt("failed_client_id", -1);
            if (RX >= 0)
            {
                RY = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent)bundle.getParcelable("failed_resolution"));
            }
        }
    }

    public Loader onCreateLoader(int i, Bundle bundle)
    {
        return new a(getActivity(), ((b)Sa.get(i)).Sb);
    }

    public void onLoadFinished(Loader loader, Object obj)
    {
        a(loader, (ConnectionResult)obj);
    }

    public void onLoaderReset(Loader loader)
    {
        if (loader.getId() == RX)
        {
            jg();
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", RW);
        if (RX >= 0)
        {
            bundle.putInt("failed_client_id", RX);
            bundle.putInt("failed_status", RY.getErrorCode());
            bundle.putParcelable("failed_resolution", RY.getResolution());
        }
    }

    public void onStart()
    {
        super.onStart();
        if (!RW)
        {
            for (int i = 0; i < Sa.size(); i++)
            {
                getLoaderManager().initLoader(Sa.keyAt(i), null, this);
            }

        }
    }
}
