// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;

// Referenced classes of package com.google.android.gms.internal:
//            an, ak

class nZ
    implements ValueCallback
{

    final k nZ;

    public void k(String s)
    {
        nZ..a(nZ., nZ., s);
    }

    public void onReceiveValue(Object obj)
    {
        k((String)obj);
    }

    <init>(<init> <init>1)
    {
        nZ = <init>1;
        super();
    }

    // Unreferenced inner class com/google/android/gms/internal/an$2

/* anonymous class */
    class an._cls2
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

            
            {
                nV = an1;
                nX = ak;
                nY = webview;
                super();
                nW = new an._cls2._cls1(this);
            }
    }

}
