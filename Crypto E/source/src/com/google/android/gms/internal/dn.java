// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdSize;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hk, ab, gx, hf, 
//            he, ds, ay

public class dn
{

    static final Set rK = new HashSet(Arrays.asList(new String[] {
        "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center"
    }));
    private int li;
    private int lj;
    private final Context mContext;
    private final hk mj;
    private String rL;
    private boolean rM;
    private int rN;
    private int rO;
    private int rP;
    private int rQ;
    private ImageView rR;
    private LinearLayout rS;
    private ds rT;
    private PopupWindow rU;
    private RelativeLayout rV;
    private ViewParent rW;
    private ay rj;

    public dn(hk hk1, ds ds1)
    {
        rL = "top-right";
        rM = true;
        rN = 0;
        rO = 0;
        lj = -1;
        rP = 0;
        rQ = 0;
        li = -1;
        mj = hk1;
        mContext = hk1.dL();
        rT = ds1;
    }

    private void e(Map map)
    {
        ab.aG().t(mContext);
        if (!TextUtils.isEmpty((CharSequence)map.get("width")))
        {
            li = ab.aG().P((String)map.get("width"));
        }
        if (!TextUtils.isEmpty((CharSequence)map.get("height")))
        {
            lj = ab.aG().P((String)map.get("height"));
        }
        if (!TextUtils.isEmpty((CharSequence)map.get("offsetX")))
        {
            rP = ab.aG().P((String)map.get("offsetX"));
        }
        if (!TextUtils.isEmpty((CharSequence)map.get("offsetY")))
        {
            rQ = ab.aG().P((String)map.get("offsetY"));
        }
        if (!TextUtils.isEmpty((CharSequence)map.get("allowOffscreen")))
        {
            rM = Boolean.parseBoolean((String)map.get("allowOffscreen"));
        }
        String s = (String)map.get("customClosePosition");
        if (!TextUtils.isEmpty(s))
        {
            rL = s;
        }
    }

    void E(String s)
    {
        try
        {
            JSONObject jsonobject = (new JSONObject()).put("state", s);
            mj.b("onStateChanged", jsonobject);
            return;
        }
        catch (JSONException jsonexception)
        {
            hf.b("Error occured while dispatching state change.", jsonexception);
        }
    }

    public void b(int i, int j)
    {
label0:
        {
            rN = i;
            rO = j;
            if (rU != null && rU.isShowing())
            {
                int ai[] = bX();
                if (ai == null)
                {
                    break label0;
                }
                rU.update(ai[0], ai[1], rU.getWidth(), rU.getHeight());
            }
            return;
        }
        k(true);
    }

    boolean bW()
    {
        return li > -1 && lj > -1;
    }

    public int[] bX()
    {
        if (!ca())
        {
            return null;
        }
        if (rM)
        {
            int ai2[] = new int[2];
            ai2[0] = he.a(mContext, rN + rP);
            ai2[1] = he.a(mContext, rO + rQ);
            return ai2;
        }
        int ai[] = ab.aG().t(mContext);
        int i = ai[0];
        int j = ai[1];
        int l = rN + rP;
        int i1 = rO + rQ;
        int j1;
        int ai1[];
        if (l < 0)
        {
            j1 = 0;
        } else
        if (l + li > i)
        {
            j1 = i - li;
        } else
        {
            j1 = l;
        }
        if (i1 >= 0) goto _L2; else goto _L1
_L1:
        i1 = 0;
_L4:
        ai1 = new int[2];
        ai1[0] = he.a(mContext, j1);
        ai1[1] = he.a(mContext, i1);
        return ai1;
_L2:
        if (i1 + lj > j)
        {
            i1 = j - lj;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    void bY()
    {
        try
        {
            JSONObject jsonobject = (new JSONObject()).put("x", rP).put("y", rQ).put("width", li).put("height", lj);
            mj.b("onSizeChanged", jsonobject);
            return;
        }
        catch (JSONException jsonexception)
        {
            hf.b("Error occured while dispatching size change.", jsonexception);
        }
    }

    public boolean bZ()
    {
        if (rU != null)
        {
            return rU.isShowing();
        } else
        {
            return false;
        }
    }

    void c(int i, int j)
    {
        if (rT != null)
        {
            rT.a(he.b(mContext, i), he.b(mContext, j), li, lj);
        }
    }

    boolean ca()
    {
        int ai1[];
        int i;
        int ai[] = ab.aG().h((Activity)mContext);
        ai1 = ab.aG().j((Activity)mContext);
        i = ai[0];
        int j = ai[1];
        if (li < 50 || li > i)
        {
            return false;
        }
        if (lj < 50 || lj > j)
        {
            return false;
        }
        if (lj == j && li == i)
        {
            return false;
        }
        if (!rM) goto _L2; else goto _L1
_L1:
        String s;
        byte byte0;
        s = rL;
        byte0 = -1;
        s.hashCode();
        JVM INSTR lookupswitch 6: default 176
    //                   -1364013995: 313
    //                   -1012429441: 281
    //                   -655373719: 329
    //                   1163912186: 361
    //                   1288627767: 345
    //                   1755462605: 297;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L3:
        byte0;
        JVM INSTR tableswitch 0 5: default 216
    //                   0 377
    //                   1 402
    //                   2 437
    //                   3 482
    //                   4 515
    //                   5 558;
           goto _L10 _L11 _L12 _L13 _L14 _L15 _L16
_L10:
        int l;
        int i1;
        l = -50 + (rN + rP + li);
        i1 = rO + rQ;
_L17:
        if (l < 0 || l + 50 > i || i1 < ai1[0] || i1 + 50 > ai1[1])
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
_L5:
        if (s.equals("top-left"))
        {
            byte0 = 0;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        if (s.equals("top-center"))
        {
            byte0 = 1;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (s.equals("center"))
        {
            byte0 = 2;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (s.equals("bottom-left"))
        {
            byte0 = 3;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (s.equals("bottom-center"))
        {
            byte0 = 4;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if (s.equals("bottom-right"))
        {
            byte0 = 5;
        }
        continue; /* Loop/switch isn't completed */
_L11:
        l = rN + rP;
        i1 = rO + rQ;
        continue; /* Loop/switch isn't completed */
_L12:
        l = -25 + (rN + rP + li / 2);
        i1 = rO + rQ;
        continue; /* Loop/switch isn't completed */
_L13:
        l = -25 + (rN + rP + li / 2);
        i1 = -25 + (rO + rQ + lj / 2);
        continue; /* Loop/switch isn't completed */
_L14:
        l = rN + rP;
        i1 = -50 + (rO + rQ + lj);
        continue; /* Loop/switch isn't completed */
_L15:
        l = -25 + (rN + rP + li / 2);
        i1 = -50 + (rO + rQ + lj);
        continue; /* Loop/switch isn't completed */
_L16:
        l = -50 + (rN + rP + li);
        i1 = -50 + (rO + rQ + lj);
        if (true) goto _L17; else goto _L2
_L2:
        return true;
        if (true) goto _L3; else goto _L18
_L18:
    }

    public void d(int i, int j)
    {
        hf.V("setDefaultPosition");
        rN = i;
        rO = j;
    }

    public void f(Map map)
    {
        if (mContext != null) goto _L2; else goto _L1
_L1:
        hf.X("Not an activity context. Cannot resize.");
_L4:
        return;
_L2:
        if (mj.aa().oA)
        {
            hf.X("Is interstitial. Cannot resize an interstitial.");
            return;
        }
        if (mj.dR())
        {
            hf.X("Is expanded. Cannot resize an expanded banner.");
            return;
        }
        e(map);
        if (!bW())
        {
            hf.X("Invalid width and height options. Cannot resize.");
            return;
        }
        Window window;
        int ai[];
        int ai1[];
        int i;
        int j;
        PopupWindow popupwindow;
        boolean flag;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        String s;
        byte byte0;
        Bitmap bitmap;
        if (mContext instanceof Activity)
        {
            window = ((Activity)mContext).getWindow();
        } else
        {
            window = null;
        }
        if (window == null || window.getDecorView() == null) goto _L4; else goto _L3
_L3:
        ai = new int[2];
        mj.getLocationOnScreen(ai);
        rN = he.b(mContext, ai[0]);
        rO = he.b(mContext, ai[1]);
        ai1 = bX();
        if (ai1 == null) goto _L4; else goto _L5
_L5:
        i = he.a(mContext, li);
        j = he.a(mContext, lj);
        rW = mj.getWebView().getParent();
        if (rW != null && (rW instanceof ViewGroup))
        {
            mj.getWebView().setDrawingCacheEnabled(true);
            bitmap = Bitmap.createBitmap(mj.getWebView().getDrawingCache());
            mj.getWebView().setDrawingCacheEnabled(false);
            rR = new ImageView(mContext);
            rR.setImageBitmap(bitmap);
            ((ViewGroup)rW).removeView(mj.getWebView());
            ((ViewGroup)rW).addView(rR);
            rj = mj.aa();
        }
        rV = new RelativeLayout(mContext);
        rV.setBackgroundColor(0);
        rV.setLayoutParams(new android.view.ViewGroup.LayoutParams(i, j));
        rU = new PopupWindow(rV, i, j, false);
        rU.setOutsideTouchable(true);
        popupwindow = rU;
        if (!rM)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        popupwindow.setClippingEnabled(flag);
        rV.addView(mj.getWebView(), -1, -1);
        rS = new LinearLayout(mContext);
        layoutparams = new android.widget.RelativeLayout.LayoutParams(he.a(mContext, 50), he.a(mContext, 50));
        s = rL;
        s.hashCode();
        JVM INSTR lookupswitch 6: default 552
    //                   -1364013995: 755
    //                   -1012429441: 723
    //                   -655373719: 771
    //                   1163912186: 803
    //                   1288627767: 787
    //                   1755462605: 739;
           goto _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L6:
        byte0 = -1;
_L21:
        byte0;
        JVM INSTR tableswitch 0 5: default 596
    //                   0 819
    //                   1 836
    //                   2 853
    //                   3 863
    //                   4 880
    //                   5 897;
           goto _L13 _L14 _L15 _L16 _L17 _L18 _L19
_L13:
        layoutparams.addRule(10);
        layoutparams.addRule(11);
_L27:
        rS.setOnClickListener(new android.view.View.OnClickListener() {

            final dn rX;

            public void onClick(View view)
            {
                rX.k(true);
            }

            
            {
                rX = dn.this;
                super();
            }
        });
        rV.addView(rS, layoutparams);
        rU.showAtLocation(window.getDecorView(), 0, ai1[0], ai1[1]);
        c(ai1[0], ai1[1]);
        mj.a(new ay(mContext, new AdSize(li, lj)));
        bY();
        E("resized");
        return;
_L8:
        if (!s.equals("top-left")) goto _L6; else goto _L20
_L20:
        byte0 = 0;
          goto _L21
_L12:
        if (!s.equals("top-center")) goto _L6; else goto _L22
_L22:
        byte0 = 1;
          goto _L21
_L7:
        if (!s.equals("center")) goto _L6; else goto _L23
_L23:
        byte0 = 2;
          goto _L21
_L9:
        if (!s.equals("bottom-left")) goto _L6; else goto _L24
_L24:
        byte0 = 3;
          goto _L21
_L11:
        if (!s.equals("bottom-center")) goto _L6; else goto _L25
_L25:
        byte0 = 4;
          goto _L21
_L10:
        if (!s.equals("bottom-right")) goto _L6; else goto _L26
_L26:
        byte0 = 5;
          goto _L21
_L14:
        layoutparams.addRule(10);
        layoutparams.addRule(9);
          goto _L27
_L15:
        layoutparams.addRule(10);
        layoutparams.addRule(14);
          goto _L27
_L16:
        layoutparams.addRule(13);
          goto _L27
_L17:
        layoutparams.addRule(12);
        layoutparams.addRule(9);
          goto _L27
_L18:
        layoutparams.addRule(12);
        layoutparams.addRule(14);
          goto _L27
_L19:
        layoutparams.addRule(12);
        layoutparams.addRule(11);
          goto _L27
    }

    public void k(boolean flag)
    {
        if (rU != null && rU.isShowing())
        {
            rU.dismiss();
            ViewParent viewparent = mj.getParent();
            if (viewparent != null && (viewparent instanceof ViewGroup))
            {
                ((ViewGroup)viewparent).removeView(mj.getWebView());
            }
            if (rW != null && (rW instanceof ViewGroup))
            {
                ((ViewGroup)rW).removeView(rR);
                ((ViewGroup)rW).addView(mj.getWebView());
                mj.a(rj);
            }
            if (flag)
            {
                E("default");
                if (rT != null)
                {
                    rT.al();
                }
            }
        }
    }

}
