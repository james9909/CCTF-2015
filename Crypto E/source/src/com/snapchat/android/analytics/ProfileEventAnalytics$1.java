// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.model.FriendAction;

// Referenced classes of package com.snapchat.android.analytics:
//            ProfileEventAnalytics

static class sContext
{

    static final int $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[];
    static final int $SwitchMap$com$snapchat$android$model$FriendAction[];

    static 
    {
        $SwitchMap$com$snapchat$android$model$FriendAction = new int[FriendAction.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$model$FriendAction[FriendAction.ADD.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$FriendAction[FriendAction.DELETE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$FriendAction[FriendAction.BLOCK.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$FriendAction[FriendAction.UNBLOCK.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$FriendAction[FriendAction.SET_DISPLAY_NAME.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$FriendAction[FriendAction.IGNORE.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext = new int[sContext.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[sContext.PROFILE_MAIN_PAGE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[sContext.PROFILE_ADDED_ME_PAGE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[sContext.PROFILE_ADD_FRIENDS_MENU_PAGE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[sContext.PROFILE_MY_CONTACTS_PAGE.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[sContext.PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[sContext.PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[sContext.CAMERA_PAGE.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror12)
        {
            return;
        }
    }
}
