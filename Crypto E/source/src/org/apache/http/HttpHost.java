// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http;

import java.io.Serializable;
import java.net.InetAddress;
import java.util.Locale;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

public final class HttpHost
    implements Serializable, Cloneable
{

    public static final String DEFAULT_SCHEME_NAME = "http";
    private static final long serialVersionUID = 0x978228e715c1f9e6L;
    protected final InetAddress address;
    protected final String hostname;
    protected final String lcHostname;
    protected final int port;
    protected final String schemeName;

    public HttpHost(String s)
    {
        this(s, -1, null);
    }

    public HttpHost(String s, int i)
    {
        this(s, i, null);
    }

    public HttpHost(String s, int i, String s1)
    {
        hostname = (String)Args.notBlank(s, "Host name");
        lcHostname = s.toLowerCase(Locale.ENGLISH);
        if (s1 != null)
        {
            schemeName = s1.toLowerCase(Locale.ENGLISH);
        } else
        {
            schemeName = "http";
        }
        port = i;
        address = null;
    }

    public HttpHost(InetAddress inetaddress)
    {
        this(inetaddress, -1, null);
    }

    public HttpHost(InetAddress inetaddress, int i)
    {
        this(inetaddress, i, null);
    }

    public HttpHost(InetAddress inetaddress, int i, String s)
    {
        address = (InetAddress)Args.notNull(inetaddress, "Inet address");
        hostname = inetaddress.getHostAddress();
        lcHostname = hostname.toLowerCase(Locale.ENGLISH);
        if (s != null)
        {
            schemeName = s.toLowerCase(Locale.ENGLISH);
        } else
        {
            schemeName = "http";
        }
        port = i;
    }

    public HttpHost(HttpHost httphost)
    {
        Args.notNull(httphost, "HTTP host");
        hostname = httphost.hostname;
        lcHostname = httphost.lcHostname;
        schemeName = httphost.schemeName;
        port = httphost.port;
        address = httphost.address;
    }

    public Object clone()
    {
        return super.clone();
    }

    public boolean equals(Object obj)
    {
        HttpHost httphost;
        if (this != obj)
        {
            if (obj instanceof HttpHost)
            {
                if (!lcHostname.equals((httphost = (HttpHost)obj).lcHostname) || port != httphost.port || !schemeName.equals(httphost.schemeName))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public InetAddress getAddress()
    {
        return address;
    }

    public String getHostName()
    {
        return hostname;
    }

    public int getPort()
    {
        return port;
    }

    public String getSchemeName()
    {
        return schemeName;
    }

    public int hashCode()
    {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, lcHostname), port), schemeName);
    }

    public String toHostString()
    {
        if (port != -1)
        {
            StringBuilder stringbuilder = new StringBuilder(6 + hostname.length());
            stringbuilder.append(hostname);
            stringbuilder.append(":");
            stringbuilder.append(Integer.toString(port));
            return stringbuilder.toString();
        } else
        {
            return hostname;
        }
    }

    public String toString()
    {
        return toURI();
    }

    public String toURI()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(schemeName);
        stringbuilder.append("://");
        stringbuilder.append(hostname);
        if (port != -1)
        {
            stringbuilder.append(':');
            stringbuilder.append(Integer.toString(port));
        }
        return stringbuilder.toString();
    }
}
