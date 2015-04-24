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

class a
    implements Runnable
{

    final InitProgressChangedEvent a;
    final t b;

    public void run()
    {
        b.b.onInitProgressChanged(a);
    }

    t(t t, InitProgressChangedEvent initprogresschangedevent)
    {
        b = t;
        a = initprogresschangedevent;
        super();
    }

    // Unreferenced inner class com/snapchat/android/livechat/AdlHelper$3

/* anonymous class */
    static final class AdlHelper._cls3
        implements PlatformInitListener
    {

        final Handler a;
        final PlatformInitListener b;

        public void onInitProgressChanged(InitProgressChangedEvent initprogresschangedevent)
        {
            a.post(new AdlHelper._cls3._cls1(this, initprogresschangedevent));
        }

        public void onInitStateChanged(InitStateChangedEvent initstatechangedevent)
        {
            a.post(new AdlHelper._cls3._cls2(initstatechangedevent));
        }

            
            {
                a = handler;
                b = platforminitlistener;
                super();
            }

        // Unreferenced inner class com/snapchat/android/livechat/AdlHelper$3$2

/* anonymous class */
        class AdlHelper._cls3._cls2
            implements Runnable
        {

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
        }

    }

}
