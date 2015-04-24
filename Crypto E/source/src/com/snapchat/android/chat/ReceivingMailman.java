// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.cash.SendingCashManager;
import com.snapchat.android.database.table.NotificationTable;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatScreenshot;
import com.snapchat.android.model.chat.ChatSharedDSnap;
import com.snapchat.android.model.chat.ChatText;
import com.snapchat.android.model.chat.ChatUnknown;
import com.snapchat.android.model.server.cash.CashRainMessage;
import com.snapchat.android.model.server.cash.CashStateMessage;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.model.server.chat.ConnectResponse;
import com.snapchat.android.model.server.chat.ConversationMessage;
import com.snapchat.android.model.server.chat.ConversationMessageResponse;
import com.snapchat.android.model.server.chat.MessageStateMessage;
import com.snapchat.android.model.server.chat.PresenceMessage;
import com.snapchat.android.model.server.chat.ReleaseMessage;
import com.snapchat.android.model.server.chat.SCMessage;
import com.snapchat.android.model.server.chat.SnapStateMessage;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.ui.here.LocalPreview;
import com.snapchat.android.util.ApiHelper;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.PrimitiveUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CashRainEvent;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.NewChatMessageReceivedEvent;
import com.snapchat.android.util.eventbus.PresenceUpdatedEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.squareup.otto.Bus;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.snapchat.android.chat:
//            SendingMailman, ChatMessageReleaser, ChatGapDetector, FeedIconManager, 
//            ConversationUtils

public class ReceivingMailman
{

    private static ReceivingMailman b;
    protected SendingCashManager a;
    private final SendingMailman c;
    private final AndroidNotificationManager d;
    private final ChatMessageReleaser e;
    private final ChatGapDetector f;
    private final FeedIconManager g;
    private final LoadConversationPageTaskExecutor h;

    protected ReceivingMailman(SendingMailman sendingmailman, AndroidNotificationManager androidnotificationmanager, ChatMessageReleaser chatmessagereleaser, ChatGapDetector chatgapdetector, FeedIconManager feediconmanager, LoadConversationPageTaskExecutor loadconversationpagetaskexecutor)
    {
        SnapchatApplication.e().a(this);
        c = sendingmailman;
        d = androidnotificationmanager;
        e = chatmessagereleaser;
        f = chatgapdetector;
        g = feediconmanager;
        h = loadconversationpagetaskexecutor;
    }

    public static ReceivingMailman a()
    {
        com/snapchat/android/chat/ReceivingMailman;
        JVM INSTR monitorenter ;
        ReceivingMailman receivingmailman;
        if (b == null)
        {
            b = new ReceivingMailman(SendingMailman.a(), AndroidNotificationManager.a(), new ChatMessageReleaser(), ChatGapDetector.a(), FeedIconManager.a(), LoadConversationPageTaskExecutor.a());
        }
        receivingmailman = b;
        com/snapchat/android/chat/ReceivingMailman;
        JVM INSTR monitorexit ;
        return receivingmailman;
        Exception exception;
        exception;
        throw exception;
    }

    private Chat a(ChatMessage chatmessage)
    {
        if (com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.TEXT.name().equalsIgnoreCase(chatmessage.getBody().getType()))
        {
            return new ChatText(chatmessage);
        }
        if (com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.MEDIA.name().equalsIgnoreCase(chatmessage.getBody().getType()))
        {
            return new ChatMedia(chatmessage);
        }
        if (com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.DISCOVER_SHARE.name().equalsIgnoreCase(chatmessage.getBody().getType()))
        {
            return new ChatSharedDSnap(chatmessage);
        }
        if (com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.SCREENSHOT.name().equalsIgnoreCase(chatmessage.getBody().getType()))
        {
            return new ChatScreenshot(chatmessage);
        }
        if (com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.HERE_SCREENSHOT.name().equalsIgnoreCase(chatmessage.getBody().getType()))
        {
            return new ChatScreenshot(chatmessage);
        } else
        {
            return new ChatUnknown(chatmessage);
        }
    }

    private void a(ChatConversation chatconversation, CashRainMessage cashrainmessage)
    {
        f.b(chatconversation, cashrainmessage.getHeader().getConnSeqNum());
        BusProvider.a().a(new CashRainEvent(chatconversation, cashrainmessage.getCreatedAt(), cashrainmessage.getCount()));
    }

    private void a(ChatConversation chatconversation, CashStateMessage cashstatemessage)
    {
        Timber.b("ReceivingMailman", "CASH-LOG: Got a state change message ", new Object[] {
            chatconversation.u()
        });
        if (chatconversation.aC())
        {
            chatconversation.n(false);
        }
        a.a(chatconversation, cashstatemessage.getTransactionId());
    }

    private void a(ChatConversation chatconversation, MessageStateMessage messagestatemessage)
    {
        Chat chat = ChatUtils.a(chatconversation, messagestatemessage, true);
        f.b(chatconversation, messagestatemessage.getHeader().getConnSeqNum());
        if (chat == null)
        {
            Timber.e("ReceivingMailman", (new StringBuilder()).append("chat is null. Conversation: ").append(chatconversation.a()).toString(), new Object[0]);
            return;
        } else
        {
            BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u(), chat.d()));
            return;
        }
    }

    private void a(ChatConversation chatconversation, ReleaseMessage releasemessage)
    {
        synchronized (chatconversation.t())
        {
            e.a(chatconversation, releasemessage);
            if (!chatconversation.A())
            {
                e.d(chatconversation);
            }
        }
        f.b(chatconversation, releasemessage.getHeader().getConnSeqNum());
        BusProvider.a().a(new UpdateFeedEvent());
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(ChatConversation chatconversation, SnapStateMessage snapstatemessage)
    {
        SentSnap sentsnap = chatconversation.i(snapstatemessage.getSnapId());
        f.b(chatconversation, snapstatemessage.getHeader().getConnSeqNum());
        if (sentsnap != null && snapstatemessage.isViewed())
        {
            if (snapstatemessage.getScreenshotCount() > 0L && snapstatemessage.isReplayed())
            {
                sentsnap.a(com.snapchat.android.model.Snap.ClientSnapStatus.SENT_AND_REPLAYED_AND_SCREENSHOTTED);
            } else
            if (snapstatemessage.getScreenshotCount() > 0L)
            {
                sentsnap.a(com.snapchat.android.model.Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED);
            } else
            if (snapstatemessage.isReplayed())
            {
                sentsnap.a(com.snapchat.android.model.Snap.ClientSnapStatus.SENT_AND_REPLAYED);
            } else
            {
                sentsnap.a(com.snapchat.android.model.Snap.ClientSnapStatus.SENT_AND_OPENED);
            }
            sentsnap.b(snapstatemessage.getTimestamp());
            g.a(chatconversation, false);
            BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u(), sentsnap.d()));
            BusProvider.a().a(new UpdateFeedEvent());
        }
    }

    public static void b()
    {
        com/snapchat/android/chat/ReceivingMailman;
        JVM INSTR monitorenter ;
        b = null;
        com/snapchat/android/chat/ReceivingMailman;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void a(ChatConversation chatconversation, Chat chat)
    {
        boolean flag = chatconversation.B();
        String s;
        long l;
        if (!flag)
        {
            NotificationTable.a(SnapchatApplication.e(), null, chat.ae(), FriendUtils.d(chat.l(), User.c()), chat.l(), null, chat.d(), com.snapchat.android.notification.AndroidNotificationManager.Type.b.name().toUpperCase(Locale.US), false);
        } else
        {
            chat.c(UserPrefs.aO());
        }
        s = chatconversation.u();
        l = chat.i();
        if (f.a(s, l))
        {
            chatconversation.a(chat);
            if (chatconversation.I() && f.b(s, l) && f.a(s, l))
            {
                chatconversation.b(f.a(s));
            }
            chatconversation.K();
            if (!flag)
            {
                chatconversation.g(true);
                d.b(SnapchatApplication.e(), com.snapchat.android.notification.AndroidNotificationManager.Type.b);
            }
            g.a(chatconversation, true);
            return;
        } else
        {
            chatconversation.a(chat);
            return;
        }
    }

    protected void a(ChatConversation chatconversation, ChatMessage chatmessage)
    {
        if (chatconversation.b(chatmessage) || chatmessage.getSeqNum() <= chatconversation.ab())
        {
            return;
        }
        f.b(chatconversation, chatmessage.getHeader().getConnSeqNum());
        f.a(chatconversation, chatmessage.getSeqNum());
        chatconversation.e(chatmessage.getSeqNum());
        a(chatconversation, a(chatmessage));
        if (chatconversation.aC())
        {
            chatconversation.n(false);
        }
        BusProvider.a().a(new NewChatMessageReceivedEvent());
        BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u(), true));
    }

    protected void a(ChatConversation chatconversation, ConversationMessageResponse conversationmessageresponse)
    {
        ConversationMessage conversationmessage = chatconversation.h(conversationmessageresponse.getAckId());
        if (conversationmessage == null) goto _L2; else goto _L1
_L1:
        c.a(conversationmessage, conversationmessageresponse);
        chatconversation.b(conversationmessage);
        if (!conversationmessageresponse.isSuccessful()) goto _L4; else goto _L3
_L3:
        if (!conversationmessage.getType().equals("chat_message")) goto _L6; else goto _L5
_L5:
        Chat chat = chatconversation.g(conversationmessageresponse.getAckId());
        if (chat != null)
        {
            long l = conversationmessageresponse.getTimestamp();
            chat.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENT);
            chat.c(l);
            chatconversation.c(l);
            ((ChatMessage)conversationmessage).setTimestamp(l);
        }
        chatconversation.m(((ChatMessage)conversationmessage).getChatMessageId());
        d.a(SnapchatApplication.e(), true);
        if (chat != null)
        {
            BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u(), chat.d()));
        } else
        {
            BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u()));
        }
_L7:
        Timber.f("ReceivingMailman", "CHAT-LOG: SUCCEEDED sending message %s", new Object[] {
            conversationmessage
        });
_L2:
        return;
_L6:
        if (conversationmessage.getType().equals("message_state"))
        {
            ChatUtils.a(chatconversation, (MessageStateMessage)conversationmessage, true);
        } else
        if (conversationmessage.getType().equals("message_release"))
        {
            chatconversation.a((ReleaseMessage)conversationmessage);
        }
        if (true) goto _L7; else goto _L4
_L4:
label0:
        {
            if (conversationmessage instanceof ChatMessage)
            {
                chatconversation.l();
            }
            if (com.snapchat.android.model.server.chat.ConversationMessageResponse.FAILURE_REASON.NEED_AUTHENTICATION.name().equalsIgnoreCase(conversationmessageresponse.getFailureReason()))
            {
                com.snapchat.android.model.server.chat.SignedPayload signedpayload = chatconversation.h();
                if (signedpayload == null)
                {
                    break label0;
                }
                conversationmessage.getHeader().setAuth(signedpayload);
            }
            Object aobj[] = new Object[2];
            aobj[0] = conversationmessage;
            aobj[1] = conversationmessageresponse.getFailureReason();
            Timber.f("ReceivingMailman", "CHAT-LOG: FAILED sending message %s with reason %s", aobj);
            c.b(chatconversation, conversationmessage);
            return;
        }
        c.a(chatconversation, conversationmessage, true);
        return;
    }

    public void a(ChatConversation chatconversation, PresenceMessage presencemessage)
    {
        String s = chatconversation.b();
        String s1 = chatconversation.c();
        Map map = presencemessage.getPresences();
        boolean flag = PrimitiveUtils.a((Boolean)map.get(s1));
        boolean flag1 = presencemessage.supportsHere();
        chatconversation.e(flag);
        chatconversation.f(flag1);
        if (flag && flag1 && ApiHelper.b && LocalPreview.a())
        {
            chatconversation.a(presencemessage.getHereAuth());
        } else
        {
            chatconversation.a(null);
        }
        if (map.containsKey(s) && chatconversation.B() != PrimitiveUtils.a((Boolean)map.get(s)))
        {
            c.a(chatconversation, chatconversation.B(), flag, chatconversation.z());
        }
        f.b(chatconversation, presencemessage.getHeader().getConnSeqNum());
        BusProvider.a().a(new PresenceUpdatedEvent(s1, presencemessage.isReceivingVideo(), "Received presence message."));
    }

    public void a(SCMessage scmessage)
    {
        String s;
        int i;
        String s1;
        s = null;
        i = 1;
        s1 = scmessage.getType();
        if (!(scmessage instanceof ConnectResponse)) goto _L2; else goto _L1
_L1:
        String s2;
        ConnectResponse connectresponse = (ConnectResponse)scmessage;
        if (connectresponse.isSuccessful())
        {
            ConversationUtils.c();
            Timber.f("ReceivingMailman", "CHAT-LOG: We are connected to TCP gateway", new Object[0]);
        } else
        {
            Object aobj1[] = new Object[i];
            aobj1[0] = connectresponse.getFailureReason();
            Timber.f("ReceivingMailman", "CHAT-LOG: Failed to connect to TCP gateway with reason: %s", aobj1);
        }
        s2 = null;
_L24:
        if (s != null && (s2 == null || FriendUtils.a(s2)))
        {
label0:
            {
                chatconversation = ConversationUtils.a(s);
                if (chatconversation != null)
                {
                    break label0;
                }
                if (scmessage instanceof ChatMessage)
                {
                    h.a(s, false);
                    return;
                }
            }
        }
_L21:
        return;
        j = -1;
        s1.hashCode();
        JVM INSTR lookupswitch 8: default 312
    //                   -1676109860: 487
    //                   -1276666629: 453
    //                   -1214396839: 436
    //                   -111487025: 470
    //                   -85171680: 402
    //                   337189301: 419
    //                   756912416: 504
    //                   1990930565: 522;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L3:
        j;
        JVM INSTR tableswitch 0 7: default 360
    //                   0 540
    //                   1 556
    //                   2 574
    //                   3 590
    //                   4 606
    //                   5 622
    //                   6 640
    //                   7 656;
           goto _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20
_L12:
        k = i;
        i = 0;
_L22:
        if (i != 0)
        {
            chatconversation.S();
        }
        if ((scmessage instanceof ConversationMessage) && k != 0)
        {
            chatconversation.f(((ConversationMessage)scmessage).getHeader().getConnSeqNum());
            return;
        }
          goto _L21
_L8:
        if (s1.equals("chat_message"))
        {
            j = 0;
        }
          goto _L3
_L9:
        if (s1.equals("conversation_message_response"))
        {
            j = i;
        }
          goto _L3
_L6:
        if (s1.equals("message_state"))
        {
            j = 2;
        }
          goto _L3
_L5:
        if (s1.equals("presence"))
        {
            j = 3;
        }
          goto _L3
_L7:
        if (s1.equals("message_release"))
        {
            j = 4;
        }
          goto _L3
_L4:
        if (s1.equals("snap_state"))
        {
            j = 5;
        }
          goto _L3
_L10:
        if (s1.equals("cash_rain"))
        {
            j = 6;
        }
          goto _L3
_L11:
        if (s1.equals("cash_state"))
        {
            j = 7;
        }
          goto _L3
_L13:
        a(chatconversation, (ChatMessage)scmessage);
        k = i;
          goto _L22
_L14:
        a(chatconversation, (ConversationMessageResponse)scmessage);
        k = 0;
        i = 0;
          goto _L22
_L15:
        a(chatconversation, (MessageStateMessage)scmessage);
        k = i;
          goto _L22
_L16:
        a(chatconversation, (PresenceMessage)scmessage);
        k = i;
          goto _L22
_L17:
        a(chatconversation, (ReleaseMessage)scmessage);
        k = i;
          goto _L22
_L18:
        a(chatconversation, (SnapStateMessage)scmessage);
        k = i;
        i = 0;
          goto _L22
_L19:
        a(chatconversation, (CashRainMessage)scmessage);
        k = i;
          goto _L22
_L20:
        a(chatconversation, (CashStateMessage)scmessage);
        k = 0;
        i = 0;
          goto _L22
_L2:
        if (scmessage instanceof ConversationMessage)
        {
            ConversationMessage conversationmessage = (ConversationMessage)scmessage;
            Object aobj[] = new Object[i];
            aobj[0] = conversationmessage;
            Timber.f("ReceivingMailman", "CHAT-LOG: RECEIVED %s", aobj);
            s = conversationmessage.getHeader().getConvId();
            s2 = conversationmessage.getHeader().getFrom();
            continue; /* Loop/switch isn't completed */
        }
        if (TextUtils.equals(s1, "conversation_message_response"))
        {
            String s3 = ((ConversationMessageResponse)scmessage).getConvId();
            ChatConversation chatconversation;
            int j;
            int k;
            if (s3 != null)
            {
                ChatConversation chatconversation1 = ConversationUtils.a(s3);
                if (chatconversation1 != null)
                {
                    s2 = chatconversation1.c();
                    s = s3;
                    continue; /* Loop/switch isn't completed */
                }
            }
            s = s3;
            s2 = null;
            continue; /* Loop/switch isn't completed */
        }
        s2 = null;
        s = null;
        if (true) goto _L24; else goto _L23
_L23:
    }
}
