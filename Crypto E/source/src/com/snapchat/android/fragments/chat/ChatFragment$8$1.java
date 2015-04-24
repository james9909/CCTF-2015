// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import com.snapchat.android.chat.ChatMediaExpander;
import com.snapchat.android.ui.ObservableAboveTheFoldListView;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        ChatFragment.c(a.a, 0.0F);
        ChatFragment.q(a.a).a();
    }

    w(w w)
    {
        a = w;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatFragment$8

/* anonymous class */
    class ChatFragment._cls8
        implements android.view.View.OnTouchListener
    {

        final ChatFragment a;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            if (motionevent.getAction() == 0)
            {
                ChatFragment.o(a).clearFlags(512);
                ViewUtils.a(ChatFragment.p(a));
                ChatFragment.g(a).d();
                (new Handler()).post(new ChatFragment._cls8._cls1(this));
            }
            return false;
        }

            
            {
                a = chatfragment;
                super();
            }
    }

}
