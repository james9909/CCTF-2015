// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import java.net.Proxy;

// Referenced classes of package com.squareup.okhttp:
//            Response, Request

public interface Authenticator
{

    public abstract Request a(Proxy proxy, Response response);

    public abstract Request b(Proxy proxy, Response response);
}
