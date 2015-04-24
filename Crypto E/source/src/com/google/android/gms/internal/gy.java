// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.File;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            hl, hk, hp, ho, 
//            hq

public class gy
{
    static class a extends gy
    {

        public boolean a(android.app.DownloadManager.Request request)
        {
            request.setShowRunningNotification(true);
            return true;
        }

        public int dF()
        {
            return 6;
        }

        public int dG()
        {
            return 7;
        }

        a()
        {
        }
    }

    static class b extends a
    {

        public hl a(hk hk, boolean flag)
        {
            return new hp(hk, flag);
        }

        public boolean a(android.app.DownloadManager.Request request)
        {
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            return true;
        }

        public boolean a(Context context, WebSettings websettings)
        {
            if (context.getCacheDir() != null)
            {
                websettings.setAppCachePath(context.getCacheDir().getAbsolutePath());
                websettings.setAppCacheMaxSize(0L);
                websettings.setAppCacheEnabled(true);
            }
            websettings.setDatabasePath(context.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
            websettings.setDatabaseEnabled(true);
            websettings.setDomStorageEnabled(true);
            websettings.setDisplayZoomControls(false);
            websettings.setBuiltInZoomControls(true);
            websettings.setSupportZoom(true);
            return true;
        }

        public boolean a(Window window)
        {
            window.setFlags(0x1000000, 0x1000000);
            return true;
        }

        public boolean a(WebView webview)
        {
            webview.onPause();
            return true;
        }

        public boolean b(WebView webview)
        {
            webview.onResume();
            return true;
        }

        public WebChromeClient c(hk hk)
        {
            return new ho(hk);
        }

        public Set d(Uri uri)
        {
            return uri.getQueryParameterNames();
        }

        public boolean h(View view)
        {
            view.setLayerType(0, null);
            return true;
        }

        public boolean i(View view)
        {
            view.setLayerType(1, null);
            return true;
        }

        b()
        {
        }
    }

    static class c extends b
    {

        public boolean a(Context context, ComponentCallbacks componentcallbacks)
        {
            context.registerComponentCallbacks(componentcallbacks);
            return true;
        }

        public boolean b(Context context, ComponentCallbacks componentcallbacks)
        {
            context.unregisterComponentCallbacks(componentcallbacks);
            return true;
        }

        public WebChromeClient c(hk hk)
        {
            return new hq(hk);
        }

        c()
        {
        }
    }

    static class d extends c
    {

        public boolean a(Context context, WebSettings websettings)
        {
            super.a(context, websettings);
            websettings.setMediaPlaybackRequiresUserGesture(false);
            return true;
        }

        public String getDefaultUserAgent(Context context)
        {
            return WebSettings.getDefaultUserAgent(context);
        }

        d()
        {
        }
    }

    static class e extends d
    {

        public int dH()
        {
            return 14;
        }

        e()
        {
        }
    }


    private gy()
    {
    }


    public static gy w(int j)
    {
        if (j >= 18)
        {
            return new e();
        }
        if (j >= 17)
        {
            return new d();
        }
        if (j >= 14)
        {
            return new c();
        }
        if (j >= 11)
        {
            return new b();
        }
        if (j >= 9)
        {
            return new a();
        } else
        {
            return new gy();
        }
    }

    public hl a(hk hk, boolean flag)
    {
        return new hl(hk, flag);
    }

    public boolean a(android.app.DownloadManager.Request request)
    {
        return false;
    }

    public boolean a(Context context, ComponentCallbacks componentcallbacks)
    {
        return false;
    }

    public boolean a(Context context, WebSettings websettings)
    {
        return false;
    }

    public boolean a(Window window)
    {
        return false;
    }

    public boolean a(WebView webview)
    {
        return false;
    }

    public boolean b(Context context, ComponentCallbacks componentcallbacks)
    {
        return false;
    }

    public boolean b(WebView webview)
    {
        return false;
    }

    public WebChromeClient c(hk hk)
    {
        return null;
    }

    public Set d(Uri uri)
    {
        if (uri.isOpaque())
        {
            return Collections.emptySet();
        }
        String s = uri.getEncodedQuery();
        if (s == null)
        {
            return Collections.emptySet();
        }
        LinkedHashSet linkedhashset = new LinkedHashSet();
        int j = 0;
        do
        {
            int k = s.indexOf('&', j);
            if (k == -1)
            {
                k = s.length();
            }
            int l = s.indexOf('=', j);
            if (l > k || l == -1)
            {
                l = k;
            }
            linkedhashset.add(Uri.decode(s.substring(j, l)));
            j = k + 1;
        } while (j < s.length());
        return Collections.unmodifiableSet(linkedhashset);
    }

    public int dF()
    {
        return 0;
    }

    public int dG()
    {
        return 1;
    }

    public int dH()
    {
        return 5;
    }

    public String getDefaultUserAgent(Context context)
    {
        return "";
    }

    public boolean h(View view)
    {
        return false;
    }

    public boolean i(View view)
    {
        return false;
    }
}
