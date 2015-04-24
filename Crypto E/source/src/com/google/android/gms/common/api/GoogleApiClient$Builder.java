// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.s;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.common.api:
//            f, c, Api, Scope, 
//            GoogleApiClient

public static final class Rl
{

    private String Fm;
    private Looper Hy;
    private final Set Rc;
    private int Rd;
    private View Re;
    private String Rf;
    private final Map Rg;
    private FragmentActivity Rh;
    private int Ri;
    private tionFailedListener Rj;
    private final Set Rk;
    private final Set Rl;
    private final Context mContext;

    private GoogleApiClient iY()
    {
        f f1 = f.a(Rh);
        Object obj = f1.bu(Ri);
        if (obj == null)
        {
            obj = new c(mContext.getApplicationContext(), Hy, iX(), Rg, Rk, Rl, Ri);
        }
        f1.a(Ri, ((GoogleApiClient) (obj)), Rj);
        return ((GoogleApiClient) (obj));
    }

    public Rj addApi(Api api)
    {
        Rg.put(api, null);
        List list = api.iO();
        int i = list.size();
        for (int j = 0; j < i; j++)
        {
            Rc.add(((Scope)list.get(j)).je());
        }

        return this;
    }

    public s addApi(Api api, s s1)
    {
        s.b(s1, "Null options are not permitted for this Api");
        Rg.put(api, s1);
        List list = api.iO();
        int i = list.size();
        for (int j = 0; j < i; j++)
        {
            Rc.add(((Scope)list.get(j)).je());
        }

        return this;
    }

    public onCallbacks addConnectionCallbacks(onCallbacks oncallbacks)
    {
        Rk.add(oncallbacks);
        return this;
    }

    public tionFailedListener addOnConnectionFailedListener(tionFailedListener tionfailedlistener)
    {
        Rl.add(tionfailedlistener);
        return this;
    }

    public Rl addScope(Scope scope)
    {
        Rc.add(scope.je());
        return this;
    }

    public GoogleApiClient build()
    {
        boolean flag;
        if (!Rg.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.b(flag, "must call addApi() to add at least one API");
        if (Ri >= 0)
        {
            return iY();
        } else
        {
            return new c(mContext, Hy, iX(), Rg, Rk, Rl, -1);
        }
    }

    public tionFailedListener enableAutoManage(FragmentActivity fragmentactivity, int i, tionFailedListener tionfailedlistener)
    {
        boolean flag;
        if (i >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.b(flag, "clientId must be non-negative");
        Ri = i;
        Rh = (FragmentActivity)s.b(fragmentactivity, "Null activity is not permitted.");
        Rj = tionfailedlistener;
        return this;
    }

    public ClientSettings iX()
    {
        return new ClientSettings(Fm, Rc, Rd, Re, Rf);
    }

    public Rf setAccountName(String s1)
    {
        Fm = s1;
        return this;
    }

    public Fm setGravityForPopups(int i)
    {
        Rd = i;
        return this;
    }

    public Rd setHandler(Handler handler)
    {
        s.b(handler, "Handler must not be null");
        Hy = handler.getLooper();
        return this;
    }

    public Hy setViewForPopups(View view)
    {
        Re = view;
        return this;
    }

    public Re useDefaultAccount()
    {
        return setAccountName("<<default account>>");
    }

    public tionFailedListener(Context context)
    {
        Rc = new HashSet();
        Rg = new HashMap();
        Ri = -1;
        Rk = new HashSet();
        Rl = new HashSet();
        mContext = context;
        Hy = context.getMainLooper();
        Rf = context.getPackageName();
    }

    public tionFailedListener(Context context, onCallbacks oncallbacks, tionFailedListener tionfailedlistener)
    {
        this(context);
        s.b(oncallbacks, "Must provide a connected listener");
        Rk.add(oncallbacks);
        s.b(tionfailedlistener, "Must provide a connection failed listener");
        Rl.add(tionfailedlistener);
    }
}
