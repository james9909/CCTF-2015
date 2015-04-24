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
    implements com.snapchat.android.ui.ut.SpyListener
{

    final ChatFragment a;

    public void a(MotionEvent motionevent)
    {
        if (CashUtils.a(ChatFragment.b(a)) && !a.d.e())
        {
            if (!ChatFragment.c(a).hasMessages(5) && motionevent.getPointerCount() >= 2 && !ChatFragment.d(a))
            {
                ChatFragment.e(a);
                ChatFragment.c(a).postDelayed(new Runnable() {

                    final ChatFragment._cls2 a;

                    public void run()
                    {
                        ChatFragment.a(a.a, com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod.b);
                    }

            
            {
                a = ChatFragment._cls2.this;
                super();
            }
                }, 300L);
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

    _cls1.a(ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
