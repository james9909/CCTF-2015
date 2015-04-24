// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ay, dw, hl, k, 
//            hg

public interface hk
{

    public abstract void a(Context context, ay ay);

    public abstract void a(ay ay);

    public abstract void a(dw dw);

    public abstract void a(String s, Map map);

    public abstract void a(String s, JSONObject jsonobject);

    public abstract ay aa();

    public abstract void b(String s, JSONObject jsonobject);

    public abstract void ci();

    public abstract void cq();

    public abstract void cr();

    public abstract Activity dL();

    public abstract dw dM();

    public abstract hl dN();

    public abstract boolean dO();

    public abstract k dP();

    public abstract hg dQ();

    public abstract boolean dR();

    public abstract void destroy();

    public abstract Context getContext();

    public abstract android.view.ViewGroup.LayoutParams getLayoutParams();

    public abstract void getLocationOnScreen(int ai[]);

    public abstract int getMeasuredHeight();

    public abstract int getMeasuredWidth();

    public abstract ViewParent getParent();

    public abstract int getRequestedOrientation();

    public abstract WebView getWebView();

    public abstract void loadData(String s, String s1, String s2);

    public abstract void loadDataWithBaseURL(String s, String s1, String s2, String s3, String s4);

    public abstract void loadUrl(String s);

    public abstract void measure(int i, int j);

    public abstract void r(boolean flag);

    public abstract void setBackgroundColor(int i);

    public abstract void setContext(Context context);

    public abstract void setOnClickListener(android.view.View.OnClickListener onclicklistener);

    public abstract void setOnTouchListener(android.view.View.OnTouchListener ontouchlistener);

    public abstract void setRequestedOrientation(int i);

    public abstract void setWebViewClient(WebViewClient webviewclient);

    public abstract void setWillNotDraw(boolean flag);

    public abstract void stopLoading();

    public abstract boolean willNotDraw();

    public abstract void z(boolean flag);
}
