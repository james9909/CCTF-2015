// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.List;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConversationMessage, SignedPayload, SCMessage

public class MessageStateMessage extends ConversationMessage
{
    public static class Builder extends ConversationMessage.Builder
    {

        private String mChatMessageId;
        private String mState;
        private int mVersion;

        public MessageStateMessage build()
        {
            return new MessageStateMessage(this);
        }

        public volatile SCMessage build()
        {
            return build();
        }

        public Builder setChatMessageId(String s)
        {
            mChatMessageId = s;
            return this;
        }

        public Builder setState(String s)
        {
            mState = s;
            return this;
        }

        public Builder setVersion(int i)
        {
            mVersion = i;
            return this;
        }




        public Builder(String s, List list, SignedPayload signedpayload)
        {
            super("message_state", s, list, signedpayload);
        }
    }

    public static final class StateType extends Enum
    {

        private static final StateType $VALUES[];
        public static final StateType SAVED;
        public static final StateType UNSAVED;

        public static StateType valueOf(String s)
        {
            return (StateType)Enum.valueOf(com/snapchat/android/model/server/chat/MessageStateMessage$StateType, s);
        }

        public static StateType[] values()
        {
            return (StateType[])$VALUES.clone();
        }

        static 
        {
            SAVED = new StateType("SAVED", 0);
            UNSAVED = new StateType("UNSAVED", 1);
            StateType astatetype[] = new StateType[2];
            astatetype[0] = SAVED;
            astatetype[1] = UNSAVED;
            $VALUES = astatetype;
        }

        private StateType(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String TYPE = "message_state";
    private String chat_message_id;
    private String state;
    private int version;

    private MessageStateMessage(Builder builder)
    {
        super(builder);
        if (builder.mChatMessageId != null)
        {
            chat_message_id = builder.mChatMessageId;
        } else
        {
            chat_message_id = UUID.randomUUID().toString();
        }
        state = builder.mState;
        version = builder.mVersion;
    }


    public boolean canSendOverHTTP()
    {
        return true;
    }

    public String getChatMessageId()
    {
        return chat_message_id;
    }

    public String getState()
    {
        return state;
    }

    public int getVersion()
    {
        return version;
    }

    public boolean needsACK()
    {
        return true;
    }

    public String toString()
    {
        return (new StringBuilder()).append("MessageStateMessage{chat_message_id='").append(chat_message_id).append('\'').append(", state='").append(state).append('\'').append(", version=").append(version).append('\'').append(", conv_id=").append(getHeader().getConvId()).append('\'').append('}').toString();
    }
}
