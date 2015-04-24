// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.media.MediaPlayer;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.cash.ReceivingCashManager;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatDateHeader;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatHeader;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatScreenshot;
import com.snapchat.android.model.chat.ChatSharedDSnap;
import com.snapchat.android.model.chat.ChatText;
import com.snapchat.android.model.chat.ChatUnknown;
import com.snapchat.android.model.chat.ISavableChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.ui.FeedReplayAnimationView;
import com.snapchat.android.ui.FixTouchConsumeTextView;
import com.snapchat.android.ui.ImageResourceView;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.ui.listeners.AdapterOnGetViewListener;
import com.snapchat.android.util.CashUtils;
import com.snapchat.android.util.ChatLinkUtils;
import com.snapchat.android.util.DateTimeUtils;
import com.snapchat.android.util.EmojiUtils;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.chat.EmojiDetector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ReleaseWindow

public class ChatConversationAdapter extends BaseAdapter
{
    public static interface AdapterUiVisibilityListener
    {

        public abstract void b();

        public abstract void c();
    }

    static final class ChatItemType extends Enum
    {

        public static final ChatItemType a;
        public static final ChatItemType b;
        public static final ChatItemType c;
        public static final ChatItemType d;
        public static final ChatItemType e;
        public static final ChatItemType f;
        public static final ChatItemType g;
        public static final ChatItemType h;
        public static final ChatItemType i;
        private static final ChatItemType j[];

        public static ChatItemType valueOf(String s)
        {
            return (ChatItemType)Enum.valueOf(com/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType, s);
        }

        public static ChatItemType[] values()
        {
            return (ChatItemType[])j.clone();
        }

        static 
        {
            a = new ChatItemType("CHAT_TEXT", 0);
            b = new ChatItemType("DATE_HEADER", 1);
            c = new ChatItemType("HEADER", 2);
            d = new ChatItemType("SNAP", 3);
            e = new ChatItemType("CHAT_MEDIA", 4);
            f = new ChatItemType("CHAT_SCREENSHOT", 5);
            g = new ChatItemType("CHAT_UNKNOWN", 6);
            h = new ChatItemType("CASH", 7);
            i = new ChatItemType("SHARED_DSNAP", 8);
            ChatItemType achatitemtype[] = new ChatItemType[9];
            achatitemtype[0] = a;
            achatitemtype[1] = b;
            achatitemtype[2] = c;
            achatitemtype[3] = d;
            achatitemtype[4] = e;
            achatitemtype[5] = f;
            achatitemtype[6] = g;
            achatitemtype[7] = h;
            achatitemtype[8] = i;
            j = achatitemtype;
        }

        private ChatItemType(String s, int k)
        {
            super(s, k);
        }
    }

    public static class MessageViewHolder
    {

        public int A;
        public int B;
        public boolean C;
        TextView D;
        public View E;
        public ChatFeedItem a;
        View b;
        View c;
        public ViewGroup d;
        FixTouchConsumeTextView e;
        View f;
        LinearLayout g;
        TextView h;
        TextView i;
        TextView j;
        TextView k;
        View l;
        FeedReplayAnimationView m;
        ProgressBar n;
        TextureVideoView o;
        View p;
        TextView q;
        TextView r;
        TextView s;
        ImageView t;
        ImageView u;
        ImageView v;
        ImageView w;
        ProgressBar x;
        public ImageResourceView y;
        public ViewGroup z;

        public void a()
        {
            if (e != null)
            {
                e.setLinkTextColor(0xff0000ff);
            }
            b();
            if (n != null)
            {
                n.setVisibility(8);
            }
            if (x != null)
            {
                x.setVisibility(8);
            }
        }

        public void a(float f1)
        {
            c.setTranslationX(f1);
            if (j != null)
            {
                j.setTranslationX(f1);
            }
        }

        public void b()
        {
            if (z != null)
            {
                android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)z.getLayoutParams();
                if (layoutparams.width != -1 || layoutparams.height != -2)
                {
                    layoutparams.width = -1;
                    layoutparams.height = -2;
                    layoutparams.leftMargin = 0;
                    z.setLayoutParams(layoutparams);
                }
                if (z.getTop() != 0)
                {
                    z.setTop(0);
                }
                A = 0;
                B = 0;
                C = false;
            }
        }

        public MessageViewHolder()
        {
        }
    }


    protected ReceivingCashManager a;
    private final Context b;
    private final LayoutInflater c;
    private final List d;
    private final List e = Collections.synchronizedList(new ArrayList());
    private final AdapterUiVisibilityListener f;
    private final AdapterOnGetViewListener g;
    private final Typeface h = Typeface.create("sans-serif-light", 0);
    private final ReleaseWindow i = new ReleaseWindow();

    public ChatConversationAdapter(Context context, List list, AdapterUiVisibilityListener adapteruivisibilitylistener, AdapterOnGetViewListener adapterongetviewlistener)
    {
        c = (LayoutInflater)context.getSystemService("layout_inflater");
        b = context;
        d = list;
        e.addAll(d);
        f = adapteruivisibilitylistener;
        g = adapterongetviewlistener;
        SnapchatApplication.e().a(this);
    }

    private int a(ChatFeedItem chatfeeditem)
    {
        ChatItemType chatitemtype = b(chatfeeditem);
        static class _cls3
        {

            static final int a[];
            static final int b[];

            static 
            {
                b = new int[com.snapchat.android.model.CashTransaction.TransactionStatus.values().length];
                try
                {
                    b[com.snapchat.android.model.CashTransaction.TransactionStatus.INITIATED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    b[com.snapchat.android.model.CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                a = new int[ChatItemType.values().length];
                try
                {
                    a[ChatItemType.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[ChatItemType.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[ChatItemType.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[ChatItemType.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[ChatItemType.f.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[ChatItemType.g.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[ChatItemType.e.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[ChatItemType.i.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[ChatItemType.h.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror10)
                {
                    return;
                }
            }
        }

        switch (_cls3.a[chatitemtype.ordinal()])
        {
        default:
            throw new RuntimeException("Shouldn't reach here. CHAT_UNKNOWN Should catch everything");

        case 1: // '\001'
            return 0;

        case 2: // '\002'
        case 3: // '\003'
            return 1;

        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
            return 2;

        case 7: // '\007'
        case 8: // '\b'
            return 3;

        case 9: // '\t'
            return 4;
        }
    }

    static AdapterUiVisibilityListener a(ChatConversationAdapter chatconversationadapter)
    {
        return chatconversationadapter.f;
    }

    private static ChatFeedItem a(List list)
    {
        int j;
        int k;
        if (list == null)
        {
            j = 0;
        } else
        {
            j = list.size();
        }
        for (k = j - 1; k >= 0; k--)
        {
            ChatFeedItem chatfeeditem = (ChatFeedItem)list.get(k);
            if (chatfeeditem instanceof Chat)
            {
                return chatfeeditem;
            }
        }

        return null;
    }

    private void a(TextView textview)
    {
        if (EmojiDetector.a() && EmojiDetector.a(textview.getText().toString(), true))
        {
            textview.setTextSize(0, b.getResources().getDimension(0x7f090014));
            return;
        } else
        {
            textview.setTextSize(0, b.getResources().getDimension(0x7f090015));
            return;
        }
    }

    private void a(MessageViewHolder messageviewholder, Snap snap)
    {
        messageviewholder.m.setVisibility(0);
        messageviewholder.k.setVisibility(0);
        messageviewholder.h.setText(snap.b());
        a(((ChatFeedItem) (snap)), messageviewholder.h);
        messageviewholder.j.setText(DateTimeUtils.a(b, snap.ae()));
        b(snap, messageviewholder.j);
        a(((ChatFeedItem) (snap)), messageviewholder);
        b(snap, messageviewholder);
        a(snap, messageviewholder);
        b(snap, messageviewholder);
        if (snap.W())
        {
            messageviewholder.m.setIconResources(0x7f020039, 0x7f020039);
        }
    }

    private void a(MessageViewHolder messageviewholder, CashFeedItem cashfeeditem)
    {
        a(((ChatFeedItem) (cashfeeditem)), messageviewholder.e);
        b(cashfeeditem, messageviewholder.r);
        b(cashfeeditem, messageviewholder.s);
        messageviewholder.j.setText(DateTimeUtils.a(b, cashfeeditem.ae()));
        b(cashfeeditem, messageviewholder.j);
        a(((ChatFeedItem) (cashfeeditem)), messageviewholder);
        a(cashfeeditem, messageviewholder);
        b(cashfeeditem, messageviewholder);
        if (ChatUtils.a(cashfeeditem))
        {
            messageviewholder.v.setVisibility(8);
            messageviewholder.w.setVisibility(8);
        }
    }

    private void a(MessageViewHolder messageviewholder, ChatFeedItem chatfeeditem)
    {
        messageviewholder.i.setVisibility(8);
        messageviewholder.D.setVisibility(0);
        messageviewholder.D.setText(chatfeeditem.b());
    }

    private void a(MessageViewHolder messageviewholder, ChatFeedItem chatfeeditem, int j)
    {
        ChatFeedItem chatfeeditem1;
        if (chatfeeditem instanceof ChatDateHeader)
        {
            chatfeeditem1 = a(j + 2);
        } else
        if (chatfeeditem instanceof ChatHeader)
        {
            chatfeeditem1 = a(j + 1);
        } else
        {
            chatfeeditem1 = chatfeeditem;
        }
        if (!(chatfeeditem1 instanceof ChatUnknown)) goto _L2; else goto _L1
_L1:
        messageviewholder.b.setBackgroundColor(b.getResources().getColor(0x7f08000e));
_L4:
        return;
_L2:
        if (!(chatfeeditem1 instanceof ISavableChatFeedItem) || !((ISavableChatFeedItem)chatfeeditem1).k())
        {
            break; /* Loop/switch isn't completed */
        }
        messageviewholder.b.setBackgroundColor(b.getResources().getColor(0x7f080000));
        if (messageviewholder.f != null)
        {
            messageviewholder.f.setBackgroundColor(b.getResources().getColor(0x7f080000));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        messageviewholder.b.setBackgroundDrawable(null);
        if (messageviewholder.f != null)
        {
            messageviewholder.f.setBackgroundColor(b.getResources().getColor(0x7f08000d));
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    private void a(MessageViewHolder messageviewholder, ChatMedia chatmedia, int j)
    {
        a(((ChatFeedItem) (chatmedia)), messageviewholder.e);
        messageviewholder.j.setText(DateTimeUtils.a(b, chatmedia.ae()));
        b(chatmedia, messageviewholder.j);
        a(((ChatFeedItem) (chatmedia)), messageviewholder);
        b(chatmedia, messageviewholder);
        messageviewholder.y.setChatMedia(chatmedia);
        messageviewholder.y.setVisibility(0);
        int k = b.getResources().getDimensionPixelSize(0x7f09001f);
        messageviewholder.y.setMinimumHeight(j - k * 2);
        messageviewholder.p.setVisibility(8);
        messageviewholder.y.setAlpha(1.0F);
        messageviewholder.q.setVisibility(8);
    }

    private void a(MessageViewHolder messageviewholder, ChatSharedDSnap chatshareddsnap)
    {
        a(((ChatFeedItem) (chatshareddsnap)), messageviewholder.e);
        messageviewholder.h.setText(chatshareddsnap.b());
        a(((ChatFeedItem) (chatshareddsnap)), messageviewholder.h);
        messageviewholder.j.setText(DateTimeUtils.a(b, chatshareddsnap.ae()));
        b(chatshareddsnap, messageviewholder.j);
        messageviewholder.p.setVisibility(8);
        messageviewholder.q.setVisibility(8);
        a(((ChatFeedItem) (chatshareddsnap)), messageviewholder);
        b(chatshareddsnap, messageviewholder);
        if (chatshareddsnap.G() == com.snapchat.android.model.chat.ChatSharedDSnap.MediaType.VIDEO)
        {
            messageviewholder.y.setVisibility(8);
            int j = b.getResources().getDimensionPixelSize(0x7f09001f);
            messageviewholder.o.setVisibility(0);
            android.view.ViewGroup.LayoutParams layoutparams = messageviewholder.o.getLayoutParams();
            int k = messageviewholder.b.getWidth() - j * 3;
            float f1 = k / layoutparams.width;
            layoutparams.width = k;
            layoutparams.height = (int)(f1 * (float)layoutparams.height);
            messageviewholder.o.setLayoutParams(layoutparams);
            if (!messageviewholder.o.isPlaying())
            {
                messageviewholder.o.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() {

                    final ChatConversationAdapter a;

                    public void onPrepared(MediaPlayer mediaplayer)
                    {
                        mediaplayer.seekTo(0);
                        mediaplayer.setLooping(true);
                    }

            
            {
                a = ChatConversationAdapter.this;
                super();
            }
                });
                messageviewholder.o.setVideoPath(chatshareddsnap.H());
            }
            return;
        } else
        {
            messageviewholder.y.setVisibility(0);
            messageviewholder.p.setVisibility(0);
            messageviewholder.q.setVisibility(0);
            return;
        }
    }

    private void a(MessageViewHolder messageviewholder, ChatText chattext)
    {
        a(((ChatFeedItem) (chattext)), messageviewholder.e);
        messageviewholder.j.setText(DateTimeUtils.a(b, chattext.ae()));
        b(chattext, messageviewholder.j);
        a(((ChatFeedItem) (chattext)), messageviewholder);
        b(chattext, messageviewholder);
    }

    private void a(Snap snap, MessageViewHolder messageviewholder)
    {
        if (snap.V() || (snap instanceof ReceivedSnap) && ((ReceivedSnap)snap).Z())
        {
            messageviewholder.m.setVisibility(8);
            messageviewholder.n.setVisibility(0);
            return;
        } else
        {
            messageviewholder.m.setDisplayedIcon(snap);
            messageviewholder.m.setVisibility(0);
            messageviewholder.n.setVisibility(8);
            return;
        }
    }

    private void a(CashFeedItem cashfeeditem, MessageViewHolder messageviewholder)
    {
        android.view.View.OnClickListener onclicklistener;
        messageviewholder.g.setEnabled(true);
        View view = messageviewholder.f;
        byte byte0;
        String s;
        if (cashfeeditem.W() || cashfeeditem.V())
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view.setVisibility(byte0);
        messageviewholder.u.setVisibility(0);
        if (!ChatUtils.a(cashfeeditem)) goto _L2; else goto _L1
_L1:
        if (!cashfeeditem.V()) goto _L4; else goto _L3
_L3:
        messageviewholder.x.setVisibility(0);
        onclicklistener = null;
_L6:
        messageviewholder.g.setOnClickListener(onclicklistener);
        if (onclicklistener == null)
        {
            messageviewholder.g.setClickable(false);
        }
        int j = cashfeeditem.x();
        if (j == 0)
        {
            messageviewholder.u.setVisibility(8);
        } else
        {
            b(cashfeeditem, messageviewholder);
            messageviewholder.x.setVisibility(8);
            messageviewholder.u.setVisibility(0);
            messageviewholder.u.setImageResource(j);
        }
        messageviewholder.r.setText(cashfeeditem.r());
        s = cashfeeditem.w();
        if (!TextUtils.isEmpty(s))
        {
            messageviewholder.s.setText(s);
            messageviewholder.s.setVisibility(0);
            return;
        } else
        {
            messageviewholder.s.setVisibility(8);
            return;
        }
_L2:
        _cls3.b[cashfeeditem.h().o().ordinal()];
        JVM INSTR tableswitch 1 2: default 196
    //                   1 202
    //                   2 202;
           goto _L4 _L5 _L5
_L4:
        onclicklistener = null;
          goto _L6
_L5:
        if (cashfeeditem.K() != com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.RECEIVING)
        {
            continue; /* Loop/switch isn't completed */
        }
        messageviewholder.x.setVisibility(0);
        onclicklistener = null;
          goto _L6
        if (!CashUtils.a(UserPrefs.Z())) goto _L4; else goto _L7
_L7:
        onclicklistener = new android.view.View.OnClickListener(cashfeeditem) {

            final CashFeedItem a;
            final ChatConversationAdapter b;

            public void onClick(View view1)
            {
                AnalyticsEvents.s(a.h().j());
                ChatConversationAdapter.a(b).b();
                b.a.a(a, new com.snapchat.android.cash.ReceivingCashManager.ResolvingBlockersCallback(this) {

                    final _cls2 a;

                    public void a()
                    {
                        ChatConversationAdapter.a(a.b).c();
                    }

                    public void b()
                    {
                        ChatConversationAdapter.a(a.b).c();
                    }

            
            {
                a = _pcls2;
                super();
            }
                });
            }

            
            {
                b = ChatConversationAdapter.this;
                a = cashfeeditem;
                super();
            }
        };
          goto _L6
    }

    private void a(ChatFeedItem chatfeeditem, TextView textview)
    {
        b(chatfeeditem, textview);
        if ((chatfeeditem instanceof StatefulChatFeedItem) && (chatfeeditem.V() || chatfeeditem.W()))
        {
            textview.setTextColor(b.getResources().getColor(0x7f08000c));
            return;
        } else
        {
            textview.setTextColor(0xff000000);
            return;
        }
    }

    private void a(ChatFeedItem chatfeeditem, MessageViewHolder messageviewholder)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (chatfeeditem instanceof ChatUnknown)
        {
            messageviewholder.l.setBackgroundColor(b.getResources().getColor(0x7f080010));
        } else
        if (ChatUtils.a(chatfeeditem))
        {
            if (!(chatfeeditem instanceof ChatScreenshot) && (chatfeeditem.V() || chatfeeditem.W()))
            {
                messageviewholder.l.setBackgroundColor(b.getResources().getColor(0x7f08000c));
            } else
            {
                messageviewholder.l.setBackgroundColor(b.getResources().getColor(0x7f08003b));
            }
        } else
        {
            messageviewholder.l.setBackgroundColor(b.getResources().getColor(0x7f080005));
        }
        layoutparams = (android.widget.RelativeLayout.LayoutParams)messageviewholder.l.getLayoutParams();
        if ((chatfeeditem instanceof ISavableChatFeedItem) && ((ISavableChatFeedItem)chatfeeditem).n())
        {
            layoutparams.width = b.getResources().getDimensionPixelSize(0x7f090017);
            layoutparams.rightMargin = 0;
        } else
        {
            layoutparams.width = b.getResources().getDimensionPixelSize(0x7f09001d);
            layoutparams.rightMargin = b.getResources().getDimensionPixelOffset(0x7f09001c);
        }
        messageviewholder.l.setLayoutParams(layoutparams);
    }

    private void a(ChatFeedItem chatfeeditem, FixTouchConsumeTextView fixtouchconsumetextview)
    {
        if (TextUtils.isEmpty(chatfeeditem.ap()))
        {
            fixtouchconsumetextview.setVisibility(8);
            return;
        }
        fixtouchconsumetextview.setText(chatfeeditem.ap());
        fixtouchconsumetextview.setVisibility(0);
        if ((chatfeeditem instanceof ISavableChatFeedItem) && ChatLinkUtils.a((ISavableChatFeedItem)chatfeeditem, fixtouchconsumetextview))
        {
            fixtouchconsumetextview.setMovementMethod(LinkMovementMethod.getInstance());
        }
        a(chatfeeditem, ((TextView) (fixtouchconsumetextview)));
        if ((chatfeeditem instanceof ISavableChatFeedItem) && ((ISavableChatFeedItem)chatfeeditem).k())
        {
            EmojiUtils.a(fixtouchconsumetextview, "sans-serif-light");
        }
        a(((TextView) (fixtouchconsumetextview)));
    }

    private ChatItemType b(ChatFeedItem chatfeeditem)
    {
        if (chatfeeditem instanceof ChatText)
        {
            return ChatItemType.a;
        }
        if (chatfeeditem instanceof Snap)
        {
            return ChatItemType.d;
        }
        if (chatfeeditem instanceof ChatDateHeader)
        {
            return ChatItemType.b;
        }
        if (chatfeeditem instanceof ChatHeader)
        {
            return ChatItemType.c;
        }
        if (chatfeeditem instanceof ChatSharedDSnap)
        {
            return ChatItemType.i;
        }
        if (chatfeeditem instanceof ChatMedia)
        {
            return ChatItemType.e;
        }
        if (chatfeeditem instanceof ChatScreenshot)
        {
            return ChatItemType.f;
        }
        if (chatfeeditem instanceof CashFeedItem)
        {
            return ChatItemType.h;
        } else
        {
            return ChatItemType.g;
        }
    }

    private void b(MessageViewHolder messageviewholder, ChatFeedItem chatfeeditem)
    {
        messageviewholder.m.setVisibility(0);
        messageviewholder.k.setVisibility(8);
        messageviewholder.h.setText(chatfeeditem.b());
        a(chatfeeditem, messageviewholder.h);
        messageviewholder.j.setText(DateTimeUtils.a(b, chatfeeditem.ae()));
        b(chatfeeditem, messageviewholder.j);
        a(chatfeeditem, messageviewholder);
        messageviewholder.m.setIconResources(0x7f020036, 0x7f020036);
        messageviewholder.t.setVisibility(8);
    }

    private void b(MessageViewHolder messageviewholder, ChatFeedItem chatfeeditem, int j)
    {
        String s = chatfeeditem.l();
        ChatFeedItem chatfeeditem1 = a(j + 1);
        messageviewholder.D.setVisibility(8);
        messageviewholder.i.setVisibility(0);
        messageviewholder.i.setTypeface(null, 0);
        if (chatfeeditem1 instanceof ChatUnknown)
        {
            messageviewholder.i.setText(b.getString(0x7f0c006d));
            messageviewholder.i.setTextColor(b.getResources().getColor(0x7f08000f));
        } else
        if (TextUtils.isEmpty(s) || s.equals(UserPrefs.k()))
        {
            String s1 = b.getString(0x7f0c0124).toUpperCase(Locale.getDefault());
            messageviewholder.i.setText(s1);
            messageviewholder.i.setTextColor(b.getResources().getColor(0x7f08003b));
        } else
        {
            String s2 = FriendUtils.a(s, User.c()).q().toUpperCase(Locale.getDefault());
            messageviewholder.i.setText(s2);
            messageviewholder.i.setTextColor(b.getResources().getColor(0x7f080005));
        }
        if (a(j - 1) instanceof ChatDateHeader)
        {
            messageviewholder.b.setPadding(0, 0, 0, 0);
        }
    }

    private void b(Snap snap, MessageViewHolder messageviewholder)
    {
        messageviewholder.k.setText("");
        if (snap instanceof ReceivedSnap)
        {
            ReceivedSnap receivedsnap = (ReceivedSnap)snap;
            double d1 = receivedsnap.N();
            if (receivedsnap.K() && d1 > 0.0D)
            {
                messageviewholder.k.setText(Integer.toString((int)receivedsnap.N()));
            }
        }
    }

    private void b(CashFeedItem cashfeeditem, MessageViewHolder messageviewholder)
    {
        if (!cashfeeditem.i())
        {
            return;
        } else
        {
            cashfeeditem.q();
            ImageView imageview = messageviewholder.v;
            ImageView imageview1 = messageviewholder.w;
            imageview.setImageResource(0x7f0200b2);
            imageview.setVisibility(0);
            imageview1.setImageResource(0x7f0200bf);
            imageview1.setVisibility(0);
            ((AnimationDrawable)imageview.getDrawable()).setVisible(true, true);
            ((AnimationDrawable)imageview1.getDrawable()).setVisible(true, true);
            return;
        }
    }

    private void b(ChatFeedItem chatfeeditem, TextView textview)
    {
        if ((chatfeeditem instanceof ISavableChatFeedItem) && ((ISavableChatFeedItem)chatfeeditem).k())
        {
            textview.setTextAppearance(b, 0x7f0d0034);
            return;
        } else
        {
            textview.setTextAppearance(b, 0x7f0d0035);
            return;
        }
    }

    private void b(ChatFeedItem chatfeeditem, MessageViewHolder messageviewholder)
    {
        if (chatfeeditem.W() && chatfeeditem.Y())
        {
            messageviewholder.t.setVisibility(0);
            return;
        } else
        {
            messageviewholder.t.setVisibility(8);
            return;
        }
    }

    private void c(MessageViewHolder messageviewholder, ChatFeedItem chatfeeditem)
    {
        messageviewholder.m.setVisibility(8);
        messageviewholder.k.setVisibility(8);
        messageviewholder.h.setText(chatfeeditem.b());
        a(chatfeeditem, messageviewholder.h);
        messageviewholder.j.setText(DateTimeUtils.a(b, chatfeeditem.ae()));
        b(chatfeeditem, messageviewholder.j);
        b(chatfeeditem, messageviewholder);
        messageviewholder.b.setBackgroundColor(b.getResources().getColor(0x7f08000e));
    }

    public long a()
    {
        return i.b();
    }

    public ChatFeedItem a(int j)
    {
        List list = e;
        list;
        JVM INSTR monitorenter ;
        if (j > -1 + getCount() || j < 0)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        ChatFeedItem chatfeeditem = (ChatFeedItem)e.get(j);
        list;
        JVM INSTR monitorexit ;
        return chatfeeditem;
        list;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
        i.a(true);
    }

    public void c()
    {
        i.a(false);
    }

    public int getCount()
    {
        return e.size();
    }

    public Object getItem(int j)
    {
        return a(j);
    }

    public long getItemId(int j)
    {
        return (long)j;
    }

    public int getItemViewType(int j)
    {
        return a(a(j));
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        ChatFeedItem chatfeeditem;
        ChatItemType chatitemtype;
        chatfeeditem = a(j);
        chatitemtype = b(chatfeeditem);
        if (view != null) goto _L2; else goto _L1
_L1:
        MessageViewHolder messageviewholder = new MessageViewHolder();
        _cls3.a[chatitemtype.ordinal()];
        JVM INSTR tableswitch 1 9: default 88
    //                   1 100
    //                   2 173
    //                   3 173
    //                   4 219
    //                   5 219
    //                   6 219
    //                   7 352
    //                   8 352
    //                   9 544;
           goto _L3 _L4 _L5 _L5 _L6 _L6 _L6 _L7 _L7 _L8
_L3:
        if (view == null)
        {
            throw new NullPointerException();
        }
        break; /* Loop/switch isn't completed */
_L4:
        view = c.inflate(0x7f04002a, viewgroup, false);
        messageviewholder.e = (FixTouchConsumeTextView)view.findViewById(0x7f0a0109);
        messageviewholder.t = (ImageView)view.findViewById(0x7f0a0105);
        messageviewholder.l = view.findViewById(0x7f0a0108);
        messageviewholder.j = (TextView)view.findViewById(0x7f0a0111);
        continue; /* Loop/switch isn't completed */
_L5:
        view = c.inflate(0x7f040027, viewgroup, false);
        messageviewholder.i = (TextView)view.findViewById(0x7f0a0113);
        messageviewholder.D = (TextView)view.findViewById(0x7f0a0112);
        continue; /* Loop/switch isn't completed */
_L6:
        view = c.inflate(0x7f040029, viewgroup, false);
        messageviewholder.h = (TextView)view.findViewById(0x7f0a0120);
        messageviewholder.t = (ImageView)view.findViewById(0x7f0a0105);
        messageviewholder.l = view.findViewById(0x7f0a0108);
        messageviewholder.j = (TextView)view.findViewById(0x7f0a0111);
        messageviewholder.d = (ViewGroup)view.findViewById(0x7f0a0114);
        messageviewholder.m = (FeedReplayAnimationView)view.findViewById(0x7f0a011d);
        messageviewholder.n = (ProgressBar)view.findViewById(0x7f0a011e);
        messageviewholder.k = (TextView)view.findViewById(0x7f0a011f);
        continue; /* Loop/switch isn't completed */
_L7:
        view = c.inflate(0x7f040028, viewgroup, false);
        messageviewholder.e = (FixTouchConsumeTextView)view.findViewById(0x7f0a0109);
        messageviewholder.t = (ImageView)view.findViewById(0x7f0a0105);
        messageviewholder.l = view.findViewById(0x7f0a0108);
        messageviewholder.j = (TextView)view.findViewById(0x7f0a0111);
        messageviewholder.d = (ViewGroup)view.findViewById(0x7f0a0114);
        messageviewholder.z = (ViewGroup)view.findViewById(0x7f0a0115);
        messageviewholder.y = (ImageResourceView)view.findViewById(0x7f0a0116);
        messageviewholder.p = view.findViewById(0x7f0a0118);
        messageviewholder.q = (TextView)view.findViewById(0x7f0a0119);
        messageviewholder.E = view.findViewById(0x7f0a011a);
        messageviewholder.o = (TextureVideoView)view.findViewById(0x7f0a0117);
        messageviewholder.o.setVisibility(8);
        messageviewholder.E.setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L8:
        view = c.inflate(0x7f040026, viewgroup, false);
        messageviewholder.e = (FixTouchConsumeTextView)view.findViewById(0x7f0a0109);
        messageviewholder.r = (TextView)view.findViewById(0x7f0a010f);
        messageviewholder.s = (TextView)view.findViewById(0x7f0a0110);
        messageviewholder.t = (ImageView)view.findViewById(0x7f0a0105);
        messageviewholder.l = view.findViewById(0x7f0a0108);
        messageviewholder.j = (TextView)view.findViewById(0x7f0a0111);
        messageviewholder.u = (ImageView)view.findViewById(0x7f0a010c);
        messageviewholder.v = (ImageView)view.findViewById(0x7f0a010d);
        messageviewholder.w = (ImageView)view.findViewById(0x7f0a010e);
        messageviewholder.g = (LinearLayout)view.findViewById(0x7f0a0107);
        messageviewholder.f = view.findViewById(0x7f0a0106);
        messageviewholder.x = (ProgressBar)view.findViewById(0x7f0a010b);
        if (true) goto _L3; else goto _L9
_L9:
        view.setFocusable(false);
        messageviewholder.b = view;
        messageviewholder.c = view.findViewById(0x7f0a0104);
        view.setTag(messageviewholder);
_L11:
        if (messageviewholder == null)
        {
            String s = (new StringBuilder()).append("CHAT-LOG: Holder is null for position (").append(j).append(") and ChatFeedItem (").append(chatfeeditem).append(")").toString();
            Timber.f("ChatConversationAdapter", s, new Object[0]);
            throw new NullPointerException(s);
        }
        break; /* Loop/switch isn't completed */
_L2:
        MessageViewHolder messageviewholder1 = (MessageViewHolder)view.getTag();
        if (messageviewholder1.j != null)
        {
            messageviewholder1.j.setVisibility(0);
        }
        messageviewholder = messageviewholder1;
        if (true) goto _L11; else goto _L10
_L10:
        if (!chatfeeditem.equals(messageviewholder.a))
        {
            messageviewholder.a();
        }
        messageviewholder.a = chatfeeditem;
        messageviewholder.b.setPadding(0, 0, 0, 0);
        a(messageviewholder, chatfeeditem, j);
        _cls3.a[chatitemtype.ordinal()];
        JVM INSTR tableswitch 1 9: default 968
    //                   1 1147
    //                   2 1161
    //                   3 1172
    //                   4 1184
    //                   5 1198
    //                   6 1209
    //                   7 1220
    //                   8 1242
    //                   9 1256;
           goto _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21
_L12:
        break; /* Loop/switch isn't completed */
_L21:
        break MISSING_BLOCK_LABEL_1256;
_L22:
        ChatFeedItem chatfeeditem1 = a(j + 1);
        ChatFeedItem chatfeeditem2 = a(j - 1);
        int k;
        if (chatfeeditem2 != null && !(chatfeeditem2 instanceof ChatHeader) && !(chatfeeditem instanceof ChatHeader))
        {
            if (DateTimeUtils.a(b, chatfeeditem2.ae()).equals(DateTimeUtils.a(b, chatfeeditem.ae())))
            {
                messageviewholder.j.setVisibility(4);
            } else
            {
                messageviewholder.j.setVisibility(0);
            }
        }
        if (!(chatfeeditem instanceof ChatDateHeader) && chatfeeditem1 != null && (chatfeeditem1 instanceof ChatHeader))
        {
            messageviewholder.b.setPadding(0, 0, 0, (int)ViewUtils.a(9F, b));
        }
        if (j == -1 + getCount())
        {
            messageviewholder.b.setPadding(0, 0, 0, (int)ViewUtils.a(b.getResources().getDimension(0x7f090026), b));
        }
        g.d(view);
        return view;
_L13:
        a(messageviewholder, (ChatText)chatfeeditem);
          goto _L22
_L14:
        a(messageviewholder, chatfeeditem);
          goto _L22
_L15:
        b(messageviewholder, chatfeeditem, j);
          goto _L22
_L16:
        a(messageviewholder, (Snap)chatfeeditem);
          goto _L22
_L17:
        b(messageviewholder, chatfeeditem);
          goto _L22
_L18:
        c(messageviewholder, chatfeeditem);
          goto _L22
_L19:
        k = viewgroup.getMeasuredHeight();
        a(messageviewholder, (ChatMedia)chatfeeditem, k);
          goto _L22
_L20:
        a(messageviewholder, (ChatSharedDSnap)chatfeeditem);
          goto _L22
        a(messageviewholder, (CashFeedItem)chatfeeditem);
          goto _L22
    }

    public int getViewTypeCount()
    {
        return 5;
    }

    public void notifyDataSetChanged()
    {
        List list = e;
        list;
        JVM INSTR monitorenter ;
        ChatFeedItem chatfeeditem;
        e.clear();
        e.addAll(d);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(e.size());
        Timber.f("ChatConversationAdapter", "CHAT-LOG: ChatConversationAdapter notifyDataSetChanged %d items", aobj);
        chatfeeditem = a(e);
        if (chatfeeditem != null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        i.a();
_L1:
        list;
        JVM INSTR monitorexit ;
        super.notifyDataSetChanged();
        return;
        i.a(chatfeeditem.ae());
          goto _L1
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
