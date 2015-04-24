// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import com.snapchat.android.util.EnumUtils;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConversationMessage, SignedPayload, SCMessage

public class ChatMessage extends ConversationMessage
{
    public static class Builder extends ConversationMessage.Builder
    {

        private String mChatMessageId;
        private MessageBody mMessageBody;
        private Map mSavedState;
        private long mSeqNum;
        private long mTimestamp;

        public ChatMessage build()
        {
            return new ChatMessage(this);
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

        public Builder setMessageBody(MessageBody messagebody)
        {
            mMessageBody = messagebody;
            return this;
        }

        public Builder setSavedState(Map map)
        {
            mSavedState = map;
            return this;
        }

        public Builder setSeqNum(long l)
        {
            mSeqNum = l;
            return this;
        }

        public Builder setTimestamp(long l)
        {
            mTimestamp = l;
            return this;
        }






        public Builder(String s, List list, SignedPayload signedpayload)
        {
            super("chat_message", s, list, signedpayload);
            mChatMessageId = UUID.randomUUID().toString();
            mTimestamp = System.currentTimeMillis();
        }
    }

    public static class MessageBody
    {

        private List attributes;
        private Media media;
        private String text;
        private String type;

        public List getAttributes()
        {
            return attributes;
        }

        public Media getMedia()
        {
            return media;
        }

        public String getText()
        {
            return text;
        }

        public String getType()
        {
            return type;
        }

        public String toString()
        {
            return (new StringBuilder()).append("MessageBody{media=").append(media).append(", type='").append(type).append('\'').append(", text='").append(text).append('\'').append(", attributes=").append(attributes).append('}').toString();
        }

        public MessageBody(Builder builder)
        {
            media = builder.mMedia;
            type = EnumUtils.a(builder.mType);
            text = builder.mText;
            attributes = builder.mAttributes;
        }
    }

    public static class MessageBody.Attributes
        implements Comparable
    {

        private Attribute attribute;
        private int end;
        private int start;

        public int compareTo(MessageBody.Attributes attributes)
        {
            return start - attributes.start;
        }

        public volatile int compareTo(Object obj)
        {
            return compareTo((MessageBody.Attributes)obj);
        }

        public Attribute getAttribute()
        {
            return attribute;
        }

        public int getEnd()
        {
            return end;
        }

        public int getStart()
        {
            return start;
        }

        public String toString()
        {
            return (new StringBuilder()).append("Attributes{start=").append(start).append(", end=").append(end).append(", attribute=").append(attribute).append('}').toString();
        }

        public MessageBody.Attributes(Builder builder)
        {
            start = builder.mStart;
            end = builder.mEnd;
            attribute = builder.mAttribute;
        }
    }

    public static class MessageBody.Attributes.Attribute
    {

        private String android_href;
        private String href;
        private String ios_href;
        private String type;

        public String getAndroidHref()
        {
            return android_href;
        }

        public String getHref()
        {
            return href;
        }

        public String getIosHref()
        {
            return ios_href;
        }

        public String getType()
        {
            return type;
        }

        public String toString()
        {
            return (new StringBuilder()).append("Attribute{type='").append(type).append('\'').append(", ios_href='").append(ios_href).append('\'').append(", android_href='").append(android_href).append('\'').append(", href='").append(href).append('\'').append('}').toString();
        }

        public MessageBody.Attributes.Attribute(Builder builder)
        {
            type = builder.mType;
            ios_href = builder.mIosHref;
            android_href = builder.mAndroidHref;
            href = builder.mHref;
        }
    }

    public static final class MessageBody.Attributes.Attribute.AttributeType extends Enum
    {

        private static final MessageBody.Attributes.Attribute.AttributeType $VALUES[];
        public static final MessageBody.Attributes.Attribute.AttributeType LINK;

        public static MessageBody.Attributes.Attribute.AttributeType valueOf(String s)
        {
            return (MessageBody.Attributes.Attribute.AttributeType)Enum.valueOf(com/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType, s);
        }

        public static MessageBody.Attributes.Attribute.AttributeType[] values()
        {
            return (MessageBody.Attributes.Attribute.AttributeType[])$VALUES.clone();
        }

        static 
        {
            LINK = new MessageBody.Attributes.Attribute.AttributeType("LINK", 0);
            MessageBody.Attributes.Attribute.AttributeType aattributetype[] = new MessageBody.Attributes.Attribute.AttributeType[1];
            aattributetype[0] = LINK;
            $VALUES = aattributetype;
        }

        private MessageBody.Attributes.Attribute.AttributeType(String s, int i)
        {
            super(s, i);
        }
    }

    public static class MessageBody.Attributes.Attribute.Builder
    {

        private String mAndroidHref;
        private String mHref;
        private String mIosHref;
        private String mType;

        public MessageBody.Attributes.Attribute build()
        {
            return new MessageBody.Attributes.Attribute(this);
        }

        public MessageBody.Attributes.Attribute.Builder setAndroidHref(String s)
        {
            mAndroidHref = s;
            return this;
        }

        public MessageBody.Attributes.Attribute.Builder setHref(String s)
        {
            mHref = s;
            return this;
        }

        public MessageBody.Attributes.Attribute.Builder setIosHref(String s)
        {
            mIosHref = s;
            return this;
        }

        public MessageBody.Attributes.Attribute.Builder setType(String s)
        {
            mType = s;
            return this;
        }





        public MessageBody.Attributes.Attribute.Builder()
        {
        }
    }

    public static class MessageBody.Attributes.Builder
    {

        private MessageBody.Attributes.Attribute mAttribute;
        private int mEnd;
        private int mStart;

        public MessageBody.Attributes build()
        {
            return new MessageBody.Attributes(this);
        }

        public MessageBody.Attributes.Builder setAttribute(MessageBody.Attributes.Attribute attribute)
        {
            mAttribute = attribute;
            return this;
        }

        public MessageBody.Attributes.Builder setEnd(int i)
        {
            mEnd = i;
            return this;
        }

        public MessageBody.Attributes.Builder setStart(int i)
        {
            mStart = i;
            return this;
        }




        public MessageBody.Attributes.Builder()
        {
        }
    }

    public static class MessageBody.Builder
    {

        private List mAttributes;
        private MessageBody.Media mMedia;
        private String mText;
        private MessageBody.Type mType;

        public MessageBody build()
        {
            return new MessageBody(this);
        }

        public MessageBody.Builder setAttributes(List list)
        {
            mAttributes = list;
            return this;
        }

        public MessageBody.Builder setMedia(MessageBody.Media media)
        {
            mMedia = media;
            mType = MessageBody.Type.MEDIA;
            return this;
        }

        public MessageBody.Builder setText(String s)
        {
            mText = s;
            mType = MessageBody.Type.TEXT;
            return this;
        }

        public MessageBody.Builder setType(MessageBody.Type type)
        {
            mType = type;
            return this;
        }





        public MessageBody.Builder()
        {
        }
    }

    public static class MessageBody.Media
    {

        private String iv;
        private String key;
        private String media_id;
        private String url;

        public String getIv()
        {
            return iv;
        }

        public String getKey()
        {
            return key;
        }

        public String getMediaId()
        {
            return media_id;
        }

        public String getUrl()
        {
            return url;
        }

        public String toString()
        {
            return (new StringBuilder()).append("Media{url='").append(url).append('\'').append(", media_id='").append(media_id).append('\'').append(", key='").append(key).append('\'').append(", iv='").append(iv).append('\'').append('}').toString();
        }

        public MessageBody.Media(Builder builder)
        {
            url = builder.mUrl;
            media_id = builder.mMediaId;
            key = builder.mKey;
            iv = builder.mIv;
        }
    }

    public static class MessageBody.Media.Builder
    {

        private String mIv;
        private String mKey;
        private String mMediaId;
        private String mUrl;

        public MessageBody.Media build()
        {
            return new MessageBody.Media(this);
        }

        public MessageBody.Media.Builder setIv(String s)
        {
            mIv = s;
            return this;
        }

        public MessageBody.Media.Builder setKey(String s)
        {
            mKey = s;
            return this;
        }

        public MessageBody.Media.Builder setMediaId(String s)
        {
            mMediaId = s;
            return this;
        }

        public MessageBody.Media.Builder setUrl(String s)
        {
            mUrl = s;
            return this;
        }





        public MessageBody.Media.Builder()
        {
        }
    }

    public static final class MessageBody.Type extends Enum
    {

        private static final MessageBody.Type $VALUES[];
        public static final MessageBody.Type DISCOVER_SHARE;
        public static final MessageBody.Type HERE_SCREENSHOT;
        public static final MessageBody.Type MEDIA;
        public static final MessageBody.Type SCREENSHOT;
        public static final MessageBody.Type TEXT;

        public static MessageBody.Type valueOf(String s)
        {
            return (MessageBody.Type)Enum.valueOf(com/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type, s);
        }

        public static MessageBody.Type[] values()
        {
            return (MessageBody.Type[])$VALUES.clone();
        }

        static 
        {
            TEXT = new MessageBody.Type("TEXT", 0);
            MEDIA = new MessageBody.Type("MEDIA", 1);
            SCREENSHOT = new MessageBody.Type("SCREENSHOT", 2);
            HERE_SCREENSHOT = new MessageBody.Type("HERE_SCREENSHOT", 3);
            DISCOVER_SHARE = new MessageBody.Type("DISCOVER_SHARE", 4);
            MessageBody.Type atype[] = new MessageBody.Type[5];
            atype[0] = TEXT;
            atype[1] = MEDIA;
            atype[2] = SCREENSHOT;
            atype[3] = HERE_SCREENSHOT;
            atype[4] = DISCOVER_SHARE;
            $VALUES = atype;
        }

        private MessageBody.Type(String s, int i)
        {
            super(s, i);
        }
    }

    public static class SavedState
    {

        private boolean saved;
        private int version;

        public int getVersion()
        {
            return version;
        }

        public boolean isSaved()
        {
            return saved;
        }

        public SavedState(Builder builder)
        {
            saved = builder.mSaved;
            version = builder.mVersion;
        }
    }

    public static class SavedState.Builder
    {

        private boolean mSaved;
        private int mVersion;

        public SavedState build()
        {
            return new SavedState(this);
        }

        public SavedState.Builder setSaved(boolean flag)
        {
            mSaved = flag;
            return this;
        }

        public SavedState.Builder setVersion(int i)
        {
            mVersion = i;
            return this;
        }



        public SavedState.Builder()
        {
        }
    }


    public static final String TYPE = "chat_message";
    private final MessageBody body;
    private final String chat_message_id;
    private final Map saved_state;
    private long seq_num;
    private long timestamp;

    private ChatMessage(Builder builder)
    {
        super(builder);
        body = builder.mMessageBody;
        saved_state = builder.mSavedState;
        chat_message_id = builder.mChatMessageId;
        timestamp = builder.mTimestamp;
        seq_num = builder.mSeqNum;
    }


    public boolean canSendOverHTTP()
    {
        return true;
    }

    public MessageBody getBody()
    {
        return body;
    }

    public String getBodyType()
    {
        return body.getType().toUpperCase(Locale.US);
    }

    public String getChatMessageId()
    {
        return chat_message_id;
    }

    public Map getSavedState()
    {
        return saved_state;
    }

    public long getSeqNum()
    {
        return seq_num;
    }

    public long getTimestamp()
    {
        return timestamp;
    }

    public boolean needsACK()
    {
        return true;
    }

    public void setSeqNum(long l)
    {
        seq_num = l;
    }

    public void setTimestamp(long l)
    {
        timestamp = l;
    }

    public String toString()
    {
        JSONObject jsonobject;
        String s1;
        jsonobject = new JSONObject();
        jsonobject.put("type", body.getType());
        if (body.getText() == null)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        s1 = body.getText().substring(0, Math.min(3, body.getText().length()));
_L1:
        jsonobject.put("text", s1);
        jsonobject.put("chat_message_id", chat_message_id);
        jsonobject.put("id", getId());
        jsonobject.put("timestamp", timestamp);
        jsonobject.put("sequence", seq_num);
        jsonobject.put("conversation_id", getHeader().getConvId());
        return (new StringBuilder()).append("ChatMessage").append(jsonobject.toString()).toString();
        s1 = "";
          goto _L1
        JSONException jsonexception;
        jsonexception;
        StringBuilder stringbuilder = (new StringBuilder()).append("ChatMessage{\"type\":\"").append(body.getType()).append("\", \"text\":\"");
        String s;
        if (body.getText() != null)
        {
            s = body.getText().substring(0, Math.min(3, body.getText().length()));
        } else
        {
            s = "";
        }
        return stringbuilder.append(s).append("\", \"chat_message_id\":\"").append(chat_message_id).append("\", \"id\":\"").append(getId()).append("\", \"timestamp\":\"").append(timestamp).append("\", \"sequence\":\"").append(seq_num).append("\", \"conversation_id\":\"").append(getHeader().getConvId()).append("\"}").toString();
    }
}
