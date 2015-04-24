// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            WebFragment

class a extends WebViewClient
{

    final WebFragment a;

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Uri uri = Uri.parse(s);
        String s1 = uri.getScheme();
        String s2 = uri.getHost();
        if (TextUtils.equals(s1, "https") && (TextUtils.equals(s2, "support.snapchat.com") || TextUtils.equals(s2, "accounts.snapchat.com") || TextUtils.equals(s2, "www.snapchat.com")))
        {
            return false;
        } else
        {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            a.startActivity(intent);
            return true;
        }
    }

    (WebFragment webfragment)
    {
        a = webfragment;
        super();
    }
}
