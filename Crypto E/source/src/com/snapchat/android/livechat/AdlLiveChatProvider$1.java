// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.addlive.platform.InitProgressChangedEvent;
import com.addlive.platform.InitState;
import com.addlive.platform.InitStateChangedEvent;
import com.addlive.platform.PlatformInitListener;
import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlLiveChatProvider

class a
    implements PlatformInitListener
{

    final AdlLiveChatProvider a;

    public void onInitProgressChanged(InitProgressChangedEvent initprogresschangedevent)
    {
    }

    public void onInitStateChanged(InitStateChangedEvent initstatechangedevent)
    {
        if (initstatechangedevent.getState() == InitState.INITIALIZED)
        {
            a.e();
            return;
        } else
        {
            Object aobj[] = new Object[2];
            aobj[0] = initstatechangedevent.getErrMessage();
            aobj[1] = Integer.valueOf(initstatechangedevent.getErrCode());
            Timber.e("livechat", "Failed to initialize the AddLive SDK: %s (ERR: %d)", aobj);
            return;
        }
    }

    _cls9(AdlLiveChatProvider adllivechatprovider)
    {
        a = adllivechatprovider;
        super();
    }
}
