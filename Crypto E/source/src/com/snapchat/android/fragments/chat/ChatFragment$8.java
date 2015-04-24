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
    implements android.view.tener
{

    final ChatFragment a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            ChatFragment.o(a).clearFlags(512);
            ViewUtils.a(ChatFragment.p(a));
            ChatFragment.g(a).d();
            (new Handler()).post(new Runnable() {

                final ChatFragment._cls8 a;

                public void run()
                {
                    ChatFragment.c(a.a, 0.0F);
                    ChatFragment.q(a.a).a();
                }

            
            {
                a = ChatFragment._cls8.this;
                super();
            }
            });
        }
        return false;
    }

    _cls1.a(ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
