// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.snapchat.android.cash.CashAuthManager;
import com.snapchat.android.cash.CashAuthToken;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            TransactionHistoryFragment

class <init> extends WebViewClient
{

    final TransactionHistoryFragment a;
    private boolean b;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        if (a.a != null)
        {
            CashAuthToken cashauthtoken = a.a.a();
            if (cashauthtoken == null)
            {
                throw new RuntimeException("We shouldn't ever be creating a SquareRequestTask with a null CashAuthToken!");
            }
            webview.loadUrl((new StringBuilder()).append("javascript:var authorizationToken='Bearer ").append(cashauthtoken.a()).append("';").toString());
            b = true;
            TransactionHistoryFragment.a(a);
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (!b)
        {
            return false;
        } else
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
            a.startActivity(intent);
            return true;
        }
    }

    private (TransactionHistoryFragment transactionhistoryfragment)
    {
        a = transactionhistoryfragment;
        super();
        b = false;
    }

    b(TransactionHistoryFragment transactionhistoryfragment, b b1)
    {
        this(transactionhistoryfragment);
    }
}
