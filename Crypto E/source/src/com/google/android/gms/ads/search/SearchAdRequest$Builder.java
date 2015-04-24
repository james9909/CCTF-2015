// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.search;

import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.NetworkExtras;

// Referenced classes of package com.google.android.gms.ads.search:
//            SearchAdRequest

public static final class yJ
{

    private final com.google.android.gms.internal.r.lh lh = new com.google.android.gms.internal.r.lh();
    private int yD;
    private int yE;
    private int yF;
    private int yG;
    private int yH;
    private int yI;
    private int yJ;
    private int yK;
    private String yL;
    private int yM;
    private String yN;
    private int yO;
    private int yP;
    private String yQ;

    static int a(yJ yj)
    {
        return yj.yD;
    }

    static int b(yD yd)
    {
        return yd.yE;
    }

    static int c(yE ye)
    {
        return ye.yF;
    }

    static int d(yF yf)
    {
        return yf.yG;
    }

    static int e(yG yg)
    {
        return yg.yH;
    }

    static int f(yH yh)
    {
        return yh.yI;
    }

    static int g(yI yi)
    {
        return yi.yJ;
    }

    static int h(yJ yj)
    {
        return yj.yK;
    }

    static String i(yK yk)
    {
        return yk.yL;
    }

    static int j(yL yl)
    {
        return yl.yM;
    }

    static String k(yM ym)
    {
        return ym.yN;
    }

    static int l(yN yn)
    {
        return yn.yO;
    }

    static int m(yO yo)
    {
        return yo.yP;
    }

    static String n(yP yp)
    {
        return yp.yQ;
    }

    static com.google.android.gms.internal.r o(yQ yq)
    {
        return yq.lh;
    }

    public lh addCustomEventExtrasBundle(Class class1, Bundle bundle)
    {
        lh.lh(class1, bundle);
        return this;
    }

    public lh addNetworkExtras(NetworkExtras networkextras)
    {
        lh.lh(networkextras);
        return this;
    }

    public lh addNetworkExtrasBundle(Class class1, Bundle bundle)
    {
        lh.lh(class1, bundle);
        return this;
    }

    public lh addTestDevice(String s)
    {
        lh.lh(s);
        return this;
    }

    public SearchAdRequest build()
    {
        return new SearchAdRequest(this, null);
    }

    public lh setAnchorTextColor(int i1)
    {
        yD = i1;
        return this;
    }

    public yD setBackgroundColor(int i1)
    {
        yE = i1;
        yF = Color.argb(0, 0, 0, 0);
        yG = Color.argb(0, 0, 0, 0);
        return this;
    }

    public yG setBackgroundGradient(int i1, int j1)
    {
        yE = Color.argb(0, 0, 0, 0);
        yF = j1;
        yG = i1;
        return this;
    }

    public yG setBorderColor(int i1)
    {
        yH = i1;
        return this;
    }

    public yH setBorderThickness(int i1)
    {
        yI = i1;
        return this;
    }

    public yI setBorderType(int i1)
    {
        yJ = i1;
        return this;
    }

    public yJ setCallButtonColor(int i1)
    {
        yK = i1;
        return this;
    }

    public yK setCustomChannels(String s)
    {
        yL = s;
        return this;
    }

    public yL setDescriptionTextColor(int i1)
    {
        yM = i1;
        return this;
    }

    public yM setFontFace(String s)
    {
        yN = s;
        return this;
    }

    public yN setHeaderTextColor(int i1)
    {
        yO = i1;
        return this;
    }

    public yO setHeaderTextSize(int i1)
    {
        yP = i1;
        return this;
    }

    public yP setLocation(Location location)
    {
        lh.lh(location);
        return this;
    }

    public lh setQuery(String s)
    {
        yQ = s;
        return this;
    }

    public yQ tagForChildDirectedTreatment(boolean flag)
    {
        lh.lh(flag);
        return this;
    }

    public ()
    {
        yJ = 0;
    }
}
