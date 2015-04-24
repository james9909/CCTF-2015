// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.chat.ChatMessageReleaser;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatScreenshot;
import com.snapchat.android.model.chat.ChatSharedDSnap;
import com.snapchat.android.model.chat.ChatText;
import com.snapchat.android.model.chat.ChatUnknown;
import com.snapchat.android.model.server.ServerCashTransaction;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.data.gson.GenericSnap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage, SignedPayload

public class ServerChatConversation
{
    public class ChatConversationMessages
    {

        public List messages;
        public SignedPayload messaging_auth;
        final ServerChatConversation this$0;

        public List getMessages()
        {
            return messages;
        }

        public String toString()
        {
            return (new StringBuilder()).append("ChatConversationMessages{messaging_auth=").append(messaging_auth).append(", messages=").append(messages).append('}').toString();
        }

        public ChatConversationMessages()
        {
            this$0 = ServerChatConversation.this;
            super();
        }
    }

    public static class ChatOrSnapMessage
    {

        public ServerCashTransaction cash_transaction;
        public ChatMessage chat_message;
        public String iter_token;
        public GenericSnap snap;

        public String toString()
        {
            return (new StringBuilder()).append("ChatOrSnapMessage{snap=").append(snap).append(", chat_message=").append(chat_message).append(", cash_transaction=").append(cash_transaction).append(", iter_token='").append(iter_token).append('\'').append('}').toString();
        }

        public ChatOrSnapMessage()
        {
        }
    }

    public static class ConversationState
    {

        public Map user_chat_releases;
        public Map user_sequences;
        public Map user_snap_releases;

        public String toString()
        {
            return (new StringBuilder()).append("ConversationState{user_sequences=").append(user_sequences).append(", user_chat_releases=").append(user_chat_releases).append(", user_snap_releases=").append(user_snap_releases).append('}').toString();
        }

        public ConversationState()
        {
        }
    }

    public static class LastChatActions
    {

        public long last_read_timestamp;
        public String last_reader;
        public long last_write_timestamp;
        public String last_write_type;
        public String last_writer;

        public String toString()
        {
            return (new StringBuilder()).append("LastChatActions{last_reader='").append(last_reader).append('\'').append(", last_read_timestamp=").append(last_read_timestamp).append(", last_writer='").append(last_writer).append('\'').append(", last_write_timestamp=").append(last_write_timestamp).append(", last_write_type='").append(last_write_type).append('\'').append('}').toString();
        }

        public LastChatActions()
        {
        }
    }


    private static final String TAG = "ServerChatConversation";
    public ChatConversationMessages conversation_messages;
    public ConversationState conversation_state;
    public String id;
    public String iter_token;
    public ServerCashTransaction last_cash_transaction;
    public LastChatActions last_chat_actions;
    public long last_interaction_ts;
    public GenericSnap last_snap;
    public List participants;
    public List pending_chats_for;
    public List pending_received_snaps;

    public ServerChatConversation()
    {
    }

    public static List getChatMessagesFromServerChatMessages(List list)
    {
        ArrayList arraylist = new ArrayList(list.size());
        String s = UserPrefs.k();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatOrSnapMessage chatorsnapmessage = (ChatOrSnapMessage)iterator.next();
            if (chatorsnapmessage.chat_message != null)
            {
                ChatMessage chatmessage = chatorsnapmessage.chat_message;
                Object obj;
                if (chatmessage.getBody().getType().equalsIgnoreCase(ChatMessage.MessageBody.Type.TEXT.name()))
                {
                    obj = new ChatText(chatmessage);
                } else
                if (chatmessage.getBody().getType().equalsIgnoreCase(ChatMessage.MessageBody.Type.MEDIA.name()))
                {
                    obj = new ChatMedia(chatmessage);
                } else
                if (chatmessage.getBody().getType().equalsIgnoreCase(ChatMessage.MessageBody.Type.DISCOVER_SHARE.name()))
                {
                    obj = new ChatSharedDSnap(chatmessage);
                } else
                if (chatmessage.getBody().getType().equalsIgnoreCase(ChatMessage.MessageBody.Type.SCREENSHOT.name()))
                {
                    obj = new ChatScreenshot(chatmessage);
                } else
                if (chatmessage.getBody().getType().equalsIgnoreCase(ChatMessage.MessageBody.Type.HERE_SCREENSHOT.name()))
                {
                    obj = new ChatScreenshot(chatmessage);
                } else
                {
                    obj = new ChatUnknown(chatmessage);
                }
                ((Chat) (obj)).a(chatorsnapmessage.iter_token);
                arraylist.add(obj);
            } else
            if (chatorsnapmessage.snap != null)
            {
                arraylist.add(SnapUtils.a(chatorsnapmessage.snap));
            } else
            if (chatorsnapmessage.cash_transaction != null)
            {
                CashTransaction cashtransaction = com.snapchat.android.model.CashTransaction.Builder.a(chatorsnapmessage.cash_transaction);
                if (!TextUtils.equals(s, cashtransaction.f()) || cashtransaction.o() != com.snapchat.android.model.CashTransaction.TransactionStatus.INITIATED)
                {
                    CashFeedItem cashfeeditem = new CashFeedItem(cashtransaction);
                    cashfeeditem.a(chatorsnapmessage.iter_token);
                    arraylist.add(cashfeeditem);
                }
            }
        } while (true);
        return arraylist;
    }

    public static ChatConversation getClientChatConversation(ServerChatConversation serverchatconversation)
    {
        return getClientChatConversation(serverchatconversation, true);
    }

    public static ChatConversation getClientChatConversation(ServerChatConversation serverchatconversation, boolean flag)
    {
        String as[];
        String s;
        int i;
        int j;
        as = serverchatconversation.id.split("~");
        s = UserPrefs.k();
        if (s == null)
        {
            return null;
        }
        i = as.length;
        j = 0;
_L3:
        String s1;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        s1 = as[j];
        if (s1.equals(s)) goto _L2; else goto _L1
_L1:
        ChatConversation chatconversation = new ChatConversation(s, s1);
        ChatConversationManager.a().a(chatconversation, serverchatconversation, flag, false);
        if (!chatconversation.A())
        {
            Object aobj[] = new Object[1];
            aobj[0] = chatconversation.u();
            Timber.f("ServerChatConversation", "CHAT-LOG: ServerChatConversation sending release message for %s", aobj);
            (new ChatMessageReleaser()).a(chatconversation, ReleaseMessage.ReleaseType.DELETE);
        }
        return chatconversation;
_L2:
        j++;
          goto _L3
        s1 = s;
          goto _L1
    }

    public String toString()
    {
        return (new StringBuilder()).append("ServerChatConversation{id='").append(id).append('\'').append(", participants=").append(participants).append(", last_snap=").append(last_snap).append(", last_interaction_ts=").append(last_interaction_ts).append(", pending_chats_for=").append(pending_chats_for).append(", pending_received_snaps=").append(pending_received_snaps).append(", conversation_messages=").append(conversation_messages).append(", iter_token='").append(iter_token).append('\'').append(", conversation_state=").append(conversation_state).append('}').toString();
    }
}
