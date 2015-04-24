// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.util.Base64;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.snapchat.android.util.RetryUtil;
import java.io.IOException;
import java.util.concurrent.Callable;

// Referenced classes of package com.snapchat.android:
//            Timber, SnapchatApplication

public class GoogleAuthManager
{

    private static final GoogleAuthManager c = new GoogleAuthManager();
    private String a;
    private String b;
    private final RetryUtil d;

    private GoogleAuthManager()
    {
        this(new RetryUtil());
    }

    protected GoogleAuthManager(RetryUtil retryutil)
    {
        a = null;
        b = null;
        d = retryutil;
    }

    public static GoogleAuthManager a()
    {
        return c;
    }

    static String a(GoogleAuthManager googleauthmanager)
    {
        return googleauthmanager.a;
    }

    static String a(GoogleAuthManager googleauthmanager, String s)
    {
        googleauthmanager.a = s;
        return s;
    }

    static String b(GoogleAuthManager googleauthmanager, String s)
    {
        googleauthmanager.b = s;
        return s;
    }

    public String b()
    {
        if (b == null)
        {
            return null;
        } else
        {
            String s = Base64.encodeToString(b.getBytes(), 11);
            Timber.c("GoogleAuthManager", (new StringBuilder()).append("GoogleOauthToken exception: ").append(s).toString(), new Object[0]);
            return s;
        }
    }

    public void c()
    {
        if (a == null)
        {
            return;
        }
        try
        {
            d.a(new Callable() {

                final GoogleAuthManager a;

                public Void a()
                {
                    GoogleAuthUtil.clearToken(SnapchatApplication.e().getApplicationContext(), GoogleAuthManager.a(a));
                    Timber.c("GoogleAuthManager", (new StringBuilder()).append("clearGoogleOauthToken: ").append(GoogleAuthManager.a(a)).toString(), new Object[0]);
                    GoogleAuthManager.a(a, null);
                    GoogleAuthManager.b(a, null);
                    return null;
                }

                public Object call()
                {
                    return a();
                }

            
            {
                a = GoogleAuthManager.this;
                super();
            }
            }).call();
            return;
        }
        catch (Exception exception)
        {
            Timber.e("GoogleAuthManager", (new StringBuilder()).append("clearGoogleOauthToken exception: ").append(exception.getMessage()).toString(), new Object[0]);
        }
    }

    public String d()
    {
        Context context;
        Account aaccount[];
        String s;
        int i;
        int j;
        context = SnapchatApplication.e().getApplicationContext();
        aaccount = AccountManager.get(context).getAccountsByType("com.google");
        s = "ng";
        i = aaccount.length;
        j = 0;
_L2:
        String s1;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        s1 = aaccount[j].name;
        a = (String)d.a(new Callable(context, s1) {

            final Context a;
            final String b;
            final GoogleAuthManager c;

            public String a()
            {
                return GoogleAuthUtil.getToken(a, b, "audience:server:client_id:694893979329-l59f3phl42et9clpoo296d8raqoljl6p.apps.googleusercontent.com");
            }

            public Object call()
            {
                return a();
            }

            
            {
                c = GoogleAuthManager.this;
                a = context;
                b = s;
                super();
            }
        }).call();
        Timber.c("GoogleAuthManager", (new StringBuilder()).append("getGoogleOauthToken: ").append(a).toString(), new Object[0]);
        b = null;
        s = a;
        return s;
        IOException ioexception;
        ioexception;
        Timber.e("GoogleAuthManager", (new StringBuilder()).append("getGoogleOauthToken IOException: ").append(ioexception.getMessage()).toString(), new Object[0]);
        throw ioexception;
        GooglePlayServicesAvailabilityException googleplayservicesavailabilityexception;
        googleplayservicesavailabilityexception;
        Timber.e("GoogleAuthManager", (new StringBuilder()).append("getGoogleOauthToken GooglePlayServicesAvailabilityException: ").append(googleplayservicesavailabilityexception.getMessage()).toString(), new Object[0]);
        b = googleplayservicesavailabilityexception.getMessage();
        return "pe";
        UserRecoverableAuthException userrecoverableauthexception;
        userrecoverableauthexception;
        Timber.e("GoogleAuthManager", (new StringBuilder()).append("getGoogleOauthToken UserRecoverableAuthException: ").append(userrecoverableauthexception.getMessage()).toString(), new Object[0]);
        b = userrecoverableauthexception.getMessage();
        j++;
        s = "ue";
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Timber.e("GoogleAuthManager", (new StringBuilder()).append("getGoogleOauthToken GoogleAuthException: ").append(exception.getMessage()).toString(), new Object[0]);
        b = exception.getMessage();
        return "ae";
        if (true) goto _L2; else goto _L1
_L1:
    }

}
