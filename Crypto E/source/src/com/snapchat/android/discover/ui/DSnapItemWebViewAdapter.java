// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SnapCapturedEvent;
import com.squareup.otto.Bus;
import java.io.ByteArrayInputStream;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemViewAdapter, DSnapView

public class DSnapItemWebViewAdapter extends DSnapItemViewAdapter
{

    private WebView a;
    private final Context c;
    private final Bus d;

    public DSnapItemWebViewAdapter(Context context)
    {
        this(context, BusProvider.a());
    }

    protected DSnapItemWebViewAdapter(Context context, Bus bus)
    {
        c = context;
        d = bus;
    }

    static WebResourceResponse a(DSnapItemWebViewAdapter dsnapitemwebviewadapter)
    {
        return dsnapitemwebviewadapter.h();
    }

    private boolean a(Uri uri, DSnapPage dsnappage)
    {
        String s = uri.getScheme();
        String s1 = uri.getHost();
        return TextUtils.equals(s, "file") && TextUtils.equals(s1, Uri.parse(dsnappage.b()).getHost());
    }

    static boolean a(DSnapItemWebViewAdapter dsnapitemwebviewadapter, Uri uri, DSnapPage dsnappage)
    {
        return dsnapitemwebviewadapter.a(uri, dsnappage);
    }

    private WebResourceResponse h()
    {
        return new WebResourceResponse("text/plain", "UTF-8", new ByteArrayInputStream(new byte[0]));
    }

    public com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus a(long l)
    {
        return com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus.b;
    }

    public void a(DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
    }

    public void a(String s, DSnapPage dsnappage, View view)
    {
        if (view != null)
        {
            view.buildDrawingCache();
            android.graphics.Bitmap bitmap = SnapMediaUtils.c(view.getDrawingCache());
            view.destroyDrawingCache();
            com.snapchat.android.discover.model.DSnapbryo dsnapbryo = (new com.snapchat.android.discover.model.DSnapbryo.Builder(s, dsnappage.d(), dsnappage.a())).a(dsnappage.f()).a(bitmap).a();
            d.a(new SnapCapturedEvent(dsnapbryo));
        }
    }

    protected boolean a(WebView webview, DSnapView dsnapview, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        a = webview;
        WebSettings websettings = a.getSettings();
        websettings.setJavaScriptEnabled(false);
        websettings.setBlockNetworkLoads(true);
        websettings.setSaveFormData(false);
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            websettings.setAllowFileAccessFromFileURLs(false);
            websettings.setAllowUniversalAccessFromFileURLs(false);
        }
        a.setWebViewClient(new WebViewClient(dsnappage) {

            final DSnapPage a;
            final DSnapItemWebViewAdapter b;

            public WebResourceResponse shouldInterceptRequest(WebView webview1, WebResourceRequest webresourcerequest)
            {
                if (DSnapItemWebViewAdapter.a(b, webresourcerequest.getUrl(), a))
                {
                    return null;
                } else
                {
                    return DSnapItemWebViewAdapter.a(b);
                }
            }

            public WebResourceResponse shouldInterceptRequest(WebView webview1, String s1)
            {
                if (b.a(s1, a))
                {
                    return null;
                } else
                {
                    return DSnapItemWebViewAdapter.a(b);
                }
            }

            public boolean shouldOverrideUrlLoading(WebView webview1, String s1)
            {
                return !b.a(s1, a);
            }

            
            {
                b = DSnapItemWebViewAdapter.this;
                a = dsnappage;
                super();
            }
        });
        String s = (new StringBuilder()).append(dsnappage.b()).append(dsnappanel.a()).toString();
        Timber.c("DSnapItemWebViewAdapter", "Loading WebView from %s", new Object[] {
            s
        });
        a.loadUrl(s);
        return true;
    }

    public boolean a(DSnapView dsnapview, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        return a(new WebView(c), dsnapview, dsnappage, dsnappanel);
    }

    protected boolean a(String s, DSnapPage dsnappage)
    {
        return a(Uri.parse(s), dsnappage);
    }

    public void c()
    {
    }

    public View d()
    {
        return a;
    }

    public com.snapchat.android.discover.model.DSnapPanel.MediaType e()
    {
        return com.snapchat.android.discover.model.DSnapPanel.MediaType.c;
    }
}
