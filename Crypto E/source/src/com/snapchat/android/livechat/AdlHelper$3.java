// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.os.Handler;
import com.addlive.platform.InitProgressChangedEvent;
import com.addlive.platform.InitStateChangedEvent;
import com.addlive.platform.PlatformInitListener;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlHelper

static final class b
    implements PlatformInitListener
{

    final Handler a;
    final PlatformInitListener b;

    public void onInitProgressChanged(InitProgressChangedEvent initprogresschangedevent)
    {
        a.post(new Runnable(initprogresschangedevent) {

            final InitProgressChangedEvent a;
            final AdlHelper._cls3 b;

            public void run()
            {
                b.b.onInitProgressChanged(a);
            }

            
            {
                b = AdlHelper._cls3.this;
                a = initprogresschangedevent;
                super();
            }
        });
    }

    public void onInitStateChanged(InitStateChangedEvent initstatechangedevent)
    {
        a.post(new Runnable(initstatechangedevent) {

            final InitStateChangedEvent a;
            final AdlHelper._cls3 b;

            public void run()
            {
                b.b.onInitStateChanged(a);
            }

            
            {
                b = AdlHelper._cls3.this;
                a = initstatechangedevent;
                super();
            }
        });
    }

    _cls2.a(Handler handler, PlatformInitListener platforminitlistener)
    {
        a = handler;
        b = platforminitlistener;
        super();
    }
}
