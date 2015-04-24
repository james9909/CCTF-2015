// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.snapchat.android.util.system.Clock;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlLiveChatProvider

class a
    implements Runnable
{

    final boolean a;
    final a b;

    public void run()
    {
        if (b.b.f.b() - b.b > 1000L)
        {
            b.b.a(a);
        }
    }

    ( , boolean flag)
    {
        b = ;
        a = flag;
        super();
    }

    // Unreferenced inner class com/snapchat/android/livechat/AdlLiveChatProvider$6

/* anonymous class */
    class AdlLiveChatProvider._cls6 extends BroadcastReceiver
    {

        final long a;
        final AdlLiveChatProvider b;

        public void onReceive(Context context, Intent intent)
        {
            boolean flag = intent.getBooleanExtra("noConnectivity", false);
            boolean flag1 = false;
            if (!flag)
            {
                flag1 = true;
            }
            b.e.post(new AdlLiveChatProvider._cls6._cls1(this, flag1));
        }

            
            {
                b = adllivechatprovider;
                a = l;
                super();
            }
    }

}
