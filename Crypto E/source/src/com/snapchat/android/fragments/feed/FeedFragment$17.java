// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;


// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment

static class tatus
{

    static final int a[];

    static 
    {
        a = new int[com.snapchat.android.api.chat..TaskStatus.values().length];
        try
        {
            a[com.snapchat.android.api.chat..TaskStatus.RUNNING.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[com.snapchat.android.api.chat..TaskStatus.FAILED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[com.snapchat.android.api.chat..TaskStatus.EMPTY_RESPONSE_REACHED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2)
        {
            return;
        }
    }
}
