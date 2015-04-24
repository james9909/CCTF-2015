// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            hf, ei

class nY extends WebViewClient
{

    final WebView nY;
    final nY tr;

    public void onPageFinished(WebView webview, String s)
    {
        hf.T("Loading assets have finished");
        tr..tn.remove(nY);
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        hf.X("Loading assets have failed.");
        tr..tn.remove(nY);
    }

    ( , WebView webview)
    {
        tr = ;
        nY = webview;
        super();
    }

    // Unreferenced inner class com/google/android/gms/internal/ei$1

/* anonymous class */
    class ei._cls1
        implements Runnable
    {

        final String to;
        final String tp;
        final ei tq;

        public void run()
        {
            WebView webview = tq.cB();
            webview.setWebViewClient(new ei._cls1._cls1(this, webview));
            tq.tn.add(webview);
            webview.loadDataWithBaseURL(to, tp, "text/html", "UTF-8", null);
            hf.T("Fetching assets finished.");
        }

            
            {
                tq = ei1;
                to = s;
                tp = s1;
                super();
            }
    }

}
