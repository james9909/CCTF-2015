// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.addlive.service.Responder;
import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlHelper

static class a
    implements Responder
{

    private final String a;

    public void errHandler(int i, String s)
    {
        Object aobj[] = new Object[3];
        aobj[0] = a;
        aobj[1] = s;
        aobj[2] = Integer.valueOf(i);
        Timber.e("livechat", "Got an error processing AddLive request %s: %s (ERR: %d)", aobj);
    }

    public void resultHandler(Object obj)
    {
        Object aobj[] = new Object[1];
        aobj[0] = a;
        Timber.c("livechat", "Got a successful result processing AddLive request %s", aobj);
    }

    (String s)
    {
        a = s;
    }
}
