// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.google.gson.Gson;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.GsonUtil;
import org.joda.time.DateTime;

public class CashAuthToken
{

    private String a;
    private String b;

    public CashAuthToken()
    {
    }

    public String a()
    {
        return a;
    }

    protected boolean a(long l)
    {
        String s = b();
        if (s != null) goto _L2; else goto _L1
_L1:
        long l1;
        return true;
_L2:
        if (l > (l1 = (new DateTime(s)).x_())) goto _L1; else goto _L3
_L3:
        return false;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        (new ErrorMetric("Malformed expiration dateTime")).a(illegalargumentexception).a("dateTime", s).c();
        return true;
    }

    public String b()
    {
        return b;
    }

    public boolean c()
    {
        return a(System.currentTimeMillis());
    }

    public String toString()
    {
        return GsonUtil.a().toJson(this);
    }
}
