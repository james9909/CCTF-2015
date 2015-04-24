// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.HyperRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.snapchat.android.ads:
//            AdManagerConfiguration, AdPlacement, AdTransformListener

public class AdManager
{
    public class AdResponseController extends AdListener
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
            return new HyperRequestTask(this, s, adplacement) {

                final String a;
                final AdPlacement b;
                final AdResponseController c;

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
                c = adresponsecontroller;
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
        //                       0 59
        //                       1 65
        //                       2 71
        //                       3 77;
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
                AdTransformResponse adtransformresponse = (new AdTransformResponse.Builder()).a(exception).a();
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
                    AdTransformResponse adtransformresponse = (new AdTransformResponse.Builder()).a(s2).a();
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

        AdResponseController(AdPlacement adplacement, AdTransformListener adtransformlistener, PublisherAdView publisheradview)
        {
            a = AdManager.this;
            super();
            e = false;
            b = adplacement;
            c = adtransformlistener;
            d = publisheradview;
        }
    }


    private static final AdManager b = new AdManager();
    private static final Pattern e = Pattern.compile("(?i)<html><body[^>]*>(.*)</body></html>");
    protected final Map a;
    private Context c;
    private final Handler d;
    private final AdManagerConfiguration f;

    private AdManager()
    {
        this(new AdManagerConfiguration());
    }

    protected AdManager(AdManagerConfiguration admanagerconfiguration)
    {
        d = new Handler(Looper.getMainLooper());
        f = admanagerconfiguration;
        a = new LinkedHashMap(f.e(), 0.75F, true) {

            final AdManager a;

            protected boolean removeEldestEntry(java.util.Map.Entry entry)
            {
                int i = AdManager.a(a).e();
                if (size() > i)
                {
                    AdResponseController adresponsecontroller = (AdResponseController)entry.getValue();
                    Object aobj[] = new Object[2];
                    aobj[0] = entry.getKey();
                    aobj[1] = Integer.valueOf(i);
                    adresponsecontroller.c(String.format("Expired %s when hit max requests %d", aobj));
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                a = AdManager.this;
                super(i, f1, flag);
            }
        };
    }

    public static AdManager a()
    {
        return b;
    }

    static AdManagerConfiguration a(AdManager admanager)
    {
        return admanager.f;
    }

    static Pattern c()
    {
        return e;
    }

    public void a(Context context)
    {
        c = context;
    }

    public void a(AdPlacement adplacement)
    {
        Object aobj[] = new Object[1];
        aobj[0] = adplacement.a();
        Timber.c("AdManager", "BeginAdSplash for adKey: ", aobj);
        a(adplacement, ((AdTransformListener) (null)));
    }

    public void a(AdPlacement adplacement, long l)
    {
        String s = adplacement.a();
        Object aobj[] = new Object[2];
        aobj[0] = s;
        aobj[1] = Long.valueOf(l);
        Timber.c("AdManager", "EndAdSplash for adKey:%s, viewTime:%s ms", aobj);
        long l1 = f.c();
        if (l >= l1)
        {
            d.post(new Runnable(s) {

                final String a;
                final AdManager b;

                public void run()
                {
                    try
                    {
                        b.a(a);
                        return;
                    }
                    catch (Exception exception)
                    {
                        Object aobj2[] = new Object[2];
                        aobj2[0] = a;
                        aobj2[1] = exception;
                        Timber.c("AdManager", "EndAdSplash for adKey:%s threw exception:%s", aobj2);
                        return;
                    }
                }

            
            {
                b = AdManager.this;
                a = s;
                super();
            }
            });
            return;
        } else
        {
            Object aobj1[] = new Object[3];
            aobj1[0] = s;
            aobj1[1] = Long.valueOf(l);
            aobj1[2] = Long.valueOf(l1);
            Timber.c("AdManager", "endAdSplash(%s,%d) not shown long enough %d for recordImpression", aobj1);
            return;
        }
    }

    public void a(AdPlacement adplacement, long l, boolean flag)
    {
        String s = adplacement.a();
        Object aobj[] = new Object[2];
        aobj[0] = s;
        aobj[1] = Long.valueOf(l);
        Timber.c("AdManager", "endAdView for adKey:%s, viewTime:%s ms", aobj);
        long l1 = f.d();
        if (flag || l >= l1)
        {
            a(s);
            return;
        } else
        {
            Object aobj1[] = new Object[3];
            aobj1[0] = s;
            aobj1[1] = Long.valueOf(l);
            aobj1[2] = Long.valueOf(l1);
            Timber.c("AdManager", "endAdView(%s,%d) not shown long enough %d for recordImpression", aobj1);
            return;
        }
    }

    public void a(AdPlacement adplacement, AdTransformListener adtransformlistener)
    {
        Timber.c("AdManager", "Begin transform ad placeholder %s", new Object[] {
            adplacement
        });
        d.post(new Runnable(adplacement, adtransformlistener) {

            final AdPlacement a;
            final AdTransformListener b;
            final AdManager c;

            public void run()
            {
                try
                {
                    c.c(a, b);
                    return;
                }
                catch (Exception exception)
                {
                    if (b != null)
                    {
                        AdTransformResponse adtransformresponse = (new AdTransformResponse.Builder()).a(exception).a();
                        b.a(a, adtransformresponse);
                        return;
                    } else
                    {
                        Object aobj[] = new Object[2];
                        aobj[0] = exception;
                        aobj[1] = a;
                        Timber.d("AdManager", "transformAsync error:%s for adPlaceholder:%s", aobj);
                        return;
                    }
                }
            }

            
            {
                c = AdManager.this;
                a = adplacement;
                b = adtransformlistener;
                super();
            }
        });
    }

    protected void a(String s)
    {
        AdResponseController adresponsecontroller = (AdResponseController)a.get(s);
        if (adresponsecontroller != null)
        {
            adresponsecontroller.c();
            return;
        } else
        {
            Timber.c("AdManager", "No controller for recordImpression on %s, probably duplicate call", new Object[] {
                s
            });
            return;
        }
    }

    protected void a(String s, String s1)
    {
        AdResponseController adresponsecontroller = (AdResponseController)a.get(s);
        if (adresponsecontroller != null)
        {
            adresponsecontroller.c(s1);
        }
    }

    protected PublisherAdView b()
    {
        return new PublisherAdView(c);
    }

    protected AdResponseController b(AdPlacement adplacement, AdTransformListener adtransformlistener)
    {
        String s = adplacement.a();
        if (a.containsKey(s))
        {
            a(s, String.format("Controller already exists in prepareAdResponseController for adPlaceholder: %s", new Object[] {
                adplacement
            }));
        }
        PublisherAdView publisheradview = b();
        publisheradview.setAdUnitId(adplacement.a("snapchat", f.b()));
        AdSize aadsize[] = new AdSize[1];
        aadsize[0] = AdSize.SMART_BANNER;
        publisheradview.setAdSizes(aadsize);
        AdResponseController adresponsecontroller = new AdResponseController(adplacement, adtransformlistener, publisheradview);
        publisheradview.setOnCustomRenderedAdLoadedListener(adresponsecontroller);
        publisheradview.setAdListener(adresponsecontroller);
        a.put(adplacement.a(), adresponsecontroller);
        return adresponsecontroller;
    }

    public void b(AdPlacement adplacement)
    {
        String s = adplacement.a();
        Timber.c("AdManager", "beginAdView for adKey:%s", new Object[] {
            s
        });
        if (!a.containsKey(s))
        {
            Timber.c("AdManager", "WARNING: beginAdView called without a controller for adKey:%s", new Object[] {
                s
            });
        }
    }

    protected PublisherAdRequest c(AdPlacement adplacement)
    {
        return (new com.google.android.gms.ads.doubleclick.PublisherAdRequest.Builder()).addNetworkExtras(new AdMobExtras(adplacement.b())).setManualImpressionsEnabled(true).build();
    }

    protected AdResponseController c(AdPlacement adplacement, AdTransformListener adtransformlistener)
    {
        if (!f.a())
        {
            throw new RuntimeException("AdManager is not currently active!");
        }
        AdResponseController adresponsecontroller = b(adplacement, adtransformlistener);
        if (adresponsecontroller != null)
        {
            PublisherAdRequest publisheradrequest = c(adplacement);
            adresponsecontroller.a().loadAd(publisheradrequest);
        }
        return adresponsecontroller;
    }

}
