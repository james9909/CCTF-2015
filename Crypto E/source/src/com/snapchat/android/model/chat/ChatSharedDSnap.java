// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.server.chat.ChatMessage;

// Referenced classes of package com.snapchat.android.model.chat:
//            ChatMedia

public class ChatSharedDSnap extends ChatMedia
{
    public static class Builder
    {

        private ChatMessage mChatMessage;

        static ChatMessage a(Builder builder)
        {
            return builder.mChatMessage;
        }

        public Builder a(ChatMessage chatmessage)
        {
            mChatMessage = chatmessage;
            return this;
        }

        public ChatSharedDSnap a()
        {
            return new ChatSharedDSnap(this);
        }

        public Builder()
        {
        }
    }

    public static final class MediaType extends Enum
    {

        private static final MediaType $VALUES[];
        public static final MediaType IMAGE;
        public static final MediaType VIDEO;

        public static MediaType valueOf(String s)
        {
            return (MediaType)Enum.valueOf(com/snapchat/android/model/chat/ChatSharedDSnap$MediaType, s);
        }

        public static MediaType[] values()
        {
            return (MediaType[])$VALUES.clone();
        }

        static 
        {
            IMAGE = new MediaType("IMAGE", 0);
            VIDEO = new MediaType("VIDEO", 1);
            MediaType amediatype[] = new MediaType[2];
            amediatype[0] = IMAGE;
            amediatype[1] = VIDEO;
            $VALUES = amediatype;
        }

        private MediaType(String s, int i)
        {
            super(s, i);
        }
    }


    private static final String TYPE = "dsnap";
    private MediaType mMediaType;

    public ChatSharedDSnap(AnnotatedMediabryo annotatedmediabryo)
    {
        super(annotatedmediabryo);
    }

    public ChatSharedDSnap(Builder builder)
    {
        super(Builder.a(builder));
    }

    public ChatSharedDSnap(ChatMessage chatmessage)
    {
        super(chatmessage);
    }

    public MediaType G()
    {
        return MediaType.IMAGE;
    }

    public String H()
    {
        return "";
    }

    public boolean ar()
    {
        return true;
    }

    public String e()
    {
        return "dsnap";
    }
}
