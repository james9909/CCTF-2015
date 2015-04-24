// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import com.snapchat.android.util.EnumUtils;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage

public static class Builder.mAttributes
{
    public static class Attributes
        implements Comparable
    {

        private Attribute attribute;
        private int end;
        private int start;

        public int compareTo(Attributes attributes1)
        {
            return start - attributes1.start;
        }

        public volatile int compareTo(Object obj)
        {
            return compareTo((Attributes)obj);
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

        public Attributes(Builder builder)
        {
            start = builder.mStart;
            end = builder.mEnd;
            attribute = builder.mAttribute;
        }
    }

    public static class Attributes.Attribute
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

        public Attributes.Attribute(Builder builder)
        {
            type = builder.mType;
            ios_href = builder.mIosHref;
            android_href = builder.mAndroidHref;
            href = builder.mHref;
        }
    }

    public static final class Attributes.Attribute.AttributeType extends Enum
    {

        private static final Attributes.Attribute.AttributeType $VALUES[];
        public static final Attributes.Attribute.AttributeType LINK;

        public static Attributes.Attribute.AttributeType valueOf(String s)
        {
            return (Attributes.Attribute.AttributeType)Enum.valueOf(com/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType, s);
        }

        public static Attributes.Attribute.AttributeType[] values()
        {
            return (Attributes.Attribute.AttributeType[])$VALUES.clone();
        }

        static 
        {
            LINK = new Attributes.Attribute.AttributeType("LINK", 0);
            Attributes.Attribute.AttributeType aattributetype[] = new Attributes.Attribute.AttributeType[1];
            aattributetype[0] = LINK;
            $VALUES = aattributetype;
        }

        private Attributes.Attribute.AttributeType(String s, int i)
        {
            super(s, i);
        }
    }

    public static class Attributes.Attribute.Builder
    {

        private String mAndroidHref;
        private String mHref;
        private String mIosHref;
        private String mType;

        public Attributes.Attribute build()
        {
            return new Attributes.Attribute(this);
        }

        public Attributes.Attribute.Builder setAndroidHref(String s)
        {
            mAndroidHref = s;
            return this;
        }

        public Attributes.Attribute.Builder setHref(String s)
        {
            mHref = s;
            return this;
        }

        public Attributes.Attribute.Builder setIosHref(String s)
        {
            mIosHref = s;
            return this;
        }

        public Attributes.Attribute.Builder setType(String s)
        {
            mType = s;
            return this;
        }





        public Attributes.Attribute.Builder()
        {
        }
    }

    public static class Attributes.Builder
    {

        private Attributes.Attribute mAttribute;
        private int mEnd;
        private int mStart;

        public Attributes build()
        {
            return new Attributes(this);
        }

        public Attributes.Builder setAttribute(Attributes.Attribute attribute)
        {
            mAttribute = attribute;
            return this;
        }

        public Attributes.Builder setEnd(int i)
        {
            mEnd = i;
            return this;
        }

        public Attributes.Builder setStart(int i)
        {
            mStart = i;
            return this;
        }




        public Attributes.Builder()
        {
        }
    }

    public static class Builder
    {

        private List mAttributes;
        private Media mMedia;
        private String mText;
        private Type mType;

        public ChatMessage.MessageBody build()
        {
            return new ChatMessage.MessageBody(this);
        }

        public Builder setAttributes(List list)
        {
            mAttributes = list;
            return this;
        }

        public Builder setMedia(Media media1)
        {
            mMedia = media1;
            mType = Type.MEDIA;
            return this;
        }

        public Builder setText(String s)
        {
            mText = s;
            mType = Type.TEXT;
            return this;
        }

        public Builder setType(Type type1)
        {
            mType = type1;
            return this;
        }





        public Builder()
        {
        }
    }

    public static class Media
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

        public Media(Builder builder)
        {
            url = builder.mUrl;
            media_id = builder.mMediaId;
            key = builder.mKey;
            iv = builder.mIv;
        }
    }

    public static class Media.Builder
    {

        private String mIv;
        private String mKey;
        private String mMediaId;
        private String mUrl;

        public Media build()
        {
            return new Media(this);
        }

        public Media.Builder setIv(String s)
        {
            mIv = s;
            return this;
        }

        public Media.Builder setKey(String s)
        {
            mKey = s;
            return this;
        }

        public Media.Builder setMediaId(String s)
        {
            mMediaId = s;
            return this;
        }

        public Media.Builder setUrl(String s)
        {
            mUrl = s;
            return this;
        }





        public Media.Builder()
        {
        }
    }

    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type DISCOVER_SHARE;
        public static final Type HERE_SCREENSHOT;
        public static final Type MEDIA;
        public static final Type SCREENSHOT;
        public static final Type TEXT;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            TEXT = new Type("TEXT", 0);
            MEDIA = new Type("MEDIA", 1);
            SCREENSHOT = new Type("SCREENSHOT", 2);
            HERE_SCREENSHOT = new Type("HERE_SCREENSHOT", 3);
            DISCOVER_SHARE = new Type("DISCOVER_SHARE", 4);
            Type atype[] = new Type[5];
            atype[0] = TEXT;
            atype[1] = MEDIA;
            atype[2] = SCREENSHOT;
            atype[3] = HERE_SCREENSHOT;
            atype[4] = DISCOVER_SHARE;
            $VALUES = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


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

    public Builder(Builder builder)
    {
        media = builder.mMedia;
        type = EnumUtils.a(builder.mType);
        text = builder.mText;
        attributes = builder.mAttributes;
    }
}
