// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api.RequestAuthorization;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.SecurityUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EncodingUtils;

public class WebFragment extends SnapchatFragment
{

    private String a;
    public WebView b;
    protected GsonWrapper c;
    private String d;
    private String e;
    private boolean f;

    public WebFragment()
    {
    }

    public WebFragment(String s, String s1)
    {
        this(s, s1, false, null);
    }

    public WebFragment(String s, String s1, boolean flag, String s2)
    {
        if (s == null)
        {
            s = "https://accounts.snapchat.com";
        }
        a = s;
        d = s1;
        f = flag;
        e = s2;
        SnapchatApplication.e().a(this);
    }

    private String a(List list)
    {
        if (list.isEmpty())
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        int j;
        try
        {
            stringbuilder.append((new StringBuilder()).append(((BasicNameValuePair)list.get(0)).getName()).append("=").append(URLEncoder.encode(((BasicNameValuePair)list.get(0)).getValue(), "UTF-8")).toString());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            break; /* Loop/switch isn't completed */
        }
        j = 1;
_L2:
        if (j >= list.size())
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append((new StringBuilder()).append("&").append(((BasicNameValuePair)list.get(j)).getName()).append("=").append(URLEncoder.encode(((BasicNameValuePair)list.get(j)).getValue(), "UTF-8")).toString());
        j++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L1:
        return stringbuilder.toString();
    }

    private String d(String s)
    {
        String s1 = RequestAuthorization.a(UserPrefs.u(), s);
        return s1;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
_L2:
        return "Unknown";
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String h()
    {
        String s = Long.toString((new Date()).getTime());
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("username", UserPrefs.k()));
        arraylist.add(new BasicNameValuePair("req_token", d(s)));
        arraylist.add(new BasicNameValuePair("timestamp", s));
        HashMap hashmap = new HashMap();
        hashmap.put("device", (new StringBuilder()).append(Build.MANUFACTURER).append(" ").append(Build.MODEL).toString());
        hashmap.put("os_version", "Android");
        hashmap.put("api_version", android.os.Build.VERSION.RELEASE);
        hashmap.put("sc_version", i());
        arraylist.add(new BasicNameValuePair("device", c.a(hashmap)));
        String s1 = GLES20.glGetString(7936);
        String s2 = GLES20.glGetString(7937);
        if (s1 != null && s2 != null)
        {
            arraylist.add(new BasicNameValuePair("gpu_arch", (new StringBuilder()).append(s1).append(" ").append(s2).toString()));
        }
        if (e != null)
        {
            arraylist.add(new BasicNameValuePair("next", e));
        }
        Object aobj[] = new Object[1];
        aobj[0] = a(arraylist);
        Timber.c("WebFragment", "AppAuth POST: %s", aobj);
        return a(arraylist);
    }

    private String i()
    {
        PackageManager packagemanager = getActivity().getPackageManager();
        if (packagemanager == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        String s = packagemanager.getPackageInfo(getActivity().getPackageName(), 0).versionName;
        return s;
        Exception exception;
        exception;
        return "Unknown";
    }

    public void a(Bundle bundle)
    {
        d(0x7f0a0056).setOnClickListener(new android.view.View.OnClickListener() {

            final WebFragment a;

            public void onClick(View view)
            {
                a.b();
            }

            
            {
                a = WebFragment.this;
                super();
            }
        });
        b = (WebView)d(0x7f0a02f0);
        SecurityUtils.a(b);
        if (d != null)
        {
            ((TextView)d(0x7f0a0057)).setText(d);
        }
        b.setWebViewClient(new WebViewClient() {

            final WebFragment a;

            public boolean shouldOverrideUrlLoading(WebView webview, String s1)
            {
                Uri uri = Uri.parse(s1);
                String s2 = uri.getScheme();
                String s3 = uri.getHost();
                if (TextUtils.equals(s2, "https") && (TextUtils.equals(s3, "support.snapchat.com") || TextUtils.equals(s3, "accounts.snapchat.com") || TextUtils.equals(s3, "www.snapchat.com")))
                {
                    return false;
                } else
                {
                    Intent intent = new Intent("android.intent.action.VIEW", uri);
                    a.startActivity(intent);
                    return true;
                }
            }

            
            {
                a = WebFragment.this;
                super();
            }
        });
        b.setClickable(true);
        b.requestFocus(130);
        b.setOnTouchListener(new android.view.View.OnTouchListener() {

            final WebFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                motionevent.getAction();
                JVM INSTR tableswitch 0 1: default 28
            //                           0 30
            //                           1 30;
                   goto _L1 _L2 _L2
_L1:
                return false;
_L2:
                if (!view.hasFocus())
                {
                    view.requestFocus();
                }
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                a = WebFragment.this;
                super();
            }
        });
        b.getSettings().setJavaScriptEnabled(true);
        b.getSettings().setAllowFileAccess(false);
        if (bundle != null)
        {
            b.restoreState(bundle);
            return;
        }
        if (f)
        {
            String s = h();
            b.postUrl((new StringBuilder()).append(a).append("/accounts/client_native_auth").toString(), EncodingUtils.getBytes(s, "UTF-8"));
            return;
        } else
        {
            b.loadUrl(a);
            return;
        }
    }

    public void a(String s)
    {
        a = s;
    }

    public void b()
    {
        if (b != null && b.canGoBack())
        {
            b.goBack();
            return;
        } else
        {
            getActivity().onBackPressed();
            return;
        }
    }

    public boolean e()
    {
        if (b != null && b.canGoBack())
        {
            b.goBack();
            return true;
        } else
        {
            return false;
        }
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040095, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        a(bundle);
        return x;
    }

    public void onPause()
    {
        b.stopLoading();
        b.clearCache(true);
        b.clearFormData();
        b.clearHistory();
        super.onPause();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (b != null)
        {
            b.saveState(bundle);
        }
    }
}
