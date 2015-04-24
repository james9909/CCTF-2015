// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.HyperRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.snapchat.android.ads:
//            AdManager, AdPlacement, AdTransformListener

public class d extends AdListener
    implements OnCustomRenderedAdLoadedListener
{

    final AdManager a;
    private AdPlacement b;
    private AdTransformListener c;
    private PublisherAdView d;
    private boolean e;
    private CustomRenderedAd f;
    private String g;

    PublisherAdView a()
    {
        return d;
    }

    protected HyperRequestTask a(String s, AdPlacement adplacement)
    {
        return new HyperRequestTask(s, adplacement) {

            final String a;
            final AdPlacement b;
            final AdManager.AdResponseController c;

            public void a(NetworkResult networkresult)
            {
                super.a(networkresult);
                if (networkresult.j() == 200)
                {
                    Object aobj1[] = new Object[3];
                    aobj1[0] = b;
                    aobj1[1] = a;
                    aobj1[2] = networkresult;
                    Timber.c("AdManager", "onResult recordImpression: %s, url: %s, result: %s", aobj1);
                    return;
                } else
                {
                    Object aobj[] = new Object[3];
                    aobj[0] = b;
                    aobj[1] = a;
                    aobj[2] = networkresult;
                    Timber.e("AdManager", "onResult recordImpression: %s, url: %s, result: %s", aobj);
                    return;
                }
            }

            public Object b()
            {
                return null;
            }

            public HttpMethod c()
            {
                return HttpMethod.GET;
            }

            public String m_()
            {
                return a;
            }

            
            {
                c = AdManager.AdResponseController.this;
                a = s;
                b = adplacement;
                super();
            }
        };
    }

    protected String a(int i)
    {
        String s = "ERROR_CODE_UNKNOWN";
        i;
        JVM INSTR tableswitch 0 3: default 36
    //                   0 59
    //                   1 65
    //                   2 71
    //                   3 77;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        Object aobj[] = new Object[2];
        aobj[0] = s;
        aobj[1] = Integer.valueOf(i);
        return String.format("%s(%d)", aobj);
_L2:
        s = "ERROR_CODE_INTERNAL_ERROR";
        continue; /* Loop/switch isn't completed */
_L3:
        s = "ERROR_CODE_INVALID_REQUEST";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "ERROR_CODE_NETWORK_ERROR";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "ERROR_CODE_NO_FILL";
        if (true) goto _L1; else goto _L6
_L6:
    }

    protected String a(String s)
    {
        JSONObject jsonobject;
        String s1;
        try
        {
            jsonobject = new JSONObject(s);
            Object aobj[] = new Object[2];
            aobj[0] = s;
            aobj[1] = b;
            Timber.c("AdManager", "extractJSONData(%s) for %s", aobj);
            s1 = jsonobject.getString("content");
        }
        catch (JSONException jsonexception)
        {
            return s;
        }
        try
        {
            g = jsonobject.getString("imp-url");
        }
        catch (JSONException jsonexception1)
        {
            return s1;
        }
        return s1;
    }

    protected void a(Exception exception)
    {
        a.a.remove(b.a());
        if (c != null)
        {
            AdTransformResponse adtransformresponse = (new it>()).it>(exception).it>();
            c.a(b, adtransformresponse);
        }
    }

    protected void b(String s)
    {
        if (s == null || s.equals("") || s.equals("EXPLICIT_NO_FILL"))
        {
            c("Empty adUnitUrl in handleAdResponse");
        } else
        {
            String s1 = s.replace(" ", "").replace("\n", "");
            Matcher matcher = AdManager.c().matcher(s1);
            if (matcher.matches())
            {
                s1 = matcher.group(1);
            }
            String s2 = a(s1);
            if (s2 == null || !s2.startsWith("/"))
            {
                c(String.format("Invalid adUnitURL '%s' in handleAdResponse", new Object[] {
                    s2
                }));
                return;
            }
            if (c != null)
            {
                AdTransformResponse adtransformresponse = (new it>()).it>(s2).it>();
                Object aobj[] = new Object[2];
                aobj[0] = b;
                aobj[1] = s2;
                Timber.c("AdManager", "onTransformationComplete for %s with url %s", aobj);
                c.a(b, adtransformresponse);
                c = null;
            }
            if (e)
            {
                c();
                return;
            }
        }
    }

    protected boolean b()
    {
        return g != null || f != null;
    }

    protected void c()
    {
        if (b())
        {
            if (g != null)
            {
                a(g, b).g();
            } else
            {
                f.recordImpression();
            }
            a.a.remove(b.a());
            return;
        } else
        {
            e = true;
            return;
        }
    }

    protected void c(String s)
    {
        a(new RuntimeException(s));
    }

    public void onAdFailedToLoad(int i)
    {
        super.onAdFailedToLoad(i);
        String s = a(i);
        Object aobj[] = new Object[2];
        aobj[0] = s;
        aobj[1] = b;
        Timber.c("AdManager", "onAdFailedToLoad(%s) for %s", aobj);
        c(s);
    }

    public void onCustomRenderedAdLoaded(CustomRenderedAd customrenderedad)
    {
        f = customrenderedad;
        b(customrenderedad.getContent());
    }

    it>(AdManager admanager, AdPlacement adplacement, AdTransformListener adtransformlistener, PublisherAdView publisheradview)
    {
        a = admanager;
        super();
        e = false;
        b = adplacement;
        c = adtransformlistener;
        d = publisheradview;
    }
}
