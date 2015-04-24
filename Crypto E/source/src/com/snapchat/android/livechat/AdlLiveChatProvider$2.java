// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.addlive.service.MediaConnection;
import com.addlive.service.Responder;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlLiveChatProvider

class a
    implements Responder
{

    final AdlLiveChatProvider a;

    public void a(MediaConnection mediaconnection)
    {
        a.f();
    }

    public void errHandler(int i, String s)
    {
        a.a(i, s);
    }

    public void resultHandler(Object obj)
    {
        a((MediaConnection)obj);
    }

    _cls9(AdlLiveChatProvider adllivechatprovider)
    {
        a = adllivechatprovider;
        super();
    }
}
