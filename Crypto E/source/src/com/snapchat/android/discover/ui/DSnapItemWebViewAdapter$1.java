// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.snapchat.android.discover.model.DSnapPage;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemWebViewAdapter

class a extends WebViewClient
{

    final DSnapPage a;
    final DSnapItemWebViewAdapter b;

    public WebResourceResponse shouldInterceptRequest(WebView webview, WebResourceRequest webresourcerequest)
    {
        if (DSnapItemWebViewAdapter.a(b, webresourcerequest.getUrl(), a))
        {
            return null;
        } else
        {
            return DSnapItemWebViewAdapter.a(b);
        }
    }

    public WebResourceResponse shouldInterceptRequest(WebView webview, String s)
    {
        if (b.a(s, a))
        {
            return null;
        } else
        {
            return DSnapItemWebViewAdapter.a(b);
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        return !b.a(s, a);
    }

    (DSnapItemWebViewAdapter dsnapitemwebviewadapter, DSnapPage dsnappage)
    {
        b = dsnapitemwebviewadapter;
        a = dsnappage;
        super();
    }
}
