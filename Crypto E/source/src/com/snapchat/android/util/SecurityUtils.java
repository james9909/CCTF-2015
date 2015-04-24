// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class SecurityUtils
{

    public SecurityUtils()
    {
    }

    public static void a(Context context)
    {
        (new Thread(new Runnable(context) {

            final Context a;

            public void run()
            {
                CookieSyncManager.createInstance(a);
                CookieManager cookiemanager = CookieManager.getInstance();
                cookiemanager.removeAllCookie();
                cookiemanager.setAcceptCookie(false);
            }

            
            {
                a = context;
                super();
            }
        })).start();
    }

    public static void a(WebView webview)
    {
        WebSettings websettings = webview.getSettings();
        websettings.setJavaScriptEnabled(false);
        websettings.setAllowFileAccess(false);
        websettings.setSaveFormData(false);
        websettings.setSavePassword(false);
    }
}
