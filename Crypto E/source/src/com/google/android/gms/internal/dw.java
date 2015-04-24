// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

// Referenced classes of package com.google.android.gms.internal:
//            dy, hg, ea, hk, 
//            dz, hl, hf, y, 
//            t, dt, ab, gy, 
//            eb, hm, hb

public class dw extends ee.a
{
    static final class a extends Exception
    {

        public a(String s1)
        {
            super(s1);
        }
    }

    static final class b extends RelativeLayout
    {

        private final hb lC;

        public boolean onInterceptTouchEvent(MotionEvent motionevent)
        {
            lC.c(motionevent);
            return false;
        }

        public b(Context context, String s1)
        {
            super(context);
            lC = new hb(context, s1);
        }
    }

    static final class c
    {

        public final int index;
        public final android.view.ViewGroup.LayoutParams sM;
        public final ViewGroup sN;

        public c(hk hk1)
        {
            sM = hk1.getLayoutParams();
            android.view.ViewParent viewparent = hk1.getParent();
            if (viewparent instanceof ViewGroup)
            {
                sN = (ViewGroup)viewparent;
                index = sN.indexOfChild(hk1.getWebView());
                sN.removeView(hk1.getWebView());
                hk1.z(true);
                return;
            } else
            {
                throw new a("Could not get the parent of the WebView for an overlay.");
            }
        }
    }


    private static final int sx = Color.argb(0, 0, 0, 0);
    private hk mj;
    private final Activity nL;
    private RelativeLayout rV;
    private c sA;
    private eb sB;
    private boolean sC;
    private boolean sD;
    private FrameLayout sE;
    private android.webkit.WebChromeClient.CustomViewCallback sF;
    private boolean sG;
    private boolean sH;
    private boolean sI;
    private boolean sJ;
    private boolean sK;
    private dy sy;
    private ea sz;

    public dw(Activity activity)
    {
        sD = false;
        sG = false;
        sH = false;
        sI = true;
        sJ = false;
        sK = false;
        nL = activity;
    }

    public static void a(Context context, dy dy1)
    {
        a(context, dy1, true);
    }

    public static void a(Context context, dy dy1, boolean flag)
    {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", dy1.lH.xS);
        intent.putExtra("shouldCallOnOverlayOpened", flag);
        dy.a(intent, dy1);
        intent.addFlags(0x80000);
        if (!(context instanceof Activity))
        {
            intent.addFlags(0x10000000);
        }
        context.startActivity(intent);
    }

    private static android.widget.RelativeLayout.LayoutParams b(int i, int j, int k, int l)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(k, l);
        layoutparams.setMargins(i, j, 0, 0);
        layoutparams.addRule(10);
        layoutparams.addRule(9);
        return layoutparams;
    }

    public void X()
    {
        sC = true;
    }

    public void a(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        sE = new FrameLayout(nL);
        sE.setBackgroundColor(0xff000000);
        sE.addView(view, -1, -1);
        nL.setContentView(sE);
        X();
        sF = customviewcallback;
        sD = true;
    }

    public void c(int i, int j, int k, int l)
    {
        if (sz != null)
        {
            sz.setLayoutParams(b(i, j, k, l));
        }
    }

    public ea cl()
    {
        return sz;
    }

    public void close()
    {
        nL.finish();
    }

    public void cm()
    {
        if (sy != null && sD)
        {
            setRequestedOrientation(sy.orientation);
        }
        if (sE != null)
        {
            nL.setContentView(rV);
            X();
            sE.removeAllViews();
            sE = null;
        }
        if (sF != null)
        {
            sF.onCustomViewHidden();
            sF = null;
        }
        sD = false;
    }

    public void cn()
    {
        rV.removeView(sB);
        q(true);
    }

    void co()
    {
        if (nL.isFinishing() && !sH)
        {
            sH = true;
            if (nL.isFinishing())
            {
                if (mj != null)
                {
                    cr();
                    rV.removeView(mj.getWebView());
                    if (sA != null)
                    {
                        mj.z(false);
                        sA.sN.addView(mj.getWebView(), sA.index, sA.sM);
                    }
                }
                if (sy != null && sy.sQ != null)
                {
                    sy.sQ.ae();
                    return;
                }
            }
        }
    }

    public void cp()
    {
        if (sK)
        {
            sK = false;
            cq();
        }
    }

    void cq()
    {
        mj.cq();
    }

    void cr()
    {
        mj.cr();
    }

    public void d(int i, int j, int k, int l)
    {
        if (sz == null)
        {
            sz = new ea(nL, mj);
            rV.addView(sz, 0, b(i, j, k, l));
            mj.dN().A(false);
        }
    }

    public void onCreate(Bundle bundle)
    {
        boolean flag = false;
        if (bundle != null)
        {
            flag = bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        }
        sG = flag;
        a a1;
        sy = dy.b(nL.getIntent());
        if (sy == null)
        {
            throw new a("Could not get info for ad overlay.");
        }
          goto _L1
_L10:
        return;
_L1:
        if (nL.getIntent() != null)
        {
            sI = nL.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
        }
        if (sy.ta == null) goto _L3; else goto _L2
_L2:
        sJ = sy.ta.mb;
_L9:
        if (bundle != null)
        {
            break MISSING_BLOCK_LABEL_185;
        }
        if (sy.sQ != null && sI)
        {
            sy.sQ.af();
        }
        if (sy.sX != 1 && sy.sP != null)
        {
            sy.sP.onAdClicked();
        }
        sy.sX;
        JVM INSTR tableswitch 1 4: default 224
    //                   1 243
    //                   2 249
    //                   3 273
    //                   4 279;
           goto _L4 _L5 _L6 _L7 _L8
_L4:
        throw new a("Could not determine ad overlay type.");
_L3:
        sJ = false;
          goto _L9
_L5:
        try
        {
            s(false);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (a a1)
        {
            hf.X(a1.getMessage());
            nL.finish();
        }
          goto _L10
_L6:
        sA = new c(sy.sR);
        s(false);
        return;
_L7:
        s(true);
        return;
_L8:
        if (sG)
        {
            nL.finish();
            return;
        }
        if (dt.a(nL, sy.sO, sy.sW)) goto _L10; else goto _L11
_L11:
        nL.finish();
        return;
    }

    public void onDestroy()
    {
        if (sz != null)
        {
            sz.destroy();
        }
        if (mj != null)
        {
            rV.removeView(mj.getWebView());
        }
        co();
    }

    public void onPause()
    {
        if (sz != null)
        {
            sz.pause();
        }
        cm();
        if (mj != null && (!nL.isFinishing() || sA == null))
        {
            ab.aL().a(mj.getWebView());
        }
        co();
    }

    public void onRestart()
    {
    }

    public void onResume()
    {
        if (sy != null && sy.sX == 4)
        {
            if (sG)
            {
                nL.finish();
            } else
            {
                sG = true;
            }
        }
        if (mj != null)
        {
            ab.aL().b(mj.getWebView());
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", sG);
    }

    public void onStart()
    {
    }

    public void onStop()
    {
        co();
    }

    public void q(boolean flag)
    {
        byte byte0;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        byte byte1;
        if (flag)
        {
            byte0 = 50;
        } else
        {
            byte0 = 32;
        }
        sB = new eb(nL, byte0);
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(10);
        if (flag)
        {
            byte1 = 11;
        } else
        {
            byte1 = 9;
        }
        layoutparams.addRule(byte1);
        sB.r(sy.sU);
        rV.addView(sB, layoutparams);
    }

    public void r(boolean flag)
    {
        if (sB != null)
        {
            sB.r(flag);
        }
    }

    void s(boolean flag)
    {
        if (!sC)
        {
            nL.requestWindowFeature(1);
        }
        Window window = nL.getWindow();
        if (!sJ || sy.ta.mn)
        {
            window.setFlags(1024, 1024);
        }
        sK = false;
        if (sy.orientation == ab.aL().dF())
        {
            boolean flag2;
            android.view.ViewParent viewparent;
            boolean flag3;
            if (nL.getResources().getConfiguration().orientation == 1)
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            sK = flag3;
        } else
        if (sy.orientation == ab.aL().dG())
        {
            boolean flag1;
            if (nL.getResources().getConfiguration().orientation == 2)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            sK = flag1;
        }
        hf.T((new StringBuilder()).append("Delay onShow to next orientation change: ").append(sK).toString());
        setRequestedOrientation(sy.orientation);
        if (ab.aL().a(window))
        {
            hf.T("Hardware acceleration on the AdActivity window enabled.");
        }
        rV = new b(nL, sy.sZ);
        if (!sJ)
        {
            rV.setBackgroundColor(0xff000000);
        } else
        {
            rV.setBackgroundColor(sx);
        }
        nL.setContentView(rV);
        X();
        flag2 = sy.sR.dN().dT();
        if (flag)
        {
            mj = ab.aH().a(nL, sy.sR.aa(), true, flag2, null, sy.lH);
            mj.dN().a(null, null, sy.sS, sy.sW, true, sy.sY, null, sy.sR.dN().dS(), null);
            mj.dN().a(new hl.a() {

                final dw sL;

                public void a(hk hk1)
                {
                    hk1.dN().dU();
                    hk1.cq();
                }

            
            {
                sL = dw.this;
                super();
            }
            });
            if (sy.st != null)
            {
                mj.loadUrl(sy.st);
            } else
            if (sy.sV != null)
            {
                mj.loadDataWithBaseURL(sy.sT, sy.sV, "text/html", "UTF-8", null);
            } else
            {
                throw new a("No URL or HTML to display in ad overlay.");
            }
        } else
        {
            mj = sy.sR;
            mj.setContext(nL);
        }
        mj.a(this);
        viewparent = mj.getParent();
        if (viewparent != null && (viewparent instanceof ViewGroup))
        {
            ((ViewGroup)viewparent).removeView(mj.getWebView());
        }
        if (sJ)
        {
            mj.setBackgroundColor(sx);
        }
        rV.addView(mj.getWebView(), -1, -1);
        if (!flag && !sK)
        {
            cq();
        }
        q(flag2);
        if (mj.dO())
        {
            r(true);
        }
    }

    public void setRequestedOrientation(int i)
    {
        nL.setRequestedOrientation(i);
    }

}
