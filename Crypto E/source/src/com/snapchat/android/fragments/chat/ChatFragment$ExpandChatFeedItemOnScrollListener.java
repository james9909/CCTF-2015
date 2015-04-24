// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.widget.AbsListView;
import com.snapchat.android.chat.ChatMediaExpander;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.ObservableAboveTheFoldListView;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.animation.AnimatorEndListener;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.listview.ListViewUtils;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment, ChatFeedItemViewingSessionFactory, ChatFeedItemViewingSession

class _cls1.a
    implements android.widget.ItemOnScrollListener
{

    final ChatFragment a;
    private boolean b;
    private View c;
    private ChatFeedItem d;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        if (b)
        {
            ChatFeedItem chatfeeditem = (ChatFeedItem)abslistview.getItemAtPosition(i);
            if (chatfeeditem != null)
            {
                if (c == null)
                {
                    View view = abslistview.getChildAt(0);
                    if (Math.abs(view.getTop()) <= 100 && chatfeeditem.ar())
                    {
                        c = view;
                        d = chatfeeditem;
                        ChatFragment.a(a, ChatFragment.T(a).a(d, c));
                        if (ChatFragment.U(a) != null)
                        {
                            ChatFragment.U(a).a();
                        }
                    }
                } else
                if (Math.abs(c.getTop()) > 100)
                {
                    if (ChatFragment.U(a) != null)
                    {
                        ChatFragment.U(a).b();
                    }
                    c = null;
                    return;
                }
            }
        }
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        int l;
        boolean flag;
        int j;
        int k;
        ChatFeedItem chatfeeditem;
        ChatFeedItem chatfeeditem1;
        if (i == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_431;
        }
        ChatFragment.g(a).setIsActive(true);
        j = ChatFragment.g(a).getFirstVisiblePosition();
        k = ChatFragment.g(a).getLastVisiblePosition();
        chatfeeditem = (ChatFeedItem)ChatFragment.g(a).getItemAtPosition(j);
        if (j != k)
        {
            chatfeeditem1 = (ChatFeedItem)ChatFragment.g(a).getItemAtPosition(k);
        } else
        {
            chatfeeditem1 = null;
        }
        if (!ChatFragment.q(a).a(chatfeeditem, chatfeeditem1) || ListViewUtils.a(ChatFragment.g(a)))
        {
            ChatFragment.N(a);
            ChatFragment.q(a).a();
        }
        l = (int)ViewUtils.a(25F, a.getActivity());
        if (!ChatFragment.q(a).b()) goto _L2; else goto _L1
_L1:
        if (ChatFragment.O(a))
        {
            ViewUtils.a(ChatFragment.P(a));
            BusProvider.a().a(new TitleBarEvent(false));
            ChatFragment.g(a).scrollBy(0, -l);
            ChatFragment.f(a, false);
        }
_L4:
        return;
_L2:
        if (ChatFragment.O(a)) goto _L4; else goto _L3
_L3:
        BusProvider.a().a(new TitleBarEvent(true));
        ChatFragment.f(a, true);
        AnimatorSet animatorset = new AnimatorSet();
        View view = ChatFragment.Q(a);
        float af[] = new float[2];
        af[0] = ChatFragment.Q(a).getTranslationY();
        af[1] = ChatFragment.Q(a).getTranslationY() + (float)l;
        android.animation.mOnScrollListener monscrolllistener = animatorset.play(ObjectAnimator.ofFloat(view, "translationY", af));
        View view1 = ChatFragment.C(a);
        float af1[] = new float[2];
        af1[0] = ChatFragment.C(a).getTranslationY();
        af1[1] = ChatFragment.C(a).getTranslationY() + (float)l;
        monscrolllistener.a(ObjectAnimator.ofFloat(view1, "translationY", af1));
        animatorset.addListener(new AnimatorEndListener(l) {

            final int a;
            final ChatFragment.ExpandChatFeedItemOnScrollListener b;

            public void onAnimationEnd(Animator animator)
            {
                ViewUtils.a(ChatFragment.R(b.a), ChatFragment.S(b.a), b.a.getActivity());
                ChatFragment.Q(b.a).setTranslationY(0.0F);
                ChatFragment.C(b.a).setTranslationY(0.0F);
                ChatFragment.g(b.a).scrollBy(0, a);
            }

            
            {
                b = ChatFragment.ExpandChatFeedItemOnScrollListener.this;
                a = i;
                super();
            }
        });
        animatorset.setDuration(200L);
        animatorset.start();
        return;
        ChatFragment.g(a).setIsActive(false);
        return;
    }
}
