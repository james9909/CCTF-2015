// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.ViewSwitcher;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ac, cf, ci, ck, 
//            cx, ds, dz, ec, 
//            et, gr, t, w, 
//            br, ab, gx, gp, 
//            aa, ay, go, eh, 
//            hm, hk, hl, hf, 
//            bc, gy, gn, bx, 
//            cc, by, cd, de, 
//            hg, cw, db, cv, 
//            an, ak, eu, em, 
//            fz, v, bs, bv, 
//            fl, hb, cy, ae, 
//            gs, af, en, fb, 
//            ek, eo, ex, eq, 
//            he, av, fs, bf, 
//            y, dy, dw, dd, 
//            ep, k, x, gu, 
//            es

public class u extends bd.a
    implements ac, cf, ci, ck, cx, ds, dz, ec, et, fl.a, fs.a, gr, t, w
{
    public static final class a extends ViewSwitcher
    {

        private final hb lC;

        static hb a(a a1)
        {
            return a1.lC;
        }

        public boolean onInterceptTouchEvent(MotionEvent motionevent)
        {
            lC.c(motionevent);
            return false;
        }

        public a(Context context)
        {
            super(context);
            lC = new hb(context);
        }
    }

    static class b
        implements android.view.ViewTreeObserver.OnGlobalLayoutListener
    {

        public final a lD;
        public final String lE;
        public final Context lF;
        public final k lG = new k(new x(this));
        public final hg lH;
        public bc lI;
        public gu lJ;
        public gu lK;
        public ay lL;
        public gn lM;
        public gn.a lN;
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
            int ai1[] = new int[2];
            lD.getLocationOnScreen(ai1);
            int i = he.b(lF, ai1[0]);
            int j = he.b(lF, ai1[1]);
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

        public b(Context context, ay ay1, String s1, hg hg1)
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
                lD = new a(context);
                lD.setMinimumWidth(ay1.widthPixels);
                lD.setMinimumHeight(ay1.heightPixels);
                lD.setVisibility(4);
                lD.getViewTreeObserver().addOnGlobalLayoutListener(this);
            }
            lL = ay1;
            lE = s1;
            lF = context;
            lH = hg1;
        }
    }


    private av ls;
    private final dd lt;
    private final b lu;
    private final aa lv;
    private final ae lw;
    private boolean lx;
    private final ComponentCallbacks ly;

    public u(Context context, ay ay1, String s1, dd dd, hg hg1)
    {
        this(new b(context, ay1, s1, hg1), dd, null);
        br.j(context);
    }

    u(b b1, dd dd, aa aa1)
    {
        ly = new ComponentCallbacks() {

            final u lz;

            public void onConfigurationChanged(Configuration configuration)
            {
                if (u.a(lz) != null && u.a(lz).lM != null)
                {
                    hk hk1 = u.a(lz).lM.sR;
                    if (hk1 != null)
                    {
                        hk1.ci();
                        dw dw1 = hk1.dM();
                        if (dw1 != null)
                        {
                            dw1.cp();
                        }
                    }
                }
            }

            public void onLowMemory()
            {
            }

            
            {
                lz = u.this;
                super();
            }
        };
        lu = b1;
        lt = dd;
        if (aa1 == null)
        {
            aa1 = new aa(this);
        }
        lv = aa1;
        com.google.android.gms.internal.ab.aG().r(lu.lF);
        gp.b(lu.lF, lu.lH);
        lw = gp.dl().dx();
        ab();
    }

    private fx.a a(av av1, Bundle bundle)
    {
        ApplicationInfo applicationinfo = lu.lF.getApplicationInfo();
        android.content.pm.PackageInfo packageinfo1 = lu.lF.getPackageManager().getPackageInfo(applicationinfo.packageName, 0);
        android.content.pm.PackageInfo packageinfo = packageinfo1;
_L2:
        DisplayMetrics displaymetrics = lu.lF.getResources().getDisplayMetrics();
        boolean flag = lu.lL.oA;
        Bundle bundle1 = null;
        if (!flag)
        {
            android.view.ViewParent viewparent = lu.lD.getParent();
            bundle1 = null;
            if (viewparent != null)
            {
                int ai1[] = new int[2];
                lu.lD.getLocationOnScreen(ai1);
                int i = ai1[0];
                int j = ai1[1];
                int k = lu.lD.getWidth();
                int l = lu.lD.getHeight();
                boolean flag1 = lu.lD.isShown();
                int i1 = 0;
                if (flag1)
                {
                    int j1 = i + k;
                    i1 = 0;
                    if (j1 > 0)
                    {
                        int k1 = j + l;
                        i1 = 0;
                        if (k1 > 0)
                        {
                            int l1 = displaymetrics.widthPixels;
                            i1 = 0;
                            if (i <= l1)
                            {
                                int i2 = displaymetrics.heightPixels;
                                i1 = 0;
                                if (j <= i2)
                                {
                                    i1 = 1;
                                }
                            }
                        }
                    }
                }
                bundle1 = new Bundle(5);
                bundle1.putInt("x", i);
                bundle1.putInt("y", j);
                bundle1.putInt("width", k);
                bundle1.putInt("height", l);
                bundle1.putInt("visible", i1);
            }
        }
        String s1 = gp.dn();
        lu.lO = new go(s1, lu.lE);
        lu.lO.e(av1);
        Bundle bundle2 = gp.a(lu.lF, this, s1);
        return new fx.a(bundle1, av1, lu.lL, lu.lE, applicationinfo, packageinfo, s1, gp.wX, lu.lH, bundle2, lu.lV, bundle, gp.dt(), new Messenger(new eh(lu.lF)), displaymetrics.widthPixels, displaymetrics.heightPixels, displaymetrics.density);
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        packageinfo = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private hk a(v v1)
    {
        if (lu.lL.oA)
        {
            hk hk4 = com.google.android.gms.internal.ab.aH().a(lu.lF, lu.lL, false, false, lu.lG, lu.lH);
            hk4.dN().a(this, null, this, this, false, this, this, v1, null);
            return hk4;
        }
        View view = lu.lD.getNextView();
        hk hk2;
        if (view instanceof hk)
        {
            hk hk3 = (hk)view;
            hk3.a(lu.lF, lu.lL);
            hk2 = hk3;
        } else
        {
            if (view != null)
            {
                lu.lD.removeView(view);
            }
            hk hk1 = com.google.android.gms.internal.ab.aH().a(lu.lF, lu.lL, false, false, lu.lG, lu.lH);
            if (lu.lL.oB == null)
            {
                c(hk1.getWebView());
            }
            hk2 = hk1;
        }
        hk2.dN().a(this, this, this, this, false, this, null, v1, this);
        return hk2;
    }

    static b a(u u1)
    {
        return u1.lu;
    }

    private void a(int i)
    {
        hf.X((new StringBuilder()).append("Failed to load ad: ").append(i).toString());
        if (lu.lI == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        lu.lI.onAdFailedToLoad(i);
        return;
        RemoteException remoteexception;
        remoteexception;
        com.google.android.gms.internal.hf.d("Could not call AdListener.onAdFailedToLoad().", remoteexception);
        return;
    }

    private void ab()
    {
        if (lu != null && lu.lF != null)
        {
            com.google.android.gms.internal.ab.aL().a(lu.lF, ly);
        }
    }

    private void ac()
    {
        if (lu != null && lu.lF != null)
        {
            com.google.android.gms.internal.ab.aL().b(lu.lF, ly);
        }
    }

    private void an()
    {
        hf.V("Ad closing.");
        if (lu.lI == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        lu.lI.onAdClosed();
        return;
        RemoteException remoteexception;
        remoteexception;
        com.google.android.gms.internal.hf.d("Could not call AdListener.onAdClosed().", remoteexception);
        return;
    }

    private void ao()
    {
        hf.V("Ad leaving application.");
        if (lu.lI == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        lu.lI.onAdLeftApplication();
        return;
        RemoteException remoteexception;
        remoteexception;
        com.google.android.gms.internal.hf.d("Could not call AdListener.onAdLeftApplication().", remoteexception);
        return;
    }

    private void ap()
    {
        hf.V("Ad opening.");
        if (lu.lI == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        lu.lI.onAdOpened();
        return;
        RemoteException remoteexception;
        remoteexception;
        com.google.android.gms.internal.hf.d("Could not call AdListener.onAdOpened().", remoteexception);
        return;
    }

    private void aq()
    {
        hf.V("Ad finished loading.");
        if (lu.lI == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        lu.lI.onAdLoaded();
        return;
        RemoteException remoteexception;
        remoteexception;
        com.google.android.gms.internal.hf.d("Could not call AdListener.onAdLoaded().", remoteexception);
        return;
    }

    private void ar()
    {
        try
        {
            if ((lu.lM.wH instanceof bx) && lu.lS != null)
            {
                lu.lS.a((bx)lu.lM.wH);
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            com.google.android.gms.internal.hf.d("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", remoteexception);
        }
    }

    private void as()
    {
        try
        {
            if ((lu.lM.wH instanceof by) && lu.lT != null)
            {
                lu.lT.a((by)lu.lM.wH);
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            com.google.android.gms.internal.hf.d("Could not call OnContentAdLoadedListener.onContentAdLoaded().", remoteexception);
        }
    }

    private void au()
    {
        if (lu.lZ == 0)
        {
            lu.aw();
            lu.lM = null;
            lu.mb = false;
        }
    }

    private boolean b(gn gn1)
    {
        if (gn1.uZ)
        {
            View view1;
            View view2;
            try
            {
                view1 = (View)e.f(gn1.rq.getView());
            }
            catch (RemoteException remoteexception)
            {
                com.google.android.gms.internal.hf.d("Could not get View from mediation adapter.", remoteexception);
                return false;
            }
            view2 = lu.lD.getNextView();
            if (view2 != null)
            {
                lu.lD.removeView(view2);
            }
            try
            {
                c(view1);
            }
            catch (Throwable throwable)
            {
                com.google.android.gms.internal.hf.d("Could not add mediation view to view hierarchy.", throwable);
                return false;
            }
        } else
        if (gn1.wE != null)
        {
            gn1.sR.a(gn1.wE);
            lu.lD.removeAllViews();
            lu.lD.setMinimumWidth(gn1.wE.widthPixels);
            lu.lD.setMinimumHeight(gn1.wE.heightPixels);
            c(gn1.sR.getWebView());
        }
        if (lu.lD.getChildCount() > 1)
        {
            lu.lD.showNext();
        }
        if (lu.lM != null)
        {
            View view = lu.lD.getNextView();
            if (view instanceof hk)
            {
                ((hk)view).a(lu.lF, lu.lL);
            } else
            if (view != null)
            {
                lu.lD.removeView(view);
            }
            lu.ay();
        }
        lu.lD.setVisibility(0);
        return true;
    }

    private void d(boolean flag)
    {
        if (lu.lM == null)
        {
            hf.X("Ad state was null when trying to ping impression URLs.");
        } else
        {
            hf.T("Pinging Impression URLs.");
            lu.lO.df();
            if (lu.lM.qY != null)
            {
                com.google.android.gms.internal.ab.aG().a(lu.lF, lu.lH.xP, lu.lM.qY);
            }
            if (lu.lM.wD != null && lu.lM.wD.qY != null)
            {
                com.google.android.gms.internal.ab.aK().a(lu.lF, lu.lH.xP, lu.lM, lu.lE, flag, lu.lM.wD.qY);
            }
            if (lu.lM.rp != null && lu.lM.rp.qT != null)
            {
                com.google.android.gms.internal.ab.aK().a(lu.lF, lu.lH.xP, lu.lM, lu.lE, flag, lu.lM.rp.qT);
                return;
            }
        }
    }

    public d Z()
    {
        s.bb("getAdFrame must be called on the main UI thread.");
        return e.n(lu.lD);
    }

    Bundle a(an an1)
    {
        if (an1 != null)
        {
            if (an1.bm())
            {
                an1.wakeup();
            }
            ak ak1 = an1.bk();
            String s1;
            if (ak1 != null)
            {
                s1 = ak1.bb();
                hf.T((new StringBuilder()).append("In AdManger: loadAd, ").append(ak1.toString()).toString());
            } else
            {
                s1 = null;
            }
            if (s1 != null)
            {
                Bundle bundle = new Bundle(1);
                bundle.putString("fingerprint", s1);
                bundle.putInt("v", 1);
                return bundle;
            }
        }
        return null;
    }

    public void a(int i, int j, int k, int l)
    {
        if (lu.lI == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        lu.lI.onAdOpened();
        return;
        RemoteException remoteexception;
        remoteexception;
        hf.X("Could not call onAdResized.");
        return;
    }

    public void a(af af1, boolean flag)
    {
        if (lu.lM != null && lu.lM.sR != null)
        {
            HashMap hashmap = new HashMap();
            String s1;
            if (flag)
            {
                s1 = "1";
            } else
            {
                s1 = "0";
            }
            hashmap.put("isVisible", s1);
            lu.lM.sR.a("onAdVisibilityChanged", hashmap);
        }
    }

    public void a(ay ay1)
    {
        s.bb("setAdSize must be called on the main UI thread.");
        lu.lL = ay1;
        if (lu.lM != null && lu.lZ == 0)
        {
            lu.lM.sR.a(ay1);
        }
        if (lu.lD.getChildCount() > 1)
        {
            lu.lD.removeView(lu.lD.getNextView());
        }
        lu.lD.setMinimumWidth(ay1.widthPixels);
        lu.lD.setMinimumHeight(ay1.heightPixels);
        lu.lD.requestLayout();
    }

    public void a(bc bc1)
    {
        s.bb("setAdListener must be called on the main UI thread.");
        lu.lI = bc1;
    }

    public void a(bf bf1)
    {
        s.bb("setAppEventListener must be called on the main UI thread.");
        lu.lP = bf1;
    }

    public void a(bv bv1)
    {
        s.bb("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        lu.lU = bv1;
    }

    public void a(ex ex1)
    {
        s.bb("setInAppPurchaseListener must be called on the main UI thread.");
        lu.lR = ex1;
    }

    public void a(fb fb1, String s1)
    {
        s.bb("setPlayStorePurchaseParams must be called on the main UI thread.");
        lu.lW = new eu(s1);
        lu.lQ = fb1;
        if (!gp.dr() && fb1 != null)
        {
            (new em(lu.lF, lu.lQ, lu.lW)).start();
        }
    }

    public void a(gn.a a1)
    {
        lu.lJ = null;
        lu.lN = a1;
        a(((List) (null)));
        hk hk1;
        b b1;
        fl fl1;
        Context context;
        dd dd;
        if (!a1.wJ.vj)
        {
            v v1 = new v();
            hk1 = a(v1);
            v1.a(new v.b(a1, hk1));
            hk1.setOnTouchListener(new android.view.View.OnTouchListener(v1) {

                final v lA;
                final u lz;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    lA.recordClick();
                    return false;
                }

            
            {
                lz = u.this;
                lA = v1;
                super();
            }
            });
            hk1.setOnClickListener(new android.view.View.OnClickListener(v1) {

                final v lA;
                final u lz;

                public void onClick(View view)
                {
                    lA.recordClick();
                }

            
            {
                lz = u.this;
                lA = v1;
                super();
            }
            });
        } else
        {
            hk1 = null;
        }
        if (a1.lL != null)
        {
            lu.lL = a1.lL;
        }
        if (a1.errorCode != -2)
        {
            a(new gn(a1, hk1, null, null, null, null, null));
            return;
        }
        if (!a1.wJ.uZ && a1.wJ.vi)
        {
            String s1 = a1.wJ.sT;
            String s2 = null;
            if (s1 != null)
            {
                s2 = Uri.parse(a1.wJ.sT).buildUpon().query(null).build().toString();
            }
            bs bs1 = new bs(this, s2, a1.wJ.uX);
            try
            {
                if (lu.lU != null)
                {
                    lu.lZ = 1;
                    lu.lU.a(bs1);
                    return;
                }
            }
            catch (RemoteException remoteexception)
            {
                com.google.android.gms.internal.hf.d("Could not call the onCustomRenderedAdLoadedListener.", remoteexception);
            }
        }
        lu.lZ = 0;
        b1 = lu;
        fl1 = com.google.android.gms.internal.ab.aF();
        context = lu.lF;
        dd = lt;
        b1.lK = fl1.a(context, this, a1, hk1, dd, this);
        hf.T((new StringBuilder()).append("AdRenderer: ").append(lu.lK.getClass().getName()).toString());
    }

    public void a(gn gn1)
    {
        lu.lK = null;
        boolean flag;
        if (gn1.wH != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (gn1.errorCode != -2 && gn1.errorCode != 3)
        {
            gp.b(lu.av());
        }
        if (gn1.errorCode != -1)
        {
            if (a(gn1, flag))
            {
                hf.T("Ad refresh scheduled.");
            }
            if (gn1.errorCode == 3 && gn1.wD != null && gn1.wD.qZ != null)
            {
                hf.T("Pinging no fill URLs.");
                com.google.android.gms.internal.ab.aK().a(lu.lF, lu.lH.xP, gn1, lu.lE, false, gn1.wD.qZ);
            }
            if (gn1.errorCode != -2)
            {
                a(gn1.errorCode);
                return;
            }
            if (!lu.lL.oA && !flag && lu.lZ == 0)
            {
                if (!b(gn1))
                {
                    a(0);
                    return;
                }
                if (lu.lD != null)
                {
                    a.a(lu.lD).R(gn1.ve);
                }
            }
            if (lu.lM != null && lu.lM.rs != null)
            {
                lu.lM.rs.a(null);
            }
            if (gn1.rs != null)
            {
                gn1.rs.a(this);
            }
            lw.d(lu.lM);
            lu.lM = gn1;
            lu.lO.i(gn1.wF);
            lu.lO.j(gn1.wG);
            lu.lO.w(lu.lL.oA);
            lu.lO.x(gn1.uZ);
            if (!lu.lL.oA && !flag && lu.lZ == 0)
            {
                d(false);
            }
            if (lu.lX == null)
            {
                lu.lX = new gs(lu.lE);
            }
            int i;
            int j;
            if (gn1.wD != null)
            {
                j = gn1.wD.rc;
                i = gn1.wD.rd;
            } else
            {
                i = 0;
                j = 0;
            }
            lu.lX.e(j, i);
            if (lu.lZ == 0)
            {
                if (!lu.lL.oA && gn1.sR != null && (gn1.sR.dN().dT() || gn1.wC != null))
                {
                    af af1 = lw.a(lu.lL, lu.lM);
                    if (gn1.sR.dN().dT() && af1 != null)
                    {
                        af1.a(this);
                    }
                }
                if (lu.lM.sR != null)
                {
                    lu.lM.sR.ci();
                    lu.lM.sR.dN().dU();
                }
                if (flag)
                {
                    bz.a a1 = gn1.wH;
                    if ((a1 instanceof by) && lu.lT != null)
                    {
                        as();
                    } else
                    if ((a1 instanceof bx) && lu.lS != null)
                    {
                        ar();
                    } else
                    {
                        hf.X("No matching listener for retrieved native ad template.");
                        a(0);
                        return;
                    }
                }
                aq();
                return;
            }
            if (lu.lY != null && gn1.wC != null)
            {
                lw.a(lu.lL, lu.lM, lu.lY);
                return;
            }
        }
    }

    public void a(String s1, ArrayList arraylist)
    {
        en en1 = new en(s1, arraylist, lu.lF, lu.lH.xP);
        if (lu.lR == null)
        {
            hf.X("InAppPurchaseListener is not set. Try to launch default purchase flow.");
            if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(lu.lF) != 0)
            {
                hf.X("Google Play Service unavailable, cannot launch default purchase flow.");
                return;
            }
            if (lu.lQ == null)
            {
                hf.X("PlayStorePurchaseListener is not set.");
                return;
            }
            if (lu.lW == null)
            {
                hf.X("PlayStorePurchaseVerifier is not initialized.");
                return;
            }
            if (lu.ma)
            {
                hf.X("An in-app purchase request is already in progress, abort");
                return;
            }
            lu.ma = true;
            try
            {
                if (!lu.lQ.isValidPurchase(s1))
                {
                    lu.ma = false;
                    return;
                }
            }
            catch (RemoteException remoteexception1)
            {
                hf.X("Could not start In-App purchase.");
                lu.ma = false;
                return;
            }
            eo.a(lu.lF, lu.lH.xS, new ek(lu.lF, lu.lW, en1, this));
            return;
        }
        try
        {
            lu.lR.a(en1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.X("Could not start In-App purchase.");
        }
    }

    public void a(String s1, boolean flag, int i, Intent intent, ep ep)
    {
        try
        {
            if (lu.lQ != null)
            {
                lu.lQ.a(new eq(lu.lF, s1, flag, i, intent, ep));
            }
        }
        catch (RemoteException remoteexception)
        {
            hf.X("Fail to invoke PlayStorePurchaseListener.");
        }
        he.xO.postDelayed(new Runnable(intent) {

            final Intent lB;
            final u lz;

            public void run()
            {
                if (com.google.android.gms.internal.es.d(lB) == 0 && u.a(lz).lM != null && u.a(lz).lM.sR != null && u.a(lz).lM.sR.dM() != null)
                {
                    u.a(lz).lM.sR.dM().close();
                }
                u.a(lz).ma = false;
            }

            
            {
                lz = u.this;
                lB = intent;
                super();
            }
        }, 500L);
    }

    public void a(HashSet hashset)
    {
        lu.a(hashset);
    }

    public void a(List list)
    {
        s.bb("setNativeTemplates must be called on the main UI thread.");
        lu.lV = list;
    }

    public boolean a(av av1)
    {
        s.bb("loadAd must be called on the main UI thread.");
        if (lu.lJ != null || lu.lK != null)
        {
            if (ls != null)
            {
                hf.X("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
            }
            ls = av1;
        } else
        {
            if (lu.lL.oA && lu.lM != null)
            {
                hf.X("An interstitial is already loading. Aborting.");
                return false;
            }
            if (at())
            {
                hf.V("Starting ad request.");
                if (!av1.oq)
                {
                    hf.V((new StringBuilder()).append("Use AdRequest.Builder.addTestDevice(\"").append(he.u(lu.lF)).append("\") to get test ads on this device.").toString());
                }
                Bundle bundle = a(gp.dl().m(lu.lF));
                lv.cancel();
                lu.lZ = 0;
                fx.a a1 = a(av1, bundle);
                lu.lJ = com.google.android.gms.internal.ab.aE().a(lu.lF, a1, lu.lG, this);
                return true;
            }
        }
        return false;
    }

    boolean a(gn gn1, boolean flag)
    {
        boolean flag1 = false;
        av av1;
        boolean flag2;
        if (ls != null)
        {
            av1 = ls;
            ls = null;
        } else
        {
            av1 = gn1.uK;
            Bundle bundle = av1.extras;
            flag1 = false;
            if (bundle != null)
            {
                flag1 = av1.extras.getBoolean("_noRefresh", false);
            }
        }
        flag2 = flag1 | flag;
        if (lu.lL.oA)
        {
            if (lu.lZ == 0)
            {
                com.google.android.gms.internal.ab.aL().a(gn1.sR.getWebView());
            }
        } else
        if (!flag2 && lu.lZ == 0)
        {
            if (gn1.rb > 0L)
            {
                lv.a(av1, gn1.rb);
            } else
            if (gn1.wD != null && gn1.wD.rb > 0L)
            {
                lv.a(av1, gn1.wD.rb);
            } else
            if (!gn1.uZ && gn1.errorCode == 2)
            {
                lv.c(av1);
            }
        }
        return lv.aC();
    }

    public ay aa()
    {
        s.bb("getAdSize must be called on the main UI thread.");
        return lu.lL;
    }

    public void ad()
    {
        ao();
    }

    public void ae()
    {
        lw.d(lu.lM);
        if (lu.lL.oA)
        {
            au();
        }
        lx = false;
        an();
        lu.lO.dh();
    }

    public void af()
    {
        if (lu.lL.oA)
        {
            d(false);
        }
        lx = true;
        ap();
    }

    public void ag()
    {
        onAdClicked();
    }

    public void ah()
    {
        ae();
    }

    public void ai()
    {
        ad();
    }

    public void aj()
    {
        af();
    }

    public void ak()
    {
        if (lu.lM != null)
        {
            hf.X((new StringBuilder()).append("Mediation adapter ").append(lu.lM.rr).append(" refreshed, but mediation adapters should never refresh.").toString());
        }
        d(true);
        aq();
    }

    public void al()
    {
        if (lu.lI == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        lu.lI.onAdClosed();
        return;
        RemoteException remoteexception;
        remoteexception;
        hf.X("Could not call onAdCollapsed.");
        return;
    }

    public void am()
    {
        s.bb("recordManualImpression must be called on the main UI thread.");
        if (lu.lM == null)
        {
            hf.X("Ad state was null when trying to ping manual tracking URLs.");
        } else
        {
            hf.T("Pinging manual tracking URLs.");
            if (lu.lM.vb != null)
            {
                com.google.android.gms.internal.ab.aG().a(lu.lF, lu.lH.xP, lu.lM.vb);
                return;
            }
        }
    }

    public boolean at()
    {
        boolean flag = true;
        if (!com.google.android.gms.internal.ab.aG().a(lu.lF.getPackageManager(), lu.lF.getPackageName(), "android.permission.INTERNET"))
        {
            if (!lu.lL.oA)
            {
                he.a(lu.lD, lu.lL, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            }
            flag = false;
        }
        if (!com.google.android.gms.internal.ab.aG().q(lu.lF))
        {
            if (!lu.lL.oA)
            {
                he.a(lu.lD, lu.lL, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            }
            flag = false;
        }
        if (!flag && !lu.lL.oA)
        {
            lu.lD.setVisibility(0);
        }
        return flag;
    }

    public void b(View view)
    {
        lu.lY = view;
        a(new gn(lu.lN, null, null, null, null, null, null));
    }

    public void b(av av1)
    {
        android.view.ViewParent viewparent = lu.lD.getParent();
        if ((viewparent instanceof View) && ((View)viewparent).isShown() && com.google.android.gms.internal.ab.aG().dB() && !lx)
        {
            a(av1);
            return;
        } else
        {
            hf.V("Ad is not visible. Not refreshing ad.");
            lv.c(av1);
            return;
        }
    }

    protected void c(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-2, -2);
        lu.lD.addView(view, layoutparams);
    }

    public void c(boolean flag)
    {
        lu.mb = flag;
    }

    public void destroy()
    {
        s.bb("destroy must be called on the main UI thread.");
        ac();
        lv.cancel();
        lw.e(lu.lM);
        lu.destroy();
    }

    public String getMediationAdapterClassName()
    {
        if (lu.lM != null)
        {
            return lu.lM.rr;
        } else
        {
            return null;
        }
    }

    public boolean isReady()
    {
        s.bb("isLoaded must be called on the main UI thread.");
        return lu.lJ == null && lu.lK == null && lu.lM != null;
    }

    public void onAdClicked()
    {
        recordClick();
    }

    public void onAppEvent(String s1, String s2)
    {
        if (lu.lP == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        lu.lP.onAppEvent(s1, s2);
        return;
        RemoteException remoteexception;
        remoteexception;
        com.google.android.gms.internal.hf.d("Could not call the AppEventListener.", remoteexception);
        return;
    }

    public void pause()
    {
        s.bb("pause must be called on the main UI thread.");
        if (lu.lM != null && lu.lZ == 0)
        {
            com.google.android.gms.internal.ab.aL().a(lu.lM.sR.getWebView());
        }
        if (lu.lM != null && lu.lM.rq != null)
        {
            try
            {
                lu.lM.rq.pause();
            }
            catch (RemoteException remoteexception)
            {
                hf.X("Could not pause mediation adapter.");
            }
        }
        lw.f(lu.lM);
        lv.pause();
    }

    public void recordClick()
    {
        if (lu.lM == null)
        {
            hf.X("Ad state was null when trying to ping click URLs.");
        } else
        {
            hf.T("Pinging click URLs.");
            lu.lO.dg();
            if (lu.lM.qX != null)
            {
                com.google.android.gms.internal.ab.aG().a(lu.lF, lu.lH.xP, lu.lM.qX);
            }
            if (lu.lM.wD != null && lu.lM.wD.qX != null)
            {
                com.google.android.gms.internal.ab.aK().a(lu.lF, lu.lH.xP, lu.lM, lu.lE, false, lu.lM.wD.qX);
                return;
            }
        }
    }

    public void recordImpression()
    {
        d(false);
    }

    public void resume()
    {
        s.bb("resume must be called on the main UI thread.");
        if (lu.lM != null && lu.lZ == 0)
        {
            com.google.android.gms.internal.ab.aL().b(lu.lM.sR.getWebView());
        }
        if (lu.lM != null && lu.lM.rq != null)
        {
            try
            {
                lu.lM.rq.resume();
            }
            catch (RemoteException remoteexception)
            {
                hf.X("Could not resume mediation adapter.");
            }
        }
        lv.resume();
        lw.g(lu.lM);
    }

    public void showInterstitial()
    {
        s.bb("showInterstitial must be called on the main UI thread.");
        if (!lu.lL.oA)
        {
            hf.X("Cannot call showInterstitial on a banner ad.");
        } else
        {
            if (lu.lM == null)
            {
                hf.X("The interstitial has not loaded.");
                return;
            }
            if (lu.lZ != 1)
            {
                if (lu.lM.sR.dR())
                {
                    hf.X("The interstitial is already showing.");
                    return;
                }
                lu.lM.sR.z(true);
                if (lu.lM.sR.dN().dT() || lu.lM.wC != null)
                {
                    af af1 = lw.a(lu.lL, lu.lM);
                    if (lu.lM.sR.dN().dT() && af1 != null)
                    {
                        af1.a(this);
                    }
                }
                if (lu.lM.uZ)
                {
                    try
                    {
                        lu.lM.rq.showInterstitial();
                        return;
                    }
                    catch (RemoteException remoteexception)
                    {
                        com.google.android.gms.internal.hf.d("Could not show interstitial.", remoteexception);
                    }
                    au();
                    return;
                }
                y y1 = new y(lu.mb, false);
                if (lu.lF instanceof Activity)
                {
                    Window window = ((Activity)lu.lF).getWindow();
                    Rect rect = new Rect();
                    Rect rect1 = new Rect();
                    window.getDecorView().getGlobalVisibleRect(rect);
                    window.getDecorView().getWindowVisibleDisplayFrame(rect1);
                    if (rect.bottom != 0 && rect1.bottom != 0)
                    {
                        boolean flag = lu.mb;
                        int i;
                        dy dy1;
                        boolean flag1;
                        if (rect.top == rect1.top)
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        y1 = new y(flag, flag1);
                    }
                }
                i = lu.lM.sR.getRequestedOrientation();
                if (i == -1)
                {
                    i = lu.lM.orientation;
                }
                dy1 = new dy(this, this, this, lu.lM.sR, i, lu.lH, lu.lM.ve, y1);
                dw.a(lu.lF, dy1);
                return;
            }
        }
    }

    public void stopLoading()
    {
        s.bb("stopLoading must be called on the main UI thread.");
        lu.e(true);
    }
}
