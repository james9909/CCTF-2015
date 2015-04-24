// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import android.util.Base64;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.chat.ChatMessage;
import java.security.SecureRandom;
import java.util.Date;

// Referenced classes of package com.snapchat.android.model.chat:
//            Chat

public class ChatMedia extends Chat
{
    public static class Builder extends Chat.Builder
    {

        private String iv;
        private String key;
        private String mediaId;

        static String a(Builder builder)
        {
            return builder.mediaId;
        }

        static String b(Builder builder)
        {
            return builder.key;
        }

        static String c(Builder builder)
        {
            return builder.iv;
        }

        public Builder a(String s)
        {
            mediaId = s;
            return this;
        }

        public ChatMedia a()
        {
            return new ChatMedia(this);
        }

        public Builder b(String s)
        {
            key = s;
            return this;
        }

        public Builder c(String s)
        {
            iv = s;
            return this;
        }

        public Builder(String s, String s1)
        {
            super(s, s1);
        }
    }

    public static final class MediaType extends Enum
    {

        private static final MediaType $VALUES[];
        public static final MediaType IMAGE;
        public static final MediaType VIDEO;
        public static final MediaType VIDEO_NO_SOUND;

        public static MediaType valueOf(String s)
        {
            return (MediaType)Enum.valueOf(com/snapchat/android/model/chat/ChatMedia$MediaType, s);
        }

        public static MediaType[] values()
        {
            return (MediaType[])$VALUES.clone();
        }

        static 
        {
            IMAGE = new MediaType("IMAGE", 0);
            VIDEO = new MediaType("VIDEO", 1);
            VIDEO_NO_SOUND = new MediaType("VIDEO_NO_SOUND", 2);
            MediaType amediatype[] = new MediaType[3];
            amediatype[0] = IMAGE;
            amediatype[1] = VIDEO;
            amediatype[2] = VIDEO_NO_SOUND;
            $VALUES = amediatype;
        }

        private MediaType(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String CHAT_MEDIA_PATH = "/bq/chat_media";
    public static final String TYPE = "media";
    private String mIv;
    private String mKey;
    private String mMediaId;

    public ChatMedia(AnnotatedMediabryo annotatedmediabryo)
    {
        super(UserPrefs.k(), annotatedmediabryo.E(), Long.valueOf(annotatedmediabryo.O().getTime()));
        mId = annotatedmediabryo.N();
        SecureRandom securerandom = new SecureRandom();
        byte abyte0[] = new byte[32];
        byte abyte1[] = new byte[16];
        securerandom.nextBytes(abyte0);
        securerandom.nextBytes(abyte1);
        mKey = Base64.encodeToString(abyte0, 0);
        mIv = Base64.encodeToString(abyte1, 0);
    }

    public ChatMedia(Builder builder)
    {
        super(builder);
        mMediaId = Builder.a(builder);
        mKey = Builder.b(builder);
        mIv = Builder.c(builder);
    }

    public ChatMedia(ChatMessage chatmessage)
    {
        super(chatmessage);
        mMediaId = chatmessage.getBody().getMedia().getMediaId();
        mKey = chatmessage.getBody().getMedia().getKey();
        mIv = chatmessage.getBody().getMedia().getIv();
    }

    public String D()
    {
        return mMediaId;
    }

    public String E()
    {
        return mKey;
    }

    public String F()
    {
        return mIv;
    }

    public void a(ChatMedia chatmedia)
    {
        if (mKey == null)
        {
            mKey = chatmedia.E();
        }
        if (mIv == null)
        {
            mIv = chatmedia.F();
        }
    }

    public boolean ar()
    {
        return true;
    }

    public String e()
    {
        return "media";
    }

    public void e(String s)
    {
        mMediaId = s;
    }

    public void f(String s)
    {
        mKey = s;
    }

    public void g(String s)
    {
        mIv = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("ChatMedia{mMediaId='").append(mMediaId).append('\'').append(", mKey='").append(mKey).append('\'').append(", mIv='").append(mIv).append('}').toString();
    }
}
