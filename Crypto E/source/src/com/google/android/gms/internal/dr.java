// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            bl, he, hk, ab, 
//            gx, ay, hf, hl, 
//            dq

public class dr
{

    private final Context mContext;
    private final WindowManager mX;
    private final hk mj;
    private final bl si;
    DisplayMetrics sj;
    private float sk;
    int sl;
    int sm;
    private int sn;
    int so;
    int sp;
    int sq;
    int sr;

    public dr(hk hk1, Context context, bl bl1)
    {
        sl = -1;
        sm = -1;
        so = -1;
        sp = -1;
        sq = -1;
        sr = -1;
        mj = hk1;
        mContext = context;
        si = bl1;
        mX = (WindowManager)context.getSystemService("window");
        cc();
        cd();
        ce();
    }

    private void cc()
    {
        sj = new DisplayMetrics();
        Display display = mX.getDefaultDisplay();
        display.getMetrics(sj);
        sk = sj.density;
        sn = display.getRotation();
    }

    private dq ck()
    {
        return (new dq.a()).m(si.bw()).l(si.bx()).n(si.bB()).o(si.by()).p(si.bz()).cb();
    }

    void cd()
    {
        sl = he.b(sj, sj.widthPixels);
        sm = he.b(sj, sj.heightPixels);
        Activity activity = mj.dL();
        if (activity == null || activity.getWindow() == null)
        {
            so = sl;
            sp = sm;
            return;
        } else
        {
            int ai[] = ab.aG().g(activity);
            so = he.b(sj, ai[0]);
            sp = he.b(sj, ai[1]);
            return;
        }
    }

    void ce()
    {
        if (mj.aa().oA)
        {
            sq = sl;
            sr = sm;
            return;
        } else
        {
            mj.measure(0, 0);
            sq = he.b(mContext, mj.getMeasuredWidth());
            sr = he.b(mContext, mj.getMeasuredHeight());
            return;
        }
    }

    public void cf()
    {
        ci();
        cj();
        ch();
        cg();
    }

    public void cg()
    {
        if (hf.x(2))
        {
            hf.V("Dispatching Ready Event.");
        }
        mj.b("onReadyEventReceived", new JSONObject());
    }

    public void ch()
    {
        try
        {
            int ai[] = new int[2];
            mj.getLocationOnScreen(ai);
            int i = he.b(mContext, ai[0]);
            int j = he.b(mContext, ai[1]);
            JSONObject jsonobject = (new JSONObject()).put("x", i).put("y", j).put("width", sq).put("height", sr);
            mj.b("onDefaultPositionReceived", jsonobject);
            mj.dN().d(i, j);
            return;
        }
        catch (JSONException jsonexception)
        {
            hf.b("Error occured while dispatching default position.", jsonexception);
        }
    }

    public void ci()
    {
        try
        {
            JSONObject jsonobject = (new JSONObject()).put("width", sl).put("height", sm).put("maxSizeWidth", so).put("maxSizeHeight", sp).put("density", sk).put("rotation", sn);
            mj.b("onScreenInfoChanged", jsonobject);
            return;
        }
        catch (JSONException jsonexception)
        {
            hf.b("Error occured while obtaining screen information.", jsonexception);
        }
    }

    public void cj()
    {
        dq dq1 = ck();
        mj.b("onDeviceFeaturesReceived", dq1.toJson());
    }
}
