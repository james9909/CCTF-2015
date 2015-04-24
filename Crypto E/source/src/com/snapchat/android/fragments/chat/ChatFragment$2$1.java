// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.os.Handler;
import android.view.MotionEvent;
import com.snapchat.android.ui.here.StreamView;
import com.snapchat.android.util.CashUtils;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements Runnable
{

    final nMethod.b a;

    public void run()
    {
        ChatFragment.a(a.a, com.snapchat.android.ui.ipeActivationMethod.b);
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatFragment$2

/* anonymous class */
    class ChatFragment._cls2
        implements com.snapchat.android.ui.SpyRelativeLayout.SpyListener
    {

        final ChatFragment a;

        public void a(MotionEvent motionevent)
        {
            if (CashUtils.a(ChatFragment.b(a)) && !a.d.e())
            {
                if (!ChatFragment.c(a).hasMessages(5) && motionevent.getPointerCount() >= 2 && !ChatFragment.d(a))
                {
                    ChatFragment.e(a);
                    ChatFragment.c(a).postDelayed(new ChatFragment._cls2._cls1(this), 300L);
                    ChatFragment.c(a).sendEmptyMessage(5);
                    return;
                }
                if (motionevent.getAction() == 1 || motionevent.getAction() == 3)
                {
                    ChatFragment.c(a).removeCallbacksAndMessages(null);
                    return;
                }
            }
        }

            
            {
                a = chatfragment;
                super();
            }
    }

}
