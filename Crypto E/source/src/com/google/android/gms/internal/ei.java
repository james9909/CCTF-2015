// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            eg, hf, he

public class ei
    implements eg
{

    private final Context mContext;
    final Set tn = Collections.synchronizedSet(new HashSet());

    public ei(Context context)
    {
        mContext = context;
    }

    public void a(String s, String s1, String s2)
    {
        hf.T("Fetching assets for the given html");
        he.xO.post(new Runnable(s1, s2) {

            final String to;
            final String tp;
            final ei tq;

            public void run()
            {
                WebView webview = tq.cB();
                webview.setWebViewClient(new WebViewClient(this, webview) {

                    final WebView nY;
                    final _cls1 tr;

                    public void onPageFinished(WebView webview, String s)
                    {
                        hf.T("Loading assets have finished");
                        tr.tq.tn.remove(nY);
                    }

                    public void onReceivedError(WebView webview, int i, String s, String s1)
                    {
                        hf.X("Loading assets have failed.");
                        tr.tq.tn.remove(nY);
                    }

            
            {
                tr = _pcls1;
                nY = webview;
                super();
            }
                });
                tq.tn.add(webview);
                webview.loadDataWithBaseURL(to, tp, "text/html", "UTF-8", null);
                hf.T("Fetching assets finished.");
            }

            
            {
                tq = ei.this;
                to = s;
                tp = s1;
                super();
            }
        });
    }

    public WebView cB()
    {
        WebView webview = new WebView(mContext);
        webview.getSettings().setJavaScriptEnabled(true);
        return webview;
    }
}
