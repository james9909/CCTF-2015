// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.viewholders;

import com.snapchat.android.model.FriendAction;

// Referenced classes of package com.snapchat.android.ui.viewholders:
//            AddFriendViewHolder

static class 
{

    static final int a[];
    static final int b[];

    static 
    {
        b = new int[FriendAction.values().length];
        try
        {
            b[FriendAction.ADD.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            b[FriendAction.DELETE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        a = new int[com.snapchat.android.model.lues().length];
        try
        {
            a[com.snapchat.android.model.ISTS.dinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[com.snapchat.android.model.ES_NOT_EXIST.dinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[com.snapchat.android.model.NDING.dinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[com.snapchat.android.model.ILED.dinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            a[com.snapchat.android.model.T_SUGGESTION.dinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror6)
        {
            return;
        }
    }
}
