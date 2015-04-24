// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.UUID;

public class SCMessage
{
    public static class Builder
    {

        private final String mType;

        public SCMessage build()
        {
            return new SCMessage(mType);
        }

        public String getType()
        {
            return mType;
        }

        public Builder(String s)
        {
            mType = s;
        }
    }


    private String id;
    private String type;

    protected SCMessage(String s)
    {
        type = s;
        id = UUID.randomUUID().toString();
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj instanceof SCMessage)
        {
            boolean flag;
            if (type.equals(((SCMessage)obj).type) && id.equals(((SCMessage)obj).id))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return flag;
        } else
        {
            return false;
        }
    }

    public String getId()
    {
        return id;
    }

    public String getType()
    {
        return type;
    }

    public int hashCode()
    {
        return id.hashCode();
    }

    public void setId(String s)
    {
        id = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Message{type='").append(type).append('\'').append(", id='").append(id).append('\'').append('}').toString();
    }
}
