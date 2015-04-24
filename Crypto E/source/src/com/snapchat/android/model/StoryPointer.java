// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            HashFieldPointer

public class StoryPointer extends HashFieldPointer
{

    public static final String DELIMITER = "~";
    public static final String REDIS_KEY_PREFIX = "story";

    public StoryPointer()
    {
    }

    public StoryPointer(String s, String s1)
    {
        super(s, s1);
    }

    public String toString()
    {
        return (new StringBuilder()).append(mKey).append("~").append(mField).toString();
    }
}
