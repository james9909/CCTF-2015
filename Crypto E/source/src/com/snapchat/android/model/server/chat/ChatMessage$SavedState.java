// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage

public static class Builder.mVersion
{
    public static class Builder
    {

        private boolean mSaved;
        private int mVersion;

        public ChatMessage.SavedState build()
        {
            return new ChatMessage.SavedState(this);
        }

        public Builder setSaved(boolean flag)
        {
            mSaved = flag;
            return this;
        }

        public Builder setVersion(int i)
        {
            mVersion = i;
            return this;
        }



        public Builder()
        {
        }
    }


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

    public Builder(Builder builder)
    {
        saved = builder.mSaved;
        version = builder.mVersion;
    }
}
