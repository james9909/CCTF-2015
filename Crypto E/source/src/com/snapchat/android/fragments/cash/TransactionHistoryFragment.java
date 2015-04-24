// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.cash.CashAuthManager;
import com.snapchat.android.cash.CashAuthToken;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.util.ViewUtils;

public class TransactionHistoryFragment extends WebFragment
{
    class TransactionHistoryClient extends WebViewClient
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

        private TransactionHistoryClient()
        {
            a = TransactionHistoryFragment.this;
            super();
            b = false;
        }

    }


    protected CashAuthManager a;

    public TransactionHistoryFragment()
    {
        SnapchatApplication.e().a(this);
    }

    public TransactionHistoryFragment(String s)
    {
        super(null, s);
        SnapchatApplication.e().a(this);
    }

    static void a(TransactionHistoryFragment transactionhistoryfragment)
    {
        transactionhistoryfragment.h();
    }

    private void h()
    {
        d(0x7f0a00f1).setVisibility(8);
    }

    public void a(String s)
    {
        android.net.Uri.Builder builder = Uri.parse(s).buildUpon();
        builder.appendQueryParameter("client", "chartreuse");
        super.a(builder.build().toString());
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04008a, viewgroup, false);
        ViewUtils.a(false, G());
        a(bundle);
        b.getSettings().setJavaScriptEnabled(true);
        b.setWebViewClient(new TransactionHistoryClient());
        return x;
    }
}
