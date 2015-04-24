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

class a extends BroadcastReceiver
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
        b.e.post(new Runnable(flag1) {

            final boolean a;
            final AdlLiveChatProvider._cls6 b;

            public void run()
            {
                if (b.b.f.b() - b.a > 1000L)
                {
                    b.b.a(a);
                }
            }

            
            {
                b = AdlLiveChatProvider._cls6.this;
                a = flag;
                super();
            }
        });
    }

    _cls1.a(AdlLiveChatProvider adllivechatprovider, long l)
    {
        b = adllivechatprovider;
        a = l;
        super();
    }
}
