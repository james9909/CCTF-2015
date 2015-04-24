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

    final InitStateChangedEvent a;
    final a b;

    public void run()
    {
        b.b.onInitStateChanged(a);
    }

    a(a a1, InitStateChangedEvent initstatechangedevent)
    {
        b = a1;
        a = initstatechangedevent;
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
            a.post(new AdlHelper._cls3._cls1(initprogresschangedevent));
        }

        public void onInitStateChanged(InitStateChangedEvent initstatechangedevent)
        {
            a.post(new AdlHelper._cls3._cls2(this, initstatechangedevent));
        }

            
            {
                a = handler;
                b = platforminitlistener;
                super();
            }

        // Unreferenced inner class com/snapchat/android/livechat/AdlHelper$3$1

/* anonymous class */
        class AdlHelper._cls3._cls1
            implements Runnable
        {

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
        }

    }

}
