// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.protocol:
//            HttpContext

public final class DefaultedHttpContext
    implements HttpContext
{

    private final HttpContext defaults;
    private final HttpContext local;

    public DefaultedHttpContext(HttpContext httpcontext, HttpContext httpcontext1)
    {
        local = (HttpContext)Args.notNull(httpcontext, "HTTP context");
        defaults = httpcontext1;
    }

    public Object getAttribute(String s)
    {
        Object obj = local.getAttribute(s);
        if (obj == null)
        {
            obj = defaults.getAttribute(s);
        }
        return obj;
    }

    public HttpContext getDefaults()
    {
        return defaults;
    }

    public Object removeAttribute(String s)
    {
        return local.removeAttribute(s);
    }

    public void setAttribute(String s, Object obj)
    {
        local.setAttribute(s, obj);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[local: ").append(local);
        stringbuilder.append("defaults: ").append(defaults);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
