// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.addlive.service.Responder;
import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlLiveChatProvider

class a
    implements Responder
{

    final AdlLiveChatProvider a;

    public void a(Void void1)
    {
        a.g();
    }

    public void errHandler(int i, String s)
    {
        Timber.e("livechat", (new StringBuilder()).append("Failed to terminate connection to AddLive scope: ").append(s).append("(ERR:").append(i).append(")").toString(), new Object[0]);
    }

    public void resultHandler(Object obj)
    {
        a((Void)obj);
    }

    _cls9(AdlLiveChatProvider adllivechatprovider)
    {
        a = adllivechatprovider;
        super();
    }
}
