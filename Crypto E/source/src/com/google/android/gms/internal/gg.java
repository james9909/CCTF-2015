// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ab, gy, hf, fz, 
//            fx, hg, gf, bm, 
//            ay, gk, av, gx, 
//            gt, bj

public final class gg
{

    private static final SimpleDateFormat vF = new SimpleDateFormat("yyyyMMdd");

    public static fz a(Context context, fx fx1, String s)
    {
        JSONObject jsonobject;
        String s1;
        String s3;
        String s4;
        long l;
        String s5;
        long l1;
        int i;
        fz fz3;
        Object obj;
        int i1;
        String s2;
        String s6;
        fz fz1;
        fz fz2;
        JSONArray jsonarray;
        try
        {
            jsonobject = new JSONObject(s);
            s1 = jsonobject.optString("ad_base_url", null);
            s2 = jsonobject.optString("ad_url", null);
            s3 = jsonobject.optString("ad_size", null);
            s4 = jsonobject.optString("ad_html", null);
        }
        catch (JSONException jsonexception)
        {
            hf.X((new StringBuilder()).append("Could not parse the mediation config: ").append(jsonexception.getMessage()).toString());
            return new fz(0);
        }
        l = -1L;
        s5 = jsonobject.optString("debug_dialog", null);
        if (!jsonobject.has("interstitial_timeout")) goto _L2; else goto _L1
_L1:
        l1 = (long)(1000D * jsonobject.getDouble("interstitial_timeout"));
_L42:
        s6 = jsonobject.optString("orientation", null);
        i = -1;
        if (!"portrait".equals(s6)) goto _L4; else goto _L3
_L3:
        i = ab.aL().dG();
_L7:
        if (TextUtils.isEmpty(s4))
        {
            break; /* Loop/switch isn't completed */
        }
        if (TextUtils.isEmpty(s1))
        {
            hf.X("Could not parse the mediation config: Missing required ad_base_url field");
            return new fz(0);
        }
          goto _L5
_L4:
        if ("landscape".equals(s6))
        {
            i = ab.aL().dF();
        }
        if (true) goto _L7; else goto _L6
_L6:
        if (TextUtils.isEmpty(s2)) goto _L9; else goto _L8
_L8:
        fz2 = gf.a(context, fx1.lH.xP, s2, null, null);
        s1 = fz2.sT;
        s4 = fz2.uX;
        l = fz2.vd;
        fz3 = fz2;
_L41:
        jsonarray = jsonobject.optJSONArray("click_urls");
        if (fz3 != null) goto _L11; else goto _L10
_L10:
        obj = null;
_L19:
        if (jsonarray == null) goto _L13; else goto _L12
_L12:
        if (obj != null) goto _L15; else goto _L14
_L14:
        obj = new LinkedList();
          goto _L15
_L18:
        if (i1 >= jsonarray.length()) goto _L17; else goto _L16
_L16:
        ((List) (obj)).add(jsonarray.getString(i1));
        i1++;
          goto _L18
_L9:
        hf.X("Could not parse the mediation config: Missing required ad_html or ad_url field.");
        fz1 = new fz(0);
        return fz1;
_L11:
        obj = fz3.qX;
          goto _L19
_L40:
        JSONArray jsonarray1 = jsonobject.optJSONArray("impression_urls");
        if (fz3 != null) goto _L21; else goto _L20
_L20:
        Object obj2 = null;
_L29:
        if (jsonarray1 == null) goto _L23; else goto _L22
_L22:
        if (obj2 != null) goto _L25; else goto _L24
_L24:
        obj2 = new LinkedList();
          goto _L25
_L28:
        int k;
        if (k >= jsonarray1.length()) goto _L27; else goto _L26
_L26:
        ((List) (obj2)).add(jsonarray1.getString(k));
        k++;
          goto _L28
_L21:
        obj2 = fz3.qY;
          goto _L29
_L39:
        JSONArray jsonarray2 = jsonobject.optJSONArray("manual_impression_urls");
        if (fz3 != null) goto _L31; else goto _L30
_L30:
        Object obj4 = null;
_L37:
        if (jsonarray2 == null) goto _L33; else goto _L32
_L32:
        if (obj4 != null) goto _L35; else goto _L34
_L34:
        obj4 = new LinkedList();
          goto _L35
_L36:
        int j;
        if (j >= jsonarray2.length())
        {
            break MISSING_BLOCK_LABEL_762;
        }
        ((List) (obj4)).add(jsonarray2.getString(j));
        j++;
          goto _L36
_L31:
        obj4 = fz3.vb;
          goto _L37
_L38:
        if (fz3 == null)
        {
            break MISSING_BLOCK_LABEL_542;
        }
        if (fz3.orientation != -1)
        {
            i = fz3.orientation;
        }
        if (fz3.uY > 0L)
        {
            l1 = fz3.uY;
        }
        String s7;
        boolean flag;
        s7 = jsonobject.optString("active_view");
        flag = jsonobject.optBoolean("ad_is_javascript", false);
        String s8;
        s8 = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_576;
        }
        s8 = jsonobject.optString("ad_passback_url", null);
        Object obj1;
        Object obj3;
        Object obj5;
        fz fz4;
        boolean flag1 = jsonobject.optBoolean("mediation", false);
        boolean flag2 = jsonobject.optBoolean("custom_render_allowed", false);
        boolean flag3 = jsonobject.optBoolean("native", false);
        boolean flag4 = jsonobject.optBoolean("content_url_opted_out", false);
        boolean flag5 = jsonobject.optBoolean("prefetch", false);
        long l2 = jsonobject.optLong("refresh_interval_milliseconds", -1L);
        fz4 = new fz(s1, s4, ((List) (obj1)), ((List) (obj3)), l1, flag1, jsonobject.optLong("mediation_config_cache_time_milliseconds", -1L), ((List) (obj5)), l2, i, s3, l, s5, flag, s8, s7, flag2, flag3, fx1.uS, flag4, flag5);
        return fz4;
_L33:
        obj5 = obj4;
          goto _L38
_L23:
        obj3 = obj2;
          goto _L39
_L13:
        obj1 = obj;
          goto _L40
_L5:
        fz3 = null;
          goto _L41
_L2:
        l1 = -1L;
          goto _L42
_L15:
        i1 = 0;
          goto _L18
_L17:
        obj1 = obj;
          goto _L40
_L25:
        k = 0;
          goto _L28
_L27:
        obj3 = obj2;
          goto _L39
_L35:
        j = 0;
          goto _L36
        obj5 = obj4;
          goto _L38
    }

    public static JSONObject a(fx fx1, gk gk1, Location location, bm bm1)
    {
        HashMap hashmap;
        hashmap = new HashMap();
        List list = bm1.bD();
        if (list.size() > 0)
        {
            hashmap.put("eid", TextUtils.join(",", list));
        }
        if (fx1.uJ != null)
        {
            hashmap.put("ad_pos", fx1.uJ);
        }
        a(hashmap, fx1.uK);
        hashmap.put("format", fx1.lL.oz);
        if (fx1.lL.width == -1)
        {
            hashmap.put("smart_w", "full");
        }
        if (fx1.lL.height == -2)
        {
            hashmap.put("smart_h", "auto");
        }
        if (fx1.lL.oB == null) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder;
        ay aay[];
        int i;
        stringbuilder = new StringBuilder();
        aay = fx1.lL.oB;
        i = aay.length;
        int j = 0;
_L8:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_297;
        }
        ay ay1;
        ay1 = aay[j];
        if (stringbuilder.length() != 0)
        {
            stringbuilder.append("|");
        }
        if (ay1.width != -1) goto _L4; else goto _L3
_L3:
        int k = (int)((float)ay1.widthPixels / gk1.uW);
_L5:
        int l;
        stringbuilder.append(k);
        stringbuilder.append("x");
        if (ay1.height != -2)
        {
            break MISSING_BLOCK_LABEL_287;
        }
        l = (int)((float)ay1.heightPixels / gk1.uW);
_L6:
        stringbuilder.append(l);
        j++;
        continue; /* Loop/switch isn't completed */
_L4:
        k = ay1.width;
          goto _L5
        l = ay1.height;
          goto _L6
        hashmap.put("sz", stringbuilder);
_L2:
        if (fx1.uQ != 0)
        {
            hashmap.put("native_version", Integer.valueOf(fx1.uQ));
            hashmap.put("native_templates", fx1.lV);
        }
        hashmap.put("slotname", fx1.lE);
        hashmap.put("pn", fx1.applicationInfo.packageName);
        if (fx1.uL != null)
        {
            hashmap.put("vc", Integer.valueOf(fx1.uL.versionCode));
        }
        hashmap.put("ms", fx1.uM);
        hashmap.put("seq_num", fx1.uN);
        hashmap.put("session_id", fx1.uO);
        hashmap.put("js", fx1.lH.xP);
        a(hashmap, gk1);
        if (fx1.uK.versionCode >= 2 && fx1.uK.ov != null)
        {
            a(hashmap, fx1.uK.ov);
        }
        if (fx1.versionCode >= 2)
        {
            hashmap.put("quality_signals", fx1.uP);
        }
        if (fx1.versionCode >= 4 && fx1.uS)
        {
            hashmap.put("forceHttps", Boolean.valueOf(fx1.uS));
        }
        if (fx1.versionCode >= 4 && fx1.uR != null)
        {
            hashmap.put("content_info", fx1.uR);
        }
        if (fx1.versionCode >= 5)
        {
            hashmap.put("u_sd", Float.valueOf(fx1.uW));
            hashmap.put("sh", Integer.valueOf(fx1.uV));
            hashmap.put("sw", Integer.valueOf(fx1.uU));
        } else
        {
            hashmap.put("u_sd", Float.valueOf(gk1.uW));
            hashmap.put("sh", Integer.valueOf(gk1.uV));
            hashmap.put("sw", Integer.valueOf(gk1.uU));
        }
        if (hf.x(2))
        {
            String s = ab.aG().v(hashmap).toString(2);
            hf.W((new StringBuilder()).append("Ad Request JSON: ").append(s).toString());
        }
        return ab.aG().v(hashmap);
        JSONException jsonexception;
        jsonexception;
        hf.X((new StringBuilder()).append("Problem serializing ad request to JSON: ").append(jsonexception.getMessage()).toString());
        return null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private static void a(HashMap hashmap, Location location)
    {
        HashMap hashmap1 = new HashMap();
        Float float1 = Float.valueOf(1000F * location.getAccuracy());
        Long long1 = Long.valueOf(1000L * location.getTime());
        Long long2 = Long.valueOf((long)(10000000D * location.getLatitude()));
        Long long3 = Long.valueOf((long)(10000000D * location.getLongitude()));
        hashmap1.put("radius", float1);
        hashmap1.put("lat", long2);
        hashmap1.put("long", long3);
        hashmap1.put("time", long1);
        hashmap.put("uule", hashmap1);
    }

    private static void a(HashMap hashmap, av av1)
    {
        String s = gt.dz();
        if (s != null)
        {
            hashmap.put("abf", s);
        }
        if (av1.on != -1L)
        {
            hashmap.put("cust_age", vF.format(new Date(av1.on)));
        }
        if (av1.extras != null)
        {
            hashmap.put("extras", av1.extras);
        }
        if (av1.oo != -1)
        {
            hashmap.put("cust_gender", Integer.valueOf(av1.oo));
        }
        if (av1.op != null)
        {
            hashmap.put("kw", av1.op);
        }
        if (av1.or != -1)
        {
            hashmap.put("tag_for_child_directed_treatment", Integer.valueOf(av1.or));
        }
        if (av1.oq)
        {
            hashmap.put("adtest", "on");
        }
        if (av1.versionCode >= 2)
        {
            if (av1.os)
            {
                hashmap.put("d_imp_hdr", Integer.valueOf(1));
            }
            if (!TextUtils.isEmpty(av1.ot))
            {
                hashmap.put("ppid", av1.ot);
            }
            if (av1.ou != null)
            {
                a(hashmap, av1.ou);
            }
        }
        if (av1.versionCode >= 3 && av1.ow != null)
        {
            hashmap.put("url", av1.ow);
        }
    }

    private static void a(HashMap hashmap, bj bj1)
    {
        if (Color.alpha(bj1.pa) != 0)
        {
            hashmap.put("acolor", v(bj1.pa));
        }
        if (Color.alpha(bj1.backgroundColor) != 0)
        {
            hashmap.put("bgcolor", v(bj1.backgroundColor));
        }
        if (Color.alpha(bj1.pb) != 0 && Color.alpha(bj1.pc) != 0)
        {
            hashmap.put("gradientto", v(bj1.pb));
            hashmap.put("gradientfrom", v(bj1.pc));
        }
        if (Color.alpha(bj1.pd) != 0)
        {
            hashmap.put("bcolor", v(bj1.pd));
        }
        hashmap.put("bthick", Integer.toString(bj1.pe));
        bj1.pf;
        JVM INSTR tableswitch 0 3: default 176
    //                   0 366
    //                   1 373
    //                   2 380
    //                   3 387;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        String s = null;
_L10:
        int i;
        String s1;
        if (s != null)
        {
            hashmap.put("btype", s);
        }
        i = bj1.pg;
        s1 = null;
        i;
        JVM INSTR tableswitch 0 2: default 228
    //                   0 402
    //                   1 410
    //                   2 394;
           goto _L6 _L7 _L8 _L9
_L6:
        break; /* Loop/switch isn't completed */
_L8:
        break MISSING_BLOCK_LABEL_410;
_L11:
        if (s1 != null)
        {
            hashmap.put("callbuttoncolor", s1);
        }
        if (bj1.ph != null)
        {
            hashmap.put("channel", bj1.ph);
        }
        if (Color.alpha(bj1.pi) != 0)
        {
            hashmap.put("dcolor", v(bj1.pi));
        }
        if (bj1.pj != null)
        {
            hashmap.put("font", bj1.pj);
        }
        if (Color.alpha(bj1.pk) != 0)
        {
            hashmap.put("hcolor", v(bj1.pk));
        }
        hashmap.put("headersize", Integer.toString(bj1.pl));
        if (bj1.pm != null)
        {
            hashmap.put("q", bj1.pm);
        }
        return;
_L2:
        s = "none";
          goto _L10
_L3:
        s = "dashed";
          goto _L10
_L4:
        s = "dotted";
          goto _L10
_L5:
        s = "solid";
          goto _L10
_L9:
        s1 = "dark";
          goto _L11
_L7:
        s1 = "light";
          goto _L11
        s1 = "medium";
          goto _L11
    }

    private static void a(HashMap hashmap, gk gk1)
    {
        hashmap.put("am", Integer.valueOf(gk1.wi));
        hashmap.put("cog", v(gk1.wj));
        hashmap.put("coh", v(gk1.wk));
        if (!TextUtils.isEmpty(gk1.wl))
        {
            hashmap.put("carrier", gk1.wl);
        }
        hashmap.put("gl", gk1.wm);
        if (gk1.wn)
        {
            hashmap.put("simulator", Integer.valueOf(1));
        }
        hashmap.put("ma", v(gk1.wo));
        hashmap.put("sp", v(gk1.wp));
        hashmap.put("hl", gk1.wq);
        if (!TextUtils.isEmpty(gk1.wr))
        {
            hashmap.put("mv", gk1.wr);
        }
        hashmap.put("muv", Integer.valueOf(gk1.ws));
        if (gk1.wt != -2)
        {
            hashmap.put("cnt", Integer.valueOf(gk1.wt));
        }
        hashmap.put("gnt", Integer.valueOf(gk1.wu));
        hashmap.put("pt", Integer.valueOf(gk1.wv));
        hashmap.put("rm", Integer.valueOf(gk1.ww));
        hashmap.put("riv", Integer.valueOf(gk1.wx));
        Bundle bundle = new Bundle();
        bundle.putInt("active_network_state", gk1.wB);
        bundle.putBoolean("active_network_metered", gk1.wA);
        hashmap.put("connectivity", bundle);
        Bundle bundle1 = new Bundle();
        bundle1.putBoolean("is_charging", gk1.wz);
        bundle1.putDouble("battery_level", gk1.wy);
        hashmap.put("battery", bundle1);
    }

    private static Integer v(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        return Integer.valueOf(i);
    }

    private static String v(int i)
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(0xffffff & i);
        return String.format(locale, "#%06x", aobj);
    }

}
