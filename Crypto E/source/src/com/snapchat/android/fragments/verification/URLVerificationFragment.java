// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.util.ViewUtils;

public class URLVerificationFragment extends WebFragment
{
    public static interface OnCompleteListener
    {

        public abstract void a();

        public abstract void b();
    }

    class URLVerificationClient extends WebViewClient
    {

        final URLVerificationFragment a;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            URLVerificationFragment.a(a, false);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            URLVerificationFragment.a(a, true);
            Timber.b(URLVerificationFragment.h(), "CASH-LOG: Loading the URL: %s", new Object[] {
                s
            });
            URLVerificationFragment.b(a, false);
            if (!s.equals("https://support.snapchat.com/success")) goto _L2; else goto _L1
_L1:
            URLVerificationFragment.b(a, true);
            URLVerificationFragment.c(a, true);
_L4:
            if (URLVerificationFragment.a(a))
            {
                URLVerificationFragment.b(a);
            }
            return URLVerificationFragment.a(a);
_L2:
            if (s.equals("https://support.snapchat.com/failure"))
            {
                URLVerificationFragment.b(a, true);
                URLVerificationFragment.c(a, false);
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        private URLVerificationClient()
        {
            a = URLVerificationFragment.this;
            super();
        }

    }


    private static final String a = com/snapchat/android/fragments/verification/URLVerificationFragment.getSimpleName();
    private OnCompleteListener d;
    private boolean e;
    private boolean f;

    public URLVerificationFragment()
    {
    }

    static void a(URLVerificationFragment urlverificationfragment, boolean flag)
    {
        urlverificationfragment.a(flag);
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            d(0x7f0a00f1).setVisibility(0);
            return;
        } else
        {
            d(0x7f0a00f1).setVisibility(8);
            return;
        }
    }

    static boolean a(URLVerificationFragment urlverificationfragment)
    {
        return urlverificationfragment.e;
    }

    static void b(URLVerificationFragment urlverificationfragment)
    {
        urlverificationfragment.k();
    }

    static boolean b(URLVerificationFragment urlverificationfragment, boolean flag)
    {
        urlverificationfragment.e = flag;
        return flag;
    }

    static boolean c(URLVerificationFragment urlverificationfragment, boolean flag)
    {
        urlverificationfragment.f = flag;
        return flag;
    }

    static String h()
    {
        return a;
    }

    private void i()
    {
        if (d != null)
        {
            if (f)
            {
                AnalyticsEvents.S();
                d.a();
            } else
            {
                if (e)
                {
                    AnalyticsEvents.T();
                } else
                {
                    AnalyticsEvents.U();
                }
                d.b();
            }
        }
        d = null;
    }

    private void k()
    {
        ViewUtils.a(getActivity(), x);
        getActivity().onBackPressed();
    }

    public void a(OnCompleteListener oncompletelistener)
    {
        f = false;
        e = false;
        d = oncompletelistener;
    }

    public void a(String s)
    {
        android.net.Uri.Builder builder = Uri.parse(s).buildUpon();
        builder.appendQueryParameter("success_url", "https://support.snapchat.com/success");
        builder.appendQueryParameter("failure_url", "https://support.snapchat.com/failure");
        builder.appendQueryParameter("client", "chartreuse");
        String s1 = builder.build().toString();
        Timber.b(a, "CASH-LOG: Setting the URL to %s", new Object[] {
            s1
        });
        super.a(s1);
    }

    protected void b()
    {
        i();
        getActivity().onBackPressed();
    }

    public boolean e()
    {
        i();
        return false;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04008a, viewgroup, false);
        a(bundle);
        b.getSettings().setJavaScriptEnabled(true);
        b.setWebViewClient(new URLVerificationClient());
        return x;
    }

    public void s_()
    {
        super.s_();
        ViewUtils.a(false, G());
    }

}
