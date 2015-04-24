// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hf, cs, gk, fz, 
//            gh, fx, av, gg, 
//            he, gj, gl, hg, 
//            gi, ab, gx, bm, 
//            ay, hm, hk, hl, 
//            cg

public final class gf extends gb.a
{

    private static final Object mx = new Object();
    private static gf vw;
    private final Context mContext;
    private final gl vx;
    private final cs vy;
    private final bm vz;

    gf(Context context, bm bm, cs cs1, gl gl1)
    {
        mContext = context;
        vx = gl1;
        vy = cs1;
        vz = bm;
    }

    private static fz a(Context context, bm bm, cs cs1, gl gl1, fx fx1)
    {
        hf.T("Starting ad request from service.");
        cs1.init();
        gk gk1 = new gk(context);
        if (gk1.wt == -1)
        {
            hf.T("Device is offline.");
            return new fz(2);
        }
        gh gh1 = new gh(fx1.applicationInfo.packageName);
        if (fx1.uK.extras != null)
        {
            String s1 = fx1.uK.extras.getString("_ad");
            if (s1 != null)
            {
                return gg.a(context, fx1, s1);
            }
        }
        JSONObject jsonobject = gg.a(fx1, gk1, cs1.a(250L), bm);
        if (jsonobject == null)
        {
            return new fz(0);
        }
        hl.a a1 = d(jsonobject);
        he.xO.post(new Runnable(context, fx1, gh1, a1, bm) {

            final Context no;
            final fx vA;
            final gh vB;
            final hl.a vC;
            final bm vD;

            public void run()
            {
                hk hk1 = ab.aH().a(no, new ay(), false, false, null, vA.lH);
                hk1.setWillNotDraw(true);
                vB.b(hk1);
                hl hl1 = hk1.dN();
                hl1.a("/invalidRequest", vB.vI);
                hl1.a("/loadAdURL", vB.vJ);
                hl1.a("/log", cg.qn);
                hl1.a(vC);
                hf.T("Loading the JS library.");
                hk1.loadUrl(vD.bC());
            }

            
            {
                no = context;
                vA = fx1;
                vB = gh1;
                vC = a1;
                vD = bm1;
                super();
            }
        });
        gj gj1;
        try
        {
            gj1 = (gj)gh1.db().get(10L, TimeUnit.SECONDS);
        }
        catch (Exception exception)
        {
            return new fz(0);
        }
        if (gj1 == null)
        {
            return new fz(0);
        }
        if (gj1.getErrorCode() != -2)
        {
            return new fz(gj1.getErrorCode());
        }
        boolean flag = gj1.de();
        String s = null;
        if (flag)
        {
            s = gl1.N(fx1.uL.packageName);
        }
        return a(context, fx1.lH.xP, gj1.getUrl(), s, gj1);
    }

    public static fz a(Context context, String s, String s1, String s2, gj gj1)
    {
        HttpURLConnection httpurlconnection;
        gi gi1;
        URL url;
        long l;
        URL url1;
        int i;
        int j;
        Map map;
        fz fz1;
        String s3;
        fz fz2;
        fz fz3;
        String s4;
        String s5;
        fz fz4;
        byte abyte0[];
        BufferedOutputStream bufferedoutputstream;
        try
        {
            gi1 = new gi();
            hf.T((new StringBuilder()).append("AdRequestServiceImpl: Sending request: ").append(s1).toString());
            url = new URL(s1);
            l = SystemClock.elapsedRealtime();
        }
        catch (IOException ioexception)
        {
            hf.X((new StringBuilder()).append("Error while connecting to ad server: ").append(ioexception.getMessage()).toString());
            return new fz(2);
        }
        url1 = url;
        i = 0;
        httpurlconnection = (HttpURLConnection)url1.openConnection();
        ab.aG().a(context, s, false, httpurlconnection);
        if (!TextUtils.isEmpty(s2))
        {
            httpurlconnection.addRequestProperty("x-afma-drt-cookie", s2);
        }
        if (gj1 == null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        if (!TextUtils.isEmpty(gj1.dd()))
        {
            httpurlconnection.setDoOutput(true);
            abyte0 = gj1.dd().getBytes();
            httpurlconnection.setFixedLengthStreamingMode(abyte0.length);
            bufferedoutputstream = new BufferedOutputStream(httpurlconnection.getOutputStream());
            bufferedoutputstream.write(abyte0);
            bufferedoutputstream.close();
        }
        j = httpurlconnection.getResponseCode();
        map = httpurlconnection.getHeaderFields();
        if (j < 200 || j >= 300)
        {
            break MISSING_BLOCK_LABEL_251;
        }
        s4 = url1.toString();
        s5 = ab.aG().a(new InputStreamReader(httpurlconnection.getInputStream()));
        a(s4, map, s5, j);
        gi1.a(s4, map, s5);
        fz4 = gi1.h(l);
        httpurlconnection.disconnect();
        return fz4;
        a(url1.toString(), map, ((String) (null)), j);
        if (j < 300 || j >= 400)
        {
            break MISSING_BLOCK_LABEL_366;
        }
        s3 = httpurlconnection.getHeaderField("Location");
        if (!TextUtils.isEmpty(s3))
        {
            break MISSING_BLOCK_LABEL_322;
        }
        hf.X("No location header to follow redirect.");
        fz3 = new fz(0);
        httpurlconnection.disconnect();
        return fz3;
        url1 = new URL(s3);
        if (++i <= 5)
        {
            break MISSING_BLOCK_LABEL_408;
        }
        hf.X("Too many redirects.");
        fz2 = new fz(0);
        httpurlconnection.disconnect();
        return fz2;
        hf.X((new StringBuilder()).append("Received error HTTP response code: ").append(j).toString());
        fz1 = new fz(0);
        httpurlconnection.disconnect();
        return fz1;
        gi1.g(map);
        httpurlconnection.disconnect();
        break MISSING_BLOCK_LABEL_53;
        Exception exception;
        exception;
        httpurlconnection.disconnect();
        throw exception;
    }

    public static gf a(Context context, bm bm, cs cs1, gl gl1)
    {
        gf gf1;
        synchronized (mx)
        {
            if (vw == null)
            {
                vw = new gf(context.getApplicationContext(), bm, cs1, gl1);
            }
            gf1 = vw;
        }
        return gf1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void a(String s, Map map, String s1, int i)
    {
        if (hf.x(2))
        {
            hf.W((new StringBuilder()).append("Http Response: {\n  URL:\n    ").append(s).append("\n  Headers:").toString());
            if (map != null)
            {
                for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
                {
                    String s2 = (String)iterator.next();
                    hf.W((new StringBuilder()).append("    ").append(s2).append(":").toString());
                    Iterator iterator1 = ((List)map.get(s2)).iterator();
                    while (iterator1.hasNext()) 
                    {
                        String s3 = (String)iterator1.next();
                        hf.W((new StringBuilder()).append("      ").append(s3).toString());
                    }
                }

            }
            hf.W("  Body:");
            if (s1 != null)
            {
                for (int j = 0; j < Math.min(s1.length(), 0x186a0); j += 1000)
                {
                    hf.W(s1.substring(j, Math.min(s1.length(), j + 1000)));
                }

            } else
            {
                hf.W("    null");
            }
            hf.W((new StringBuilder()).append("  Response Code:\n    ").append(i).append("\n}").toString());
        }
    }

    private static hl.a d(JSONObject jsonobject)
    {
        return new hl.a(jsonobject) {

            final JSONObject vE;

            public void a(hk hk1)
            {
                Object aobj[] = new Object[2];
                aobj[0] = "AFMA_buildAdURL";
                aobj[1] = vE;
                String s = String.format("javascript:%s(%s);", aobj);
                hf.W((new StringBuilder()).append("About to execute: ").append(s).toString());
                hk1.a("AFMA_buildAdURL", vE);
            }

            
            {
                vE = jsonobject;
                super();
            }
        };
    }

    public fz b(fx fx1)
    {
        return a(mContext, vz, vy, vx, fx1);
    }

}
