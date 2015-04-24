// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import android.text.TextUtils;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RecentStoryReplyAnalyticsManager;
import com.snapchat.android.analytics.SendingMailmanAnalytics;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.api.chat.UploadChatMediaTask;
import com.snapchat.android.api2.GetConversationAuthTokenTask;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.cash.SendingCashManager;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatScreenshot;
import com.snapchat.android.model.chat.ChatText;
import com.snapchat.android.model.server.cash.CashRainMessage;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.model.server.chat.ConversationMessage;
import com.snapchat.android.model.server.chat.ConversationMessageResponse;
import com.snapchat.android.model.server.chat.MessageStateMessage;
import com.snapchat.android.model.server.chat.PresenceMessage;
import com.snapchat.android.model.server.chat.ReleaseMessage;
import com.snapchat.android.model.server.chat.SnapStateMessage;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.EnumUtils;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.chat.SecureChatBatchedMessagesManager;
import com.snapchat.android.util.chat.SecureChatService;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.ScrollFeedToTopEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.snapchat.android.chat:
//            FeedIconManager, ChatConnectionMonitor

public class SendingMailman
{

    private static SendingMailman l;
    protected SendingCashManager a;
    private final ConcurrentHashMap b;
    private final List c;
    private final Map d;
    private final SendingMailmanAnalytics e;
    private final SecureChatBatchedMessagesManager f;
    private final AndroidNotificationManager g;
    private final SnapWomb h;
    private final FeedIconManager i;
    private final LoadConversationPageTaskExecutor j;
    private final RecentStoryReplyAnalyticsManager k;

    private SendingMailman()
    {
        this(SecureChatBatchedMessagesManager.a(), AndroidNotificationManager.a(), SnapWomb.a(), FeedIconManager.a(), LoadConversationPageTaskExecutor.a(), RecentStoryReplyAnalyticsManager.a());
    }

    protected SendingMailman(SecureChatBatchedMessagesManager securechatbatchedmessagesmanager, AndroidNotificationManager androidnotificationmanager, SnapWomb snapwomb, FeedIconManager feediconmanager, LoadConversationPageTaskExecutor loadconversationpagetaskexecutor, RecentStoryReplyAnalyticsManager recentstoryreplyanalyticsmanager)
    {
        b = new ConcurrentHashMap();
        c = new ArrayList();
        d = new HashMap();
        e = new SendingMailmanAnalytics();
        SnapchatApplication.e().a(this);
        f = securechatbatchedmessagesmanager;
        g = androidnotificationmanager;
        h = snapwomb;
        i = feediconmanager;
        j = loadconversationpagetaskexecutor;
        k = recentstoryreplyanalyticsmanager;
    }

    static SendingMailmanAnalytics a(SendingMailman sendingmailman)
    {
        return sendingmailman.e;
    }

    public static SendingMailman a()
    {
        com/snapchat/android/chat/SendingMailman;
        JVM INSTR monitorenter ;
        SendingMailman sendingmailman;
        if (l == null)
        {
            l = new SendingMailman();
        }
        sendingmailman = l;
        com/snapchat/android/chat/SendingMailman;
        JVM INSTR monitorexit ;
        return sendingmailman;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b()
    {
        com/snapchat/android/chat/SendingMailman;
        JVM INSTR monitorenter ;
        l = null;
        com/snapchat/android/chat/SendingMailman;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(SentSnap sentsnap)
    {
        sentsnap.w();
        return;
        Object obj;
        obj;
_L2:
        sentsnap.s();
        AlertDialogUtils.a(0x7f0c00f0, SnapchatApplication.e());
        (new ErrorMetric(((Exception) (obj)).getMessage())).a(((Throwable) (obj))).c();
        return;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(ChatConversation chatconversation)
    {
        List list = chatconversation.t();
        list;
        JVM INSTR monitorenter ;
        ArrayList arraylist1;
        Iterator iterator;
        ArrayList arraylist = new ArrayList(list);
        arraylist1 = new ArrayList();
        iterator = arraylist.iterator();
_L3:
        ChatFeedItem chatfeeditem;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_162;
            }
            chatfeeditem = (ChatFeedItem)iterator.next();
        } while (!chatfeeditem.W() || !chatfeeditem.Y());
        if (!(chatfeeditem instanceof SentSnap)) goto _L2; else goto _L1
_L1:
        a((SentSnap)chatfeeditem);
          goto _L3
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (!(chatfeeditem instanceof Chat) || !TextUtils.equals(chatfeeditem.l(), chatconversation.b())) goto _L5; else goto _L4
_L4:
        a(chatconversation, (Chat)chatfeeditem, true, false);
          goto _L3
_L5:
        if (!(chatfeeditem instanceof CashFeedItem)) goto _L3; else goto _L6
_L6:
        arraylist1.add((CashFeedItem)chatfeeditem);
          goto _L3
        a.a(chatconversation, arraylist1);
        list;
        JVM INSTR monitorexit ;
        BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u()));
        return;
    }

    public void a(ChatConversation chatconversation, long l1)
    {
        List list;
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(l1);
        Timber.f("SendingMailman", "CHAT-LOG: RETRY sending chat messages above seqNum: %d", aobj);
        list = chatconversation.t();
        String s = chatconversation.b();
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = list.iterator();
_L2:
        Chat chat;
        ChatMessage chatmessage;
        do
        {
            do
            {
                ChatFeedItem chatfeeditem;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break MISSING_BLOCK_LABEL_139;
                    }
                    chatfeeditem = (ChatFeedItem)iterator.next();
                } while (!(chatfeeditem instanceof Chat));
                chat = (Chat)chatfeeditem;
            } while (!chat.l().equals(s));
            chatmessage = chat.f();
        } while (chatmessage == null);
        if (chatmessage.getSeqNum() <= l1) goto _L2; else goto _L1
_L1:
        a(chatconversation, chat, false, false);
          goto _L2
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        d(chatconversation);
        return;
    }

    public void a(ChatConversation chatconversation, long l1, long l2)
    {
        String s = UserPrefs.k();
        if (s == null)
        {
            return;
        } else
        {
            a(chatconversation, ((ConversationMessage) ((new com.snapchat.android.model.server.cash.CashRainMessage.Builder(s, chatconversation.aj(), chatconversation.h())).setCount(l1).setCreatedAt(l2).build())));
            return;
        }
    }

    public void a(ChatConversation chatconversation, ReceivedSnap receivedsnap)
    {
        String s = UserPrefs.k();
        if (s == null)
        {
            return;
        }
        String s1 = SnapUtils.b(receivedsnap.ak());
        com.snapchat.android.model.server.chat.SnapStateMessage.Builder builder = (new com.snapchat.android.model.server.chat.SnapStateMessage.Builder(s, chatconversation.aj(), chatconversation.h())).setSnapId(s1).setViewed(receivedsnap.F()).setReplayed(receivedsnap.A());
        long l1;
        if (receivedsnap.H())
        {
            l1 = 1L;
        } else
        {
            l1 = 0L;
        }
        a(chatconversation, ((ConversationMessage) (builder.setScreenshotCount(l1).setTimestamp(chatconversation.a(System.currentTimeMillis())).build())));
    }

    protected void a(ChatConversation chatconversation, Chat chat)
    {
        chat.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENDING);
        chatconversation.l(chat.d());
        ChatMessage chatmessage = chat.f();
        e.a(chatmessage, chatconversation.aE());
        AnalyticsEvents.h(chatmessage.getType());
        if (chatconversation.F() || chatconversation.p() != com.snapchat.android.model.chat.ChatConversation.SequenceNumberState.UPDATED)
        {
            Timber.f("SendingMailman", "CHAT-LOG: ADDING message to pending chat messages because sequence number is not updated (sendChat): %s", new Object[] {
                chatmessage
            });
            a(chatconversation, chatmessage);
            f(chatconversation);
        } else
        {
            long l1 = chatconversation.n();
            chatmessage.setSeqNum(l1);
            chat.b(l1);
            a(chatconversation, ((ConversationMessage) (chatmessage)));
        }
        if (chatconversation.aC())
        {
            chatconversation.n(false);
        }
        chatconversation.K();
        i.a(chatconversation, false);
        BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u(), true));
        BusProvider.a().a(new ScrollFeedToTopEvent());
        k.c();
    }

    public void a(ChatConversation chatconversation, Chat chat, int i1, boolean flag)
    {
        String s = UserPrefs.k();
        if (s == null)
        {
            return;
        }
        com.snapchat.android.model.server.chat.MessageStateMessage.Builder builder = (new com.snapchat.android.model.server.chat.MessageStateMessage.Builder(s, chatconversation.aj(), chatconversation.h())).setChatMessageId(chat.d());
        String s1;
        MessageStateMessage messagestatemessage;
        if (flag)
        {
            s1 = "saved";
        } else
        {
            s1 = "unsaved";
        }
        messagestatemessage = builder.setState(s1).setVersion(i1).build();
        chat.b(messagestatemessage.getId());
        a(chatconversation, ((ConversationMessage) (messagestatemessage)));
    }

    public void a(ChatConversation chatconversation, Chat chat, boolean flag, boolean flag1)
    {
        if (chat.K() != com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENT) goto _L2; else goto _L1
_L1:
        String s;
        return;
_L2:
        if ((s = UserPrefs.k()) == null) goto _L1; else goto _L3
_L3:
        long l1;
        ChatMessage chatmessage;
        com.snapchat.android.model.server.chat.SignedPayload signedpayload;
        l1 = chatconversation.a(System.currentTimeMillis());
        chatmessage = chat.f();
        signedpayload = chatconversation.h();
        if (chatmessage != null) goto _L5; else goto _L4
_L4:
        ChatMedia chatmedia;
label0:
        {
            if (!(chat instanceof ChatMedia))
            {
                break MISSING_BLOCK_LABEL_417;
            }
            chatmedia = (ChatMedia)chat;
            if (chatmedia.D() != null)
            {
                break label0;
            }
            chatconversation.b(chatmedia);
            AnnotatedMediabryo annotatedmediabryo = (AnnotatedMediabryo)h.i().get(chatmedia.d());
            if (annotatedmediabryo == null)
            {
                AlertDialogUtils.a(0x7f0c00f0, SnapchatApplication.e());
            } else
            {
                try
                {
                    (new UploadChatMediaTask(annotatedmediabryo)).executeOnExecutor(ScExecutors.b, new String[0]);
                }
                catch (com.snapchat.android.api.UploadMediaTask.UploadMediaException uploadmediaexception)
                {
                    AlertDialogUtils.a(0x7f0c00f0, SnapchatApplication.e());
                }
            }
            if (flag1)
            {
                BusProvider.a().a(new UpdateFeedEvent());
                BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u()));
                return;
            }
        }
          goto _L1
        com.snapchat.android.model.server.chat.ChatMessage.MessageBody messagebody;
        com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Media media = (new com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Media.Builder()).setIv(chatmedia.F()).setKey(chatmedia.E()).setMediaId(chatmedia.D()).build();
        messagebody = (new com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Builder()).setType(com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.MEDIA).setMedia(media).build();
_L6:
        chatmessage = (new com.snapchat.android.model.server.chat.ChatMessage.Builder(s, chatconversation.aj(), signedpayload)).setChatMessageId(chat.d()).setMessageBody(messagebody).setTimestamp(l1).build();
        chat.b(chatmessage.getId());
        chat.a(chatmessage);
        chat.c(l1);
_L5:
        chatmessage.getHeader().setAuth(signedpayload);
        chat.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENDING);
        if (flag)
        {
            chatmessage.setTimestamp(l1);
            chat.c(l1);
        }
        chatconversation.a(chatmessage);
        chatmessage.setRetried(true);
        if (chatconversation.p() != com.snapchat.android.model.chat.ChatConversation.SequenceNumberState.UPDATED)
        {
            Timber.f("SendingMailman", "CHAT-LOG: ADDING message to pending chat messages because sequence number is not updated (retrySendingChat): %s", new Object[] {
                chatmessage
            });
            a(chatconversation, chatmessage);
            f(chatconversation);
        } else
        {
            long l2 = chatconversation.n();
            chatmessage.setSeqNum(l2);
            chat.b(l2);
            a(chatconversation, ((ConversationMessage) (chatmessage)));
        }
        if (flag1)
        {
            BusProvider.a().a(new UpdateFeedEvent());
            BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u()));
            return;
        }
          goto _L1
        if (chat instanceof ChatText)
        {
            messagebody = (new com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Builder()).setType(com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.TEXT).setText(chat.ap()).build();
        } else
        if (chat instanceof ChatScreenshot)
        {
            messagebody = (new com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Builder()).setType(com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.SCREENSHOT).build();
        } else
        {
            throw new RuntimeException((new StringBuilder()).append("Unknown chat type (well this should never happen...): ").append(chat).toString());
        }
          goto _L6
    }

    public void a(ChatConversation chatconversation, ChatMedia chatmedia)
    {
        chatmedia.c(chatconversation.a(chatmedia.ae()));
        com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Media media = (new com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Media.Builder()).setMediaId(chatmedia.D()).setKey(chatmedia.E()).setIv(chatmedia.F()).build();
        com.snapchat.android.model.server.chat.ChatMessage.MessageBody messagebody = (new com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Builder()).setType(com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.MEDIA).setMedia(media).build();
        ChatMessage chatmessage = (new com.snapchat.android.model.server.chat.ChatMessage.Builder(chatmedia.l(), chatmedia.m(), chatconversation.h())).setMessageBody(messagebody).setChatMessageId(chatmedia.d()).setTimestamp(chatmedia.ae()).build();
        chatmedia.b(chatmessage.getId());
        chatmedia.a(chatmessage);
        a(chatconversation, ((Chat) (chatmedia)));
    }

    public void a(ChatConversation chatconversation, ChatScreenshot chatscreenshot)
    {
        String s = UserPrefs.k();
        if (s == null)
        {
            return;
        } else
        {
            chatscreenshot.c(chatconversation.a(chatscreenshot.ae()));
            chatconversation.a(chatscreenshot);
            com.snapchat.android.model.server.chat.ChatMessage.MessageBody messagebody = (new com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Builder()).setType(com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.SCREENSHOT).build();
            ChatMessage chatmessage = (new com.snapchat.android.model.server.chat.ChatMessage.Builder(s, chatconversation.aj(), chatconversation.h())).setChatMessageId(chatscreenshot.d()).setMessageBody(messagebody).setTimestamp(chatscreenshot.ae()).build();
            chatscreenshot.b(chatmessage.getId());
            chatscreenshot.a(chatmessage);
            a(chatconversation, ((Chat) (chatscreenshot)));
            return;
        }
    }

    protected void a(ChatConversation chatconversation, ChatMessage chatmessage)
    {
        Object obj;
        obj = (List)b.get(chatconversation);
        if (obj == null)
        {
            obj = new ArrayList();
            b.put(chatconversation, obj);
        }
        obj;
        JVM INSTR monitorenter ;
        ((List) (obj)).add(chatmessage);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(ChatConversation chatconversation, ConversationMessage conversationmessage)
    {
        com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback = new com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback(conversationmessage, chatconversation) {

            final ConversationMessage a;
            final ChatConversation b;
            final SendingMailman c;

            public void a(boolean flag, com.snapchat.android.util.chat.SecureChatService.Protocol protocol, com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status status, String s)
            {
                SendingMailman.a(c).a(a, flag, protocol);
                c.a(b, a, flag, protocol, status, s);
            }

            
            {
                c = SendingMailman.this;
                a = conversationmessage;
                b = chatconversation;
                super();
            }
        };
        if (ChatUtils.a(conversationmessage) && !FriendUtils.a(chatconversation.c()))
        {
            securechatwritecompletedcallback.a(false, com.snapchat.android.util.chat.SecureChatService.Protocol.a, com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.c, "");
        } else
        {
            c(chatconversation);
            com.snapchat.android.model.server.chat.ConversationMessage.Header header = conversationmessage.getHeader();
            header.setConnSeqNum(chatconversation.o());
            chatconversation.a(conversationmessage);
            com.snapchat.android.model.server.chat.SignedPayload signedpayload = chatconversation.h();
            SecureChatService securechatservice;
            if (header.getAuth() == null && signedpayload != null)
            {
                header.setAuth(signedpayload);
            } else
            if (signedpayload == null)
            {
                (new GetConversationAuthTokenTask(chatconversation.u())).g();
                securechatwritecompletedcallback.a(false, com.snapchat.android.util.chat.SecureChatService.Protocol.a, com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.c, "");
                return;
            }
            securechatservice = LandingPageActivity.t();
            if (securechatservice == null)
            {
                if (conversationmessage.canSendOverHTTP())
                {
                    Timber.f("SendingMailman", "CHAT-LOG: Adding message to pending messages because SecureChatService is null %s", new Object[] {
                        conversationmessage
                    });
                    a(conversationmessage, securechatwritecompletedcallback);
                    return;
                }
            } else
            {
                if ((conversationmessage instanceof ChatMessage) && ChatConnectionMonitor.a().f())
                {
                    chatconversation.k();
                }
                securechatservice.a(conversationmessage, securechatwritecompletedcallback);
                return;
            }
        }
    }

    protected void a(ChatConversation chatconversation, ConversationMessage conversationmessage, com.snapchat.android.util.chat.SecureChatService.Protocol protocol)
    {
        if (conversationmessage.needsACK() && protocol != com.snapchat.android.util.chat.SecureChatService.Protocol.a) goto _L2; else goto _L1
_L1:
        Timber.f("SendingMailman", "CHAT-LOG: SUCCEEDED sending message %s", new Object[] {
            conversationmessage
        });
        chatconversation.b(conversationmessage);
        if (!(conversationmessage instanceof ChatMessage)) goto _L4; else goto _L3
_L3:
        boolean flag;
        ChatMessage chatmessage = (ChatMessage)conversationmessage;
        String s = chatmessage.getChatMessageId();
        Chat chat = chatconversation.f(s);
        if (chat != null)
        {
            chat.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENT);
        }
        chatconversation.c(chatmessage.getTimestamp());
        chatconversation.m(s);
        g.a(SnapchatApplication.e(), true);
        flag = true;
_L6:
        if (flag)
        {
            BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u(), conversationmessage.getId()));
        }
_L2:
        return;
_L4:
        if (conversationmessage instanceof ReleaseMessage)
        {
            chatconversation.a((ReleaseMessage)conversationmessage);
            if (!((ReleaseMessage)conversationmessage).getReleaseType().equals(EnumUtils.a(com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.DELETE)))
            {
                flag = false;
                continue; /* Loop/switch isn't completed */
            }
        } else
        if ((conversationmessage instanceof PresenceMessage) || (conversationmessage instanceof CashRainMessage) || (conversationmessage instanceof SnapStateMessage))
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        flag = true;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void a(ChatConversation chatconversation, ConversationMessage conversationmessage, com.snapchat.android.util.chat.SecureChatService.Protocol protocol, com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status status, String s)
    {
        Object aobj[] = new Object[3];
        aobj[0] = conversationmessage;
        aobj[1] = status.name();
        aobj[2] = s;
        Timber.f("SendingMailman", "CHAT-LOG: FAILED sending message %s with status %s and message: %s", aobj);
        if ((conversationmessage instanceof ChatMessage) && protocol == com.snapchat.android.util.chat.SecureChatService.Protocol.b)
        {
            chatconversation.l();
        }
        chatconversation.b(conversationmessage);
        static class _cls3
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.values().length];
                try
                {
                    a[com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.c.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.e.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls3.a[status.ordinal()];
        JVM INSTR tableswitch 1 3: default 96
    //                   1 172
    //                   2 226
    //                   3 171;
           goto _L1 _L2 _L3 _L4
_L1:
        if (!(conversationmessage instanceof ChatMessage) || protocol != com.snapchat.android.util.chat.SecureChatService.Protocol.a) goto _L6; else goto _L5
_L5:
        if (status == com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.b && conversationmessage.isRetried())
        {
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c0132));
        }
        chatconversation.L();
        a(chatconversation, conversationmessage, true);
        e(chatconversation);
        g.a(SnapchatApplication.e(), false);
_L4:
        return;
_L2:
        if (conversationmessage instanceof ChatMessage)
        {
            Friend friend = FriendUtils.a((String)conversationmessage.getHeader().getTo().get(0), User.c());
            g.a(SnapchatApplication.e(), friend.q());
        }
        a(chatconversation, conversationmessage, true);
        return;
_L3:
        if (!(conversationmessage instanceof ChatMessage)) goto _L4; else goto _L7
_L7:
        a(chatconversation, (ChatMessage)conversationmessage);
        return;
_L6:
        b(chatconversation, conversationmessage);
        return;
    }

    public void a(ChatConversation chatconversation, ConversationMessage conversationmessage, boolean flag)
    {
        if (!(conversationmessage instanceof ChatMessage)) goto _L2; else goto _L1
_L1:
        Chat chat;
        ChatMessage chatmessage = (ChatMessage)conversationmessage;
        chat = chatconversation.f(chatmessage.getChatMessageId());
        if (chat != null)
        {
            chat.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.FAILED);
        }
        chatconversation.c(chatmessage);
        g.a(SnapchatApplication.e(), false);
_L4:
        if (flag)
        {
            i.a(chatconversation, false);
            BusProvider.a().a(new UpdateFeedEvent());
            if (chat != null)
            {
                BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u(), chat.d()));
            }
        }
        return;
_L2:
        if (conversationmessage instanceof MessageStateMessage)
        {
            chat = ChatUtils.a(chatconversation, (MessageStateMessage)conversationmessage, false);
            continue; /* Loop/switch isn't completed */
        }
        if (!(conversationmessage instanceof ReleaseMessage))
        {
            break; /* Loop/switch isn't completed */
        }
        chatconversation.b((ReleaseMessage)conversationmessage);
        chat = null;
        if (true) goto _L4; else goto _L3
_L3:
        boolean flag1 = conversationmessage instanceof PresenceMessage;
        chat = null;
        if (flag1)
        {
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    protected void a(ChatConversation chatconversation, ConversationMessage conversationmessage, boolean flag, com.snapchat.android.util.chat.SecureChatService.Protocol protocol, com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status status, String s)
    {
        if (flag)
        {
            a(chatconversation, conversationmessage, protocol);
            return;
        } else
        {
            a(chatconversation, conversationmessage, protocol, status, s);
            return;
        }
    }

    public void a(ChatConversation chatconversation, String s)
    {
        String s1;
        if (!TextUtils.isEmpty(s))
        {
            if ((s1 = UserPrefs.k()) != null)
            {
                ChatText chattext = (new com.snapchat.android.model.chat.ChatText.Builder(chatconversation.b(), chatconversation.c())).a(s).a();
                chattext.c(chatconversation.a(chattext.ae()));
                chatconversation.a(chattext);
                com.snapchat.android.model.server.chat.ChatMessage.MessageBody messagebody = (new com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Builder()).setType(com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.TEXT).setText(chattext.ap()).build();
                ChatMessage chatmessage = (new com.snapchat.android.model.server.chat.ChatMessage.Builder(s1, chatconversation.aj(), chatconversation.h())).setChatMessageId(chattext.d()).setMessageBody(messagebody).setTimestamp(chattext.ae()).build();
                chattext.b(chatmessage.getId());
                chattext.a(chatmessage);
                a(chatconversation, ((Chat) (chattext)));
                return;
            }
        }
    }

    public void a(ChatConversation chatconversation, Map map, Map map1, com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType releasetype)
    {
        String s;
        if (!map.isEmpty() || !map1.isEmpty())
        {
            if ((s = UserPrefs.k()) != null)
            {
                a(chatconversation, ((ConversationMessage) ((new com.snapchat.android.model.server.chat.ReleaseMessage.Builder(s, chatconversation.aj(), chatconversation.h())).setReleaseType(releasetype).setKnownChatSequenceNumbers(map).setKnownReceivedSnapsTs(map1).build())));
                return;
            }
        }
    }

    public void a(ChatConversation chatconversation, boolean flag, boolean flag1, boolean flag2)
    {
        String s = UserPrefs.k();
        if (s == null)
        {
            return;
        } else
        {
            TreeMap treemap = new TreeMap();
            treemap.put(s, Boolean.valueOf(flag));
            treemap.put(chatconversation.c(), Boolean.valueOf(flag1));
            a(chatconversation, ((ConversationMessage) ((new com.snapchat.android.model.server.chat.PresenceMessage.Builder(s, chatconversation.aj(), chatconversation.h())).setPresences(treemap).setIsDisplayingVideo(flag2).build())));
            return;
        }
    }

    public void a(ConversationMessage conversationmessage, ConversationMessageResponse conversationmessageresponse)
    {
        e.a(conversationmessage, conversationmessageresponse);
    }

    public void a(ConversationMessage conversationmessage, com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback)
    {
        if (!c.contains(conversationmessage))
        {
            c.add(conversationmessage);
            d.put(conversationmessage.getId(), securechatwritecompletedcallback);
        }
    }

    public void a(List list)
    {
        ChatConversation chatconversation;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b(chatconversation))
        {
            chatconversation = (ChatConversation)iterator.next();
            chatconversation.H();
        }

    }

    public void a(boolean flag)
    {
        ArrayList arraylist = new ArrayList(c);
        c.clear();
        HashMap hashmap = new HashMap(d);
        d.clear();
        SecureChatService securechatservice = LandingPageActivity.t();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            ConversationMessage conversationmessage = (ConversationMessage)iterator.next();
            com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback = (com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback)hashmap.get(conversationmessage.getId());
            if (securechatservice == null || flag)
            {
                f.a(conversationmessage, securechatwritecompletedcallback);
            } else
            {
                securechatservice.a(conversationmessage, securechatwritecompletedcallback);
            }
        }

    }

    public void b(ChatConversation chatconversation)
    {
        ArrayList arraylist = new ArrayList();
        List list = chatconversation.t();
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
            if ((chatfeeditem instanceof ChatScreenshot) && chatfeeditem.W())
            {
                arraylist.add((ChatScreenshot)chatfeeditem);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_83;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        for (Iterator iterator1 = arraylist.iterator(); iterator1.hasNext(); a(chatconversation, (ChatScreenshot)iterator1.next(), true, false)) { }
        return;
    }

    public void b(ChatConversation chatconversation, ConversationMessage conversationmessage)
    {
        if (!conversationmessage.isRetried())
        {
            conversationmessage.setRetried(true);
            if (conversationmessage instanceof ChatMessage)
            {
                ChatMessage chatmessage = (ChatMessage)conversationmessage;
                Chat chat = chatconversation.f(chatmessage.getChatMessageId());
                if (chat == null)
                {
                    chatconversation.b(conversationmessage);
                    return;
                }
                long l1 = chatconversation.a(System.currentTimeMillis());
                chat.c(l1);
                chatmessage.setTimestamp(l1);
            }
            conversationmessage.getHeader().setAuth(chatconversation.h());
            a(chatconversation, conversationmessage);
            return;
        } else
        {
            a(chatconversation, conversationmessage, true);
            return;
        }
    }

    public void c()
    {
        a(false);
    }

    public void c(ChatConversation chatconversation)
    {
        Set set = chatconversation.N();
        if (!set.isEmpty()) goto _L2; else goto _L1
_L1:
        com.snapchat.android.model.server.chat.SignedPayload signedpayload;
        return;
_L2:
        if ((signedpayload = chatconversation.h()) != null)
        {
            HashSet hashset = new HashSet(set);
            chatconversation.O();
            Iterator iterator = hashset.iterator();
            while (iterator.hasNext()) 
            {
                ReleaseMessage releasemessage = (ReleaseMessage)iterator.next();
                releasemessage.getHeader().setAuth(signedpayload);
                a(chatconversation, releasemessage);
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void d(ChatConversation chatconversation)
    {
        List list;
        list = (List)b.get(chatconversation);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        list;
        JVM INSTR monitorenter ;
        boolean flag = list.isEmpty();
        ArrayList arraylist;
        arraylist = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        com.snapchat.android.model.chat.ChatConversation.SequenceNumberState sequencenumberstate;
        com.snapchat.android.model.chat.ChatConversation.SequenceNumberState sequencenumberstate1;
        sequencenumberstate = chatconversation.p();
        sequencenumberstate1 = com.snapchat.android.model.chat.ChatConversation.SequenceNumberState.UPDATED;
        arraylist = null;
        if (sequencenumberstate != sequencenumberstate1)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        boolean flag1 = chatconversation.F();
        arraylist = null;
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        arraylist = new ArrayList(list);
        list.clear();
        list;
        JVM INSTR monitorexit ;
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Chat chat = chatconversation.f(((ChatMessage)iterator.next()).getChatMessageId());
            if (chat != null)
            {
                a(chatconversation, chat, false, false);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_152;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        BusProvider.a().a(new UpdateFeedEvent());
        BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u()));
    }

    public void e(ChatConversation chatconversation)
    {
        List list = (List)b.get(chatconversation);
        if (list == null) goto _L2; else goto _L1
_L1:
        list;
        JVM INSTR monitorenter ;
        if (list.isEmpty())
        {
            break MISSING_BLOCK_LABEL_125;
        }
        ArrayList arraylist = new ArrayList(list);
        list.clear();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); a(chatconversation, (ChatMessage)iterator.next(), false)) { }
        break MISSING_BLOCK_LABEL_86;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        i.a(chatconversation, false);
        BusProvider.a().a(new UpdateFeedEvent());
        BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u()));
        list;
        JVM INSTR monitorexit ;
_L2:
    }

    public void f(ChatConversation chatconversation)
    {
        if (chatconversation.p() != com.snapchat.android.model.chat.ChatConversation.SequenceNumberState.NOT_UPDATED)
        {
            return;
        } else
        {
            chatconversation.a(com.snapchat.android.model.chat.ChatConversation.SequenceNumberState.UPDATING);
            j.a(chatconversation.u(), new com.snapchat.android.api2.chat.LoadConversationPageTask.LoadConversationPageTaskCallback(chatconversation) {

                final ChatConversation a;
                final SendingMailman b;

                public void a(boolean flag)
                {
                    if (!flag)
                    {
                        a.a(com.snapchat.android.model.chat.ChatConversation.SequenceNumberState.NOT_UPDATED);
                        b.e(a);
                    }
                }

            
            {
                b = SendingMailman.this;
                a = chatconversation;
                super();
            }
            });
            return;
        }
    }
}
