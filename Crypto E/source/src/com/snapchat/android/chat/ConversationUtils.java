// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import android.text.TextUtils;
import android.util.Pair;
import com.snapchat.android.Timber;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.UnviewedContentCount;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ListViewAdapterList;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

// Referenced classes of package com.snapchat.android.chat:
//            FeedIconManager

public final class ConversationUtils
{

    private ConversationUtils()
    {
    }

    public static Snap a(String s, String s1)
    {
        ChatConversation chatconversation = b(s);
        if (chatconversation == null)
        {
            return null;
        }
        Snap snap;
        synchronized (chatconversation.t())
        {
            Iterator iterator = list.iterator();
            ChatFeedItem chatfeeditem;
            do
            {
                if (!iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_89;
                }
                chatfeeditem = (ChatFeedItem)iterator.next();
            } while (!(chatfeeditem instanceof Snap) || !chatfeeditem.d().equals(s1));
            snap = (Snap)chatfeeditem;
        }
        return snap;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        return null;
    }

    public static ChatConversation a(String s)
    {
        for (Iterator iterator = ChatConversationManager.a().d().iterator(); iterator.hasNext();)
        {
            ChatConversation chatconversation = (ChatConversation)iterator.next();
            if (TextUtils.equals(s, chatconversation.u()))
            {
                return chatconversation;
            }
        }

        return null;
    }

    public static ListViewAdapterList a()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.addAll(ChatConversationManager.a().d());
        User user = User.c();
        if (user != null)
        {
            Iterator iterator = user.l().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Friend friend = (Friend)iterator.next();
                if (!a(friend))
                {
                    arraylist.add(new ChatConversation(UserPrefs.k(), friend.a(), true));
                }
            } while (true);
        }
        return ListViewAdapterList.a(arraylist);
    }

    public static String a(ChatConversation chatconversation)
    {
        int i = 0;
        StringBuilder stringbuilder = new StringBuilder();
        String as[] = chatconversation.c().split(",");
        int j = as.length;
        int k = 0;
        for (; i < j; i++)
        {
            stringbuilder.append(FriendUtils.d(as[i].trim(), User.c()));
            if (++k != as.length)
            {
                stringbuilder.append(", ");
            }
        }

        return stringbuilder.toString();
    }

    public static void a(AnnotatedMediabryo annotatedmediabryo)
    {
        ChatConversation chatconversation;
        SentSnap sentsnap;
        if (User.c() == null)
        {
            Timber.e("ConversationUtils", "User has been logged out", new Object[0]);
            return;
        }
        ChatConversationManager chatconversationmanager = ChatConversationManager.a();
        int i = annotatedmediabryo.D().size();
        if (i > 1)
        {
            chatconversation = chatconversationmanager.b(annotatedmediabryo.E());
        } else
        {
            chatconversation = chatconversationmanager.a(annotatedmediabryo.E());
        }
        if (chatconversation == null)
        {
            Timber.e("ConversationUtils", (new StringBuilder()).append("Conversation is null : Recipients size = ").append(annotatedmediabryo.D().size()).append(", Recipient String = ").append(annotatedmediabryo.E()).toString(), new Object[0]);
            return;
        }
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.model.Mediabryo.SendStatus.values().length];
                try
                {
                    a[com.snapchat.android.model.Mediabryo.SendStatus.SENT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.model.Mediabryo.SendStatus.FAILED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.model.Mediabryo.SendStatus.SENDING.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[com.snapchat.android.model.Mediabryo.SendStatus.SENDING_ON_UPLOAD.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        boolean flag;
        boolean flag1;
        if (annotatedmediabryo.J() != com.snapchat.android.model.Mediabryo.UploadStatus.WILL_UPLOAD_AFTER_SAVE)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag || i == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        chatconversation.o(flag1);
        sentsnap = chatconversation.c(annotatedmediabryo.N());
        if (sentsnap == null)
        {
            sentsnap = new SentSnap(annotatedmediabryo);
        }
        if (i == 1 && !flag)
        {
            sentsnap.a(false);
        } else
        {
            sentsnap.a(true);
        }
        _cls1.a[annotatedmediabryo.K().ordinal()];
        JVM INSTR tableswitch 1 4: default 220
    //                   1 285
    //                   2 294
    //                   3 303
    //                   4 303;
           goto _L1 _L2 _L3 _L4 _L4
_L1:
        FeedIconManager.a().a(chatconversation, false);
        BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u(), sentsnap.d()));
        BusProvider.a().a(new UpdateFeedEvent());
        return;
_L2:
        chatconversation.a(sentsnap);
        continue; /* Loop/switch isn't completed */
_L3:
        chatconversation.b(sentsnap);
        continue; /* Loop/switch isn't completed */
_L4:
        chatconversation.c(sentsnap);
        if (true) goto _L1; else goto _L5
_L5:
    }

    public static boolean a(Friend friend)
    {
        return b(friend.a()) != null;
    }

    public static UnviewedContentCount b()
    {
        Iterator iterator = ChatConversationManager.a().d().iterator();
        int i = 0;
        int j = 0;
        int k = 0;
        while (iterator.hasNext()) 
        {
            ChatConversation chatconversation = (ChatConversation)iterator.next();
            if (chatconversation.ak() || chatconversation.as() || chatconversation.al())
            {
                k++;
            }
            if (chatconversation.ak() && !chatconversation.as() && !chatconversation.al())
            {
                j++;
            }
            int l;
            if (chatconversation.al() && !chatconversation.as() && !chatconversation.ak())
            {
                l = i + 1;
            } else
            {
                l = i;
            }
            i = l;
        }
        return (new com.snapchat.android.model.UnviewedContentCount.Builder()).a(k).b(j).c(i).a();
    }

    public static ChatConversation b(String s)
    {
        if (User.c() == null || s == null)
        {
            return null;
        } else
        {
            return a(ChatUtils.a(s));
        }
    }

    public static Pair c(String s)
    {
        Iterator iterator;
        int i;
        int j;
        iterator = ChatConversationManager.a().d().iterator();
        i = 0;
        j = 0;
_L6:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        List list = ((ChatConversation)iterator.next()).t();
        list;
        JVM INSTR monitorenter ;
        Iterator iterator1 = list.iterator();
_L3:
        ChatFeedItem chatfeeditem;
        if (!iterator1.hasNext())
        {
            break MISSING_BLOCK_LABEL_139;
        }
        chatfeeditem = (ChatFeedItem)iterator1.next();
        if (!(chatfeeditem instanceof Chat)) goto _L2; else goto _L1
_L1:
        Chat chat = (Chat)chatfeeditem;
        if (TextUtils.equals(s, chat.J()) && !chat.at())
        {
            j++;
        }
          goto _L3
_L2:
        if (!(chatfeeditem instanceof ReceivedSnap) || ((ReceivedSnap)chatfeeditem).F()) goto _L3; else goto _L4
_L4:
        i++;
          goto _L3
        list;
        JVM INSTR monitorexit ;
        if (true) goto _L6; else goto _L5
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L5:
        return Pair.create(Integer.valueOf(j), Integer.valueOf(i));
    }

    public static void c()
    {
        for (Iterator iterator = ChatConversationManager.a().d().iterator(); iterator.hasNext(); ((ChatConversation)iterator.next()).Q()) { }
    }

    public static List d()
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = ChatConversationManager.a().d().iterator(); iterator.hasNext(); arraylist.addAll(((ChatConversation)iterator.next()).aF())) { }
        return arraylist;
    }
}
