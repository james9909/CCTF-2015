// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.FeedReplayAnimationView;
import com.snapchat.android.util.DateTimeUtils;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ListViewAdapterList;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.debug.ExceptionReporter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFilter

public class FeedAdapter extends ArrayAdapter
    implements com.snapchat.android.util.listview.ScFilter.ScFilterInterface
{
    public static interface FeedAdapterInterface
    {

        public abstract void a(List list);

        public abstract boolean b();

        public abstract boolean c();
    }

    public static class FeedViewHolder
    {

        public TextView a;
        public TextView b;
        public ChatConversation c;
        public Animator d;
        public boolean e;
        FrameLayout f;
        ImageView g;
        FeedReplayAnimationView h;
        ProgressBar i;
        TextView j;
        View k;

        public void a()
        {
            a.setGravity(80);
            a.setTranslationY(0.0F);
            b.setAlpha(1.0F);
            b.setVisibility(0);
        }

        public void b()
        {
            a.setGravity(16);
            a.setTranslationY(0.0F);
            b.setVisibility(8);
        }

        public FeedViewHolder()
        {
        }
    }


    protected ExceptionReporter a;
    private LayoutInflater b;
    private final ListViewAdapterList c;
    private final FeedIconManager d;
    private List e;
    private FeedFilter f;
    private FeedAdapterInterface g;
    private final Map h = new HashMap();

    private FeedAdapter(Context context, ListViewAdapterList listviewadapterlist, FeedIconManager feediconmanager, FeedAdapterInterface feedadapterinterface)
    {
        super(context, 0x7f04004b, listviewadapterlist);
        SnapchatApplication.e().a(this);
        c = listviewadapterlist;
        e = listviewadapterlist;
        d = feediconmanager;
        b = (LayoutInflater)context.getSystemService("layout_inflater");
        g = feedadapterinterface;
    }

    private Animator a(FeedViewHolder feedviewholder)
    {
        float f1 = (float)ViewUtils.b(feedviewholder.b) / 2.0F;
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(feedviewholder.a, "translationY", new float[] {
            f1
        });
        AnimatorSet animatorset = new AnimatorSet();
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(feedviewholder.b, "alpha", new float[] {
            0.0F
        });
        objectanimator1.setDuration(300L);
        objectanimator.setDuration(300L);
        animatorset.addListener(new android.animation.Animator.AnimatorListener(feedviewholder) {

            final FeedViewHolder a;
            final FeedAdapter b;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
                a.b();
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                b = FeedAdapter.this;
                a = feedviewholder;
                super();
            }
        });
        animatorset.play(objectanimator1).with(objectanimator);
        return animatorset;
    }

    public static FeedAdapter a(Context context, ListViewAdapterList listviewadapterlist, FeedIconManager feediconmanager, FeedAdapterInterface feedadapterinterface)
    {
        FeedAdapter feedadapter = new FeedAdapter(context, listviewadapterlist, feediconmanager, feedadapterinterface);
        listviewadapterlist.a(feedadapter);
        return feedadapter;
    }

    private ChatFeedItem a(FeedViewHolder feedviewholder, ChatConversation chatconversation)
    {
        d.a(chatconversation, false);
        List list = chatconversation.ax();
        feedviewholder.h.setDisplayedIcon(list, chatconversation);
        feedviewholder.h.setVisibility(0);
        feedviewholder.i.setVisibility(8);
        feedviewholder.j.setText("");
        boolean flag = list.isEmpty();
        ChatFeedItem chatfeeditem = null;
        if (!flag)
        {
            chatfeeditem = (ChatFeedItem)list.get(0);
            if (chatfeeditem instanceof ReceivedSnap)
            {
                ReceivedSnap receivedsnap = (ReceivedSnap)chatfeeditem;
                double d1 = receivedsnap.N();
                if (receivedsnap.K() && d1 > 0.0D)
                {
                    feedviewholder.j.setText(Integer.toString((int)receivedsnap.N()));
                }
                if (receivedsnap.Z())
                {
                    feedviewholder.i.setVisibility(0);
                    feedviewholder.h.setVisibility(4);
                }
            } else
            if (chatfeeditem != null && chatfeeditem.V())
            {
                feedviewholder.i.setVisibility(0);
                feedviewholder.h.setVisibility(4);
                return chatfeeditem;
            }
        }
        return chatfeeditem;
    }

    private void a(FeedViewHolder feedviewholder, ChatConversation chatconversation, ChatFeedItem chatfeeditem)
    {
        String s;
        long l;
        s = "";
        l = chatconversation.U();
        if (l != 0L)
        {
            s = DateTimeUtils.b(getContext(), l);
        }
        if (chatfeeditem == null) goto _L2; else goto _L1
_L1:
        String s1;
        if (l != 0L)
        {
            s = (new StringBuilder()).append(s).append(" - ").toString();
        }
        s1 = (new StringBuilder()).append(s).append(chatfeeditem.a()).toString();
        if (!chatfeeditem.c()) goto _L4; else goto _L3
_L3:
        feedviewholder.b.setVisibility(0);
        s = s1;
_L2:
        feedviewholder.b.setText(s);
        return;
_L4:
        if ((chatfeeditem instanceof ReceivedSnap) && ((ReceivedSnap)chatfeeditem).F() && (feedviewholder.d == null || !feedviewholder.d.isStarted()))
        {
            if (h.get(chatconversation) != null && ((Long)h.get(chatconversation)).longValue() <= SystemClock.elapsedRealtime() && g.c())
            {
                feedviewholder.b();
                s = s1;
                continue; /* Loop/switch isn't completed */
            }
            feedviewholder.a();
            if (g.c())
            {
                if (h.get(chatconversation) == null)
                {
                    long l2 = 3000L + SystemClock.elapsedRealtime();
                    h.put(chatconversation, Long.valueOf(l2));
                }
                long l1 = ((Long)h.get(chatconversation)).longValue();
                feedviewholder.d = a(feedviewholder);
                feedviewholder.d.setStartDelay(l1 - SystemClock.elapsedRealtime());
                feedviewholder.d.start();
            }
        }
        s = s1;
        if (true) goto _L2; else goto _L5
_L5:
    }

    private void a(FeedViewHolder feedviewholder, ChatConversation chatconversation, boolean flag, ChatFeedItem chatfeeditem)
    {
        b(feedviewholder, chatconversation, chatfeeditem);
        Context context = getContext();
        if (!flag || !chatconversation.ay())
        {
            if (feedviewholder.d != null)
            {
                feedviewholder.e = true;
                feedviewholder.d.cancel();
            }
            feedviewholder.a.clearAnimation();
            feedviewholder.b.clearAnimation();
        }
        feedviewholder.b.setTextColor(context.getResources().getColor(0x7f080042));
        if (g.b())
        {
            User user = User.a(context);
            if (FriendUtils.c(chatconversation.c(), user))
            {
                if (chatconversation.aC())
                {
                    feedviewholder.b.setText((new StringBuilder()).append(chatconversation.c()).append(" - ").append(context.getString(0x7f0c0209)).toString());
                } else
                {
                    feedviewholder.b.setText((new StringBuilder()).append(chatconversation.c()).append(" - ").append(DateTimeUtils.b(context, chatconversation.U())).toString());
                }
            } else
            if (chatconversation.aC())
            {
                feedviewholder.b.setText(context.getString(0x7f0c0209));
            } else
            {
                feedviewholder.b.setText(DateTimeUtils.b(context, chatconversation.U()));
            }
            feedviewholder.b.setVisibility(0);
            return;
        }
        if (chatconversation.ay())
        {
            if (chatfeeditem != null)
            {
                a(feedviewholder, chatconversation, chatfeeditem);
                return;
            } else
            {
                feedviewholder.b();
                return;
            }
        }
        if (chatconversation.ao())
        {
            feedviewholder.b.setTextColor(context.getResources().getColor(0x7f08003d));
        }
        a(feedviewholder, chatconversation, chatfeeditem);
    }

    private void b(FeedViewHolder feedviewholder, ChatConversation chatconversation, ChatFeedItem chatfeeditem)
    {
        feedviewholder.a.setText(ConversationUtils.a(chatconversation));
        if (chatconversation.ak() || chatconversation.as() || chatconversation.al() || (chatfeeditem instanceof ReceivedSnap) && ((ReceivedSnap)chatfeeditem).K() && ((ReceivedSnap)chatfeeditem).N() > 0.0D)
        {
            feedviewholder.a.setTypeface(null, 1);
            return;
        } else
        {
            feedviewholder.a.setTypeface(null, 0);
            return;
        }
    }

    public ChatConversation a(int i)
    {
        return (ChatConversation)e.get(i);
    }

    public Map a()
    {
        return h;
    }

    public void a(List list)
    {
        if (list == null)
        {
            e = c;
        } else
        {
            e = list;
        }
        g.a(e);
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return e.size();
    }

    public Filter getFilter()
    {
        if (f == null)
        {
            f = new FeedFilter(c, a, this);
        }
        return f;
    }

    public Object getItem(int i)
    {
        return a(i);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        FeedViewHolder feedviewholder;
        ChatConversation chatconversation;
        if (view == null)
        {
            feedviewholder = new FeedViewHolder();
            view = b.inflate(0x7f04004b, viewgroup, false);
            feedviewholder.f = (FrameLayout)view.findViewById(0x7f0a01d5);
            feedviewholder.g = (ImageView)view.findViewById(0x7f0a01d6);
            feedviewholder.h = (FeedReplayAnimationView)view.findViewById(0x7f0a01d8);
            feedviewholder.a = (TextView)view.findViewById(0x7f0a016b);
            feedviewholder.b = (TextView)view.findViewById(0x7f0a01db);
            feedviewholder.i = (ProgressBar)view.findViewById(0x7f0a01d9);
            feedviewholder.j = (TextView)view.findViewById(0x7f0a01dc);
            feedviewholder.k = view.findViewById(0x7f0a006e);
            view.setTag(feedviewholder);
        } else
        {
            feedviewholder = (FeedViewHolder)view.getTag();
        }
        synchronized (e)
        {
            chatconversation = (ChatConversation)e.get(i);
        }
        if (chatconversation != null)
        {
            boolean flag = chatconversation.equals(feedviewholder.c);
            feedviewholder.c = chatconversation;
            a(feedviewholder, chatconversation, flag, a(feedviewholder, chatconversation));
            ImageView imageview = feedviewholder.g;
            int j;
            if (chatconversation.ak())
            {
                j = 0x7f02002d;
            } else
            {
                j = 0x7f02002c;
            }
            imageview.setBackgroundResource(j);
            if (feedviewholder.b.getVisibility() == 0 && feedviewholder.b.getAlpha() == 0.0F)
            {
                feedviewholder.b.clearAnimation();
                feedviewholder.b.setVisibility(8);
                feedviewholder.b.setAlpha(1.0F);
                return view;
            }
        }
        return view;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
