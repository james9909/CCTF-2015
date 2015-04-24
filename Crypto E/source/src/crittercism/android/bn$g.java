// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            bm, bn, bc, dg

static class a
    implements bm
{

    private JSONObject a;

    public String a()
    {
        return null;
    }

    public final Object b()
    {
        return c();
    }

    public JSONObject c()
    {
        return a;
    }

    public anager(int i)
    {
        NetworkInfo networkinfo;
        a = null;
        bn.b();
        bn.c();
        if (!bn.c().c)
        {
            break MISSING_BLOCK_LABEL_171;
        }
        a = new JSONObject();
        networkinfo = ((ConnectivityManager)bn.b().getSystemService("connectivity")).getNetworkInfo(i);
        if (networkinfo == null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        a.put("available", networkinfo.isAvailable());
        a.put("connected", networkinfo.isConnected());
        if (!networkinfo.isConnected())
        {
            a.put("connecting", networkinfo.isConnectedOrConnecting());
        }
        a.put("failover", networkinfo.isFailover());
        boolean flag;
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_171;
        }
        try
        {
            a.put("roaming", networkinfo.isRoaming());
            return;
        }
        catch (JSONException jsonexception)
        {
            a = null;
        }
        break MISSING_BLOCK_LABEL_168;
        a = null;
        return;
        dg.c();
    }
}
