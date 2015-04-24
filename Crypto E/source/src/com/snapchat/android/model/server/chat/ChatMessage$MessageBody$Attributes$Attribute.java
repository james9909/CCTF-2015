// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage

public static class Builder.mHref
{
    public static final class AttributeType extends Enum
    {

        private static final AttributeType $VALUES[];
        public static final AttributeType LINK;

        public static AttributeType valueOf(String s)
        {
            return (AttributeType)Enum.valueOf(com/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType, s);
        }

        public static AttributeType[] values()
        {
            return (AttributeType[])$VALUES.clone();
        }

        static 
        {
            LINK = new AttributeType("LINK", 0);
            AttributeType aattributetype[] = new AttributeType[1];
            aattributetype[0] = LINK;
            $VALUES = aattributetype;
        }

        private AttributeType(String s, int i)
        {
            super(s, i);
        }
    }

    public static class Builder
    {

        private String mAndroidHref;
        private String mHref;
        private String mIosHref;
        private String mType;

        public ChatMessage.MessageBody.Attributes.Attribute build()
        {
            return new ChatMessage.MessageBody.Attributes.Attribute(this);
        }

        public Builder setAndroidHref(String s)
        {
            mAndroidHref = s;
            return this;
        }

        public Builder setHref(String s)
        {
            mHref = s;
            return this;
        }

        public Builder setIosHref(String s)
        {
            mIosHref = s;
            return this;
        }

        public Builder setType(String s)
        {
            mType = s;
            return this;
        }





        public Builder()
        {
        }
    }


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

    public Builder(Builder builder)
    {
        type = builder.mType;
        ios_href = builder.mIosHref;
        android_href = builder.mAndroidHref;
        href = builder.mHref;
    }
}
