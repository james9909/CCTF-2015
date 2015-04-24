// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.internal.r;
import java.net.URI;
import java.net.URISyntaxException;

// Referenced classes of package com.google.android.gms.internal:
//            hf, fi, hk, hl

public class hr extends WebViewClient
{

    private final hk mj;
    private final String yu;
    private boolean yv;
    private final fi yw;

    public hr(fi fi1, hk hk1, String s)
    {
        yu = ab(s);
        yv = false;
        mj = hk1;
        yw = fi1;
    }

    private String ab(String s)
    {
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        if (!s.endsWith("/")) goto _L1; else goto _L3
_L3:
        String s1 = s.substring(0, -1 + s.length());
        return s1;
        IndexOutOfBoundsException indexoutofboundsexception;
        indexoutofboundsexception;
        hf.U(indexoutofboundsexception.getMessage());
        return s;
    }

    protected boolean aa(String s)
    {
        String s1 = ab(s);
        if (!TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        URI uri;
        URI uri1;
        String s2;
        String s3;
        String s4;
        String s5;
        try
        {
            uri = new URI(s1);
            if (!"passback".equals(uri.getScheme()))
            {
                continue; /* Loop/switch isn't completed */
            }
            hf.T("Passback received");
            yw.cN();
        }
        catch (URISyntaxException urisyntaxexception)
        {
            hf.U(urisyntaxexception.getMessage());
            return false;
        }
        return true;
        if (TextUtils.isEmpty(yu)) goto _L1; else goto _L3
_L3:
        uri1 = new URI(yu);
        s2 = uri1.getHost();
        s3 = uri.getHost();
        s4 = uri1.getPath();
        s5 = uri.getPath();
        if (!r.equal(s2, s3) || !r.equal(s4, s5)) goto _L1; else goto _L4
_L4:
        hf.T("Passback received");
        yw.cN();
        return true;
    }

    public void onLoadResource(WebView webview, String s)
    {
        hf.T((new StringBuilder()).append("JavascriptAdWebViewClient::onLoadResource: ").append(s).toString());
        if (!aa(s))
        {
            mj.dN().onLoadResource(mj.getWebView(), s);
        }
    }

    public void onPageFinished(WebView webview, String s)
    {
        hf.T((new StringBuilder()).append("JavascriptAdWebViewClient::onPageFinished: ").append(s).toString());
        if (!yv)
        {
            yw.cM();
            yv = true;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        hf.T((new StringBuilder()).append("JavascriptAdWebViewClient::shouldOverrideUrlLoading: ").append(s).toString());
        if (aa(s))
        {
            hf.T("shouldOverrideUrlLoading: received passback url");
            return true;
        } else
        {
            return mj.dN().shouldOverrideUrlLoading(mj.getWebView(), s);
        }
    }
}
