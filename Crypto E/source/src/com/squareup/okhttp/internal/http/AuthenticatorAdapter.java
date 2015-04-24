// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Authenticator;
import com.squareup.okhttp.Challenge;
import com.squareup.okhttp.Credentials;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.URL;
import java.util.List;

public final class AuthenticatorAdapter
    implements Authenticator
{

    public static final Authenticator a = new AuthenticatorAdapter();

    public AuthenticatorAdapter()
    {
    }

    private InetAddress a(Proxy proxy, URL url)
    {
        if (proxy != null && proxy.type() != java.net.Proxy.Type.DIRECT)
        {
            return ((InetSocketAddress)proxy.address()).getAddress();
        } else
        {
            return InetAddress.getByName(url.getHost());
        }
    }

    public Request a(Proxy proxy, Response response)
    {
        List list;
        Request request;
        URL url;
        int i;
        int j;
        list = response.k();
        request = response.a();
        url = request.a();
        i = list.size();
        j = 0;
_L2:
        Challenge challenge;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        challenge = (Challenge)list.get(j);
        if ("Basic".equalsIgnoreCase(challenge.a()))
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        j++;
        PasswordAuthentication passwordauthentication;
        if (true) goto _L2; else goto _L1
_L1:
        if ((passwordauthentication = java.net.Authenticator.requestPasswordAuthentication(url.getHost(), a(proxy, url), url.getPort(), url.getProtocol(), challenge.b(), challenge.a(), url, java.net.Authenticator.RequestorType.SERVER)) == null) goto _L4; else goto _L3
_L3:
        String s = Credentials.a(passwordauthentication.getUserName(), new String(passwordauthentication.getPassword()));
        return request.g().a("Authorization", s).c();
        return null;
    }

    public Request b(Proxy proxy, Response response)
    {
        List list;
        Request request;
        URL url;
        int i;
        int j;
        list = response.k();
        request = response.a();
        url = request.a();
        i = list.size();
        j = 0;
_L2:
        Challenge challenge;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_162;
        }
        challenge = (Challenge)list.get(j);
        if ("Basic".equalsIgnoreCase(challenge.a()))
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        PasswordAuthentication passwordauthentication;
        InetSocketAddress inetsocketaddress = (InetSocketAddress)proxy.address();
        passwordauthentication = java.net.Authenticator.requestPasswordAuthentication(inetsocketaddress.getHostName(), a(proxy, url), inetsocketaddress.getPort(), url.getProtocol(), challenge.b(), challenge.a(), url, java.net.Authenticator.RequestorType.PROXY);
        if (passwordauthentication == null) goto _L4; else goto _L3
_L3:
        String s = Credentials.a(passwordauthentication.getUserName(), new String(passwordauthentication.getPassword()));
        return request.g().a("Proxy-Authorization", s).c();
        return null;
    }

}
