// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage

public static class Builder.mIv
{
    public static class Builder
    {

        private String mIv;
        private String mKey;
        private String mMediaId;
        private String mUrl;

        public ChatMessage.MessageBody.Media build()
        {
            return new ChatMessage.MessageBody.Media(this);
        }

        public Builder setIv(String s)
        {
            mIv = s;
            return this;
        }

        public Builder setKey(String s)
        {
            mKey = s;
            return this;
        }

        public Builder setMediaId(String s)
        {
            mMediaId = s;
            return this;
        }

        public Builder setUrl(String s)
        {
            mUrl = s;
            return this;
        }





        public Builder()
        {
        }
    }


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

    public Builder(Builder builder)
    {
        url = builder.mUrl;
        media_id = builder.mMediaId;
        key = builder.mKey;
        iv = builder.mIv;
    }
}
