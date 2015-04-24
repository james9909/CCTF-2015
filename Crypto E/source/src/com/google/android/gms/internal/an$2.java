// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;

// Referenced classes of package com.google.android.gms.internal:
//            an, ak

class _cls1.k
    implements Runnable
{

    final an nV;
    ValueCallback nW;
    final ak nX;
    final WebView nY;

    public void run()
    {
        if (nY.getSettings().getJavaScriptEnabled())
        {
            nY.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", nW);
        }
    }

    _cls1.nZ(an an1, ak ak, WebView webview)
    {
        nV = an1;
        nX = ak;
        nY = webview;
        super();
        nW = new ValueCallback() {

            final an._cls2 nZ;

            public void k(String s)
            {
                nZ.nV.a(nZ.nX, nZ.nY, s);
            }

            public void onReceiveValue(Object obj)
            {
                k((String)obj);
            }

            
            {
                nZ = an._cls2.this;
                super();
            }
        };
    }
}
