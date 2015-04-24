// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            SCMessage

public class ConversationMessageResponse extends SCMessage
{
    public static final class FAILURE_REASON extends Enum
    {

        private static final FAILURE_REASON $VALUES[];
        public static final FAILURE_REASON INTERNAL_ERROR;
        public static final FAILURE_REASON INVALID_MESSAGE;
        public static final FAILURE_REASON NEED_AUTHENTICATION;

        public static FAILURE_REASON valueOf(String s)
        {
            return (FAILURE_REASON)Enum.valueOf(com/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON, s);
        }

        public static FAILURE_REASON[] values()
        {
            return (FAILURE_REASON[])$VALUES.clone();
        }

        static 
        {
            NEED_AUTHENTICATION = new FAILURE_REASON("NEED_AUTHENTICATION", 0);
            INTERNAL_ERROR = new FAILURE_REASON("INTERNAL_ERROR", 1);
            INVALID_MESSAGE = new FAILURE_REASON("INVALID_MESSAGE", 2);
            FAILURE_REASON afailure_reason[] = new FAILURE_REASON[3];
            afailure_reason[0] = NEED_AUTHENTICATION;
            afailure_reason[1] = INTERNAL_ERROR;
            afailure_reason[2] = INVALID_MESSAGE;
            $VALUES = afailure_reason;
        }

        private FAILURE_REASON(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String TYPE = "conversation_message_response";
    private String ack_id;
    private String conv_id;
    private String failure_reason;
    private boolean success;
    private long timestamp;

    public ConversationMessageResponse()
    {
        super("conversation_message_response");
    }

    public String getAckId()
    {
        return ack_id;
    }

    public String getConvId()
    {
        return conv_id;
    }

    public String getFailureReason()
    {
        return failure_reason;
    }

    public long getTimestamp()
    {
        return timestamp;
    }

    public boolean isSuccessful()
    {
        return success;
    }

    public String toString()
    {
        return (new StringBuilder()).append("ConversationMessageResponse{success=").append(success).append(", ack_id='").append(ack_id).append('\'').append(", conv_id='").append(conv_id).append('\'').append(", failure_reason='").append(failure_reason).append('\'').append(", timestamp=").append(timestamp).append('}').toString();
    }
}
