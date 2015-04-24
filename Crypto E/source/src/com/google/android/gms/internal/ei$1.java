// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ei, hf

class tp
    implements Runnable
{

    final String to;
    final String tp;
    final ei tq;

    public void run()
    {
        WebView webview = tq.cB();
        webview.setWebViewClient(new WebViewClient(webview) {

            final WebView nY;
            final ei._cls1 tr;

            public void onPageFinished(WebView webview1, String s)
            {
                hf.T("Loading assets have finished");
                tr.tq.tn.remove(nY);
            }

            public void onReceivedError(WebView webview1, int i, String s, String s1)
            {
                hf.X("Loading assets have failed.");
                tr.tq.tn.remove(nY);
            }

            
            {
                tr = ei._cls1.this;
                nY = webview;
                super();
            }
        });
        tq.tn.add(webview);
        webview.loadDataWithBaseURL(to, tp, "text/html", "UTF-8", null);
        hf.T("Fetching assets finished.");
    }

    _cls1.nY(ei ei1, String s, String s1)
    {
        tq = ei1;
        to = s;
        tp = s1;
        super();
    }
}
