// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import com.snapchat.android.model.FriendAction;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesListItemViewHolder

static class 
{

    static final int a[];
    static final int b[];
    static final int c[];

    static 
    {
        c = new int[FriendAction.values().length];
        try
        {
            c[FriendAction.BLOCK.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            c[FriendAction.DELETE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            c[FriendAction.SET_DISPLAY_NAME.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        b = new int[com.snapchat.android.model..values().length];
        try
        {
            b[com.snapchat.android.model..READY.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            b[com.snapchat.android.model..SAVING.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            b[com.snapchat.android.model..SAVED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            b[com.snapchat.android.model..DELETING.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            b[com.snapchat.android.model..DELETED.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        a = new int[com.snapchat.android.model.s().length];
        try
        {
            a[com.snapchat.android.model..al()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            a[com.snapchat.android.model.G.al()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            a[com.snapchat.android.model..al()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror10)
        {
            return;
        }
    }
}
