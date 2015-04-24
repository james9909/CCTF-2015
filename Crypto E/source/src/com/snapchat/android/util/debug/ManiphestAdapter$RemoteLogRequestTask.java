// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.BasicScRequestTask;

// Referenced classes of package com.snapchat.android.util.debug:
//            ManiphestAdapter

static class b extends BasicScRequestTask
{

    private final String a;
    private final String b;

    public Object b()
    {
        return new AuthPayload();
    }

    protected String d()
    {
        return (new StringBuilder()).append("/debug/request_client_log?recipientUsername=").append(a).append("&taskId=").append(b).toString();
    }

    public String i()
    {
        return "https://feelinsonice-hrd.appspot.com";
    }

    public (String s, String s1)
    {
        a = s;
        b = s1;
    }
}
