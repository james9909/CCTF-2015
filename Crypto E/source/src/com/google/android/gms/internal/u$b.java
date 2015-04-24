// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.HashSet;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ay, k, x, gn, 
//            hk, de, hf, gu, 
//            he, hl, u, hg, 
//            bc, go, bf, fb, 
//            ex, cc, cd, bv, 
//            eu, gs

static class lH
    implements android.view.TreeObserver.OnGlobalLayoutListener
{

    public final me lD;
    public final String lE;
    public final Context lF;
    public final k lG = new k(new x(this));
    public final hg lH;
    public bc lI;
    public gu lJ;
    public gu lK;
    public ay lL;
    public gn lM;
    public  lN;
    public go lO;
    public bf lP;
    public fb lQ;
    public ex lR;
    public cc lS;
    public cd lT;
    public bv lU;
    public List lV;
    public eu lW;
    public gs lX;
    public View lY;
    public int lZ;
    public boolean ma;
    public boolean mb;
    private HashSet mc;
    private int md;
    private int me;

    public void a(HashSet hashset)
    {
        mc = hashset;
    }

    public HashSet av()
    {
        return mc;
    }

    public void aw()
    {
        if (lM != null && lM.sR != null)
        {
            lM.sR.destroy();
        }
    }

    public void ax()
    {
        if (lM != null && lM.sR != null)
        {
            lM.sR.stopLoading();
        }
    }

    public void ay()
    {
        if (lM == null || lM.rq == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        lM.rq.destroy();
        return;
        RemoteException remoteexception;
        remoteexception;
        hf.X("Could not destroy mediation adapter.");
        return;
    }

    public void destroy()
    {
        lI = null;
        lP = null;
        lQ = null;
        lR = null;
        lU = null;
        e(false);
        if (lD != null)
        {
            lD.removeAllViews();
        }
        aw();
        ay();
        lM = null;
    }

    public void e(boolean flag)
    {
        if (lZ == 0)
        {
            ax();
        }
        if (lJ != null)
        {
            lJ.cancel();
        }
        if (lK != null)
        {
            lK.cancel();
        }
        if (flag)
        {
            lM = null;
        }
    }

    public void onGlobalLayout()
    {
        int ai[] = new int[2];
        lD.getLocationOnScreen(ai);
        int i = he.b(lF, ai[0]);
        int j = he.b(lF, ai[1]);
        if (i != md || j != me)
        {
            md = i;
            me = j;
            if (lM != null && lM.sR != null)
            {
                lM.sR.dN().b(md, me);
            }
        }
    }

    public youtListener(Context context, ay ay1, String s, hg hg)
    {
        lX = null;
        lY = null;
        lZ = 0;
        ma = false;
        mb = false;
        mc = null;
        md = -1;
        me = -1;
        if (ay1.oA)
        {
            lD = null;
        } else
        {
            lD = new <init>(context);
            lD.setMinimumWidth(ay1.widthPixels);
            lD.setMinimumHeight(ay1.heightPixels);
            lD.setVisibility(4);
            lD.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
        lL = ay1;
        lE = s;
        lF = context;
        lH = hg;
    }
}
