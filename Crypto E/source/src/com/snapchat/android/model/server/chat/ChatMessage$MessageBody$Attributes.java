// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage

public static class Builder.mAttribute
    implements Comparable
{
    public static class Attribute
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

        public Attribute(Builder builder)
        {
            type = builder.mType;
            ios_href = builder.mIosHref;
            android_href = builder.mAndroidHref;
            href = builder.mHref;
        }
    }

    public static final class Attribute.AttributeType extends Enum
    {

        private static final Attribute.AttributeType $VALUES[];
        public static final Attribute.AttributeType LINK;

        public static Attribute.AttributeType valueOf(String s)
        {
            return (Attribute.AttributeType)Enum.valueOf(com/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType, s);
        }

        public static Attribute.AttributeType[] values()
        {
            return (Attribute.AttributeType[])$VALUES.clone();
        }

        static 
        {
            LINK = new Attribute.AttributeType("LINK", 0);
            Attribute.AttributeType aattributetype[] = new Attribute.AttributeType[1];
            aattributetype[0] = LINK;
            $VALUES = aattributetype;
        }

        private Attribute.AttributeType(String s, int i)
        {
            super(s, i);
        }
    }

    public static class Attribute.Builder
    {

        private String mAndroidHref;
        private String mHref;
        private String mIosHref;
        private String mType;

        public Attribute build()
        {
            return new Attribute(this);
        }

        public Attribute.Builder setAndroidHref(String s)
        {
            mAndroidHref = s;
            return this;
        }

        public Attribute.Builder setHref(String s)
        {
            mHref = s;
            return this;
        }

        public Attribute.Builder setIosHref(String s)
        {
            mIosHref = s;
            return this;
        }

        public Attribute.Builder setType(String s)
        {
            mType = s;
            return this;
        }





        public Attribute.Builder()
        {
        }
    }

    public static class Builder
    {

        private Attribute mAttribute;
        private int mEnd;
        private int mStart;

        public ChatMessage.MessageBody.Attributes build()
        {
            return new ChatMessage.MessageBody.Attributes(this);
        }

        public Builder setAttribute(Attribute attribute1)
        {
            mAttribute = attribute1;
            return this;
        }

        public Builder setEnd(int i)
        {
            mEnd = i;
            return this;
        }

        public Builder setStart(int i)
        {
            mStart = i;
            return this;
        }




        public Builder()
        {
        }
    }


    private Attribute attribute;
    private int end;
    private int start;

    public int compareTo(Attribute attribute1)
    {
        return start - attribute1.start;
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((compareTo)obj);
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

    public Builder(Builder builder)
    {
        start = builder.mStart;
        end = builder.mEnd;
        attribute = builder.mAttribute;
    }
}
