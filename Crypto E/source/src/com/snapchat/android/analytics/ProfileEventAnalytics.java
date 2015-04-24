// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.User;
import com.snapchat.android.util.EnumUtils;

public class ProfileEventAnalytics
{
    public static final class ProfilePageMetricParams extends Enum
    {

        private static final ProfilePageMetricParams $VALUES[];
        public static final ProfilePageMetricParams CONTACT_INFO;
        public static final ProfilePageMetricParams CONTACT_NAME;
        public static final ProfilePageMetricParams DISPLAY_NAME;
        public static final ProfilePageMetricParams FRIEND;
        public static final ProfilePageMetricParams IN_MY_CONTACTS;
        public static final ProfilePageMetricParams PAGE;
        public static final ProfilePageMetricParams REASON;
        public static final ProfilePageMetricParams SOURCE;
        public static final ProfilePageMetricParams STATUS;

        public static ProfilePageMetricParams valueOf(String s)
        {
            return (ProfilePageMetricParams)Enum.valueOf(com/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams, s);
        }

        public static ProfilePageMetricParams[] values()
        {
            return (ProfilePageMetricParams[])$VALUES.clone();
        }

        public String a()
        {
            return EnumUtils.a(this);
        }

        static 
        {
            DISPLAY_NAME = new ProfilePageMetricParams("DISPLAY_NAME", 0);
            FRIEND = new ProfilePageMetricParams("FRIEND", 1);
            STATUS = new ProfilePageMetricParams("STATUS", 2);
            REASON = new ProfilePageMetricParams("REASON", 3);
            PAGE = new ProfilePageMetricParams("PAGE", 4);
            SOURCE = new ProfilePageMetricParams("SOURCE", 5);
            CONTACT_NAME = new ProfilePageMetricParams("CONTACT_NAME", 6);
            CONTACT_INFO = new ProfilePageMetricParams("CONTACT_INFO", 7);
            IN_MY_CONTACTS = new ProfilePageMetricParams("IN_MY_CONTACTS", 8);
            ProfilePageMetricParams aprofilepagemetricparams[] = new ProfilePageMetricParams[9];
            aprofilepagemetricparams[0] = DISPLAY_NAME;
            aprofilepagemetricparams[1] = FRIEND;
            aprofilepagemetricparams[2] = STATUS;
            aprofilepagemetricparams[3] = REASON;
            aprofilepagemetricparams[4] = PAGE;
            aprofilepagemetricparams[5] = SOURCE;
            aprofilepagemetricparams[6] = CONTACT_NAME;
            aprofilepagemetricparams[7] = CONTACT_INFO;
            aprofilepagemetricparams[8] = IN_MY_CONTACTS;
            $VALUES = aprofilepagemetricparams;
        }

        private ProfilePageMetricParams(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class ProfilePageMetrics extends Enum
    {

        private static final ProfilePageMetrics $VALUES[];
        public static final ProfilePageMetrics PROFILE_ADDED_ME_PAGE_VIEW;
        public static final ProfilePageMetrics PROFILE_ADD_BY_CONTACTS_CLICK;
        public static final ProfilePageMetrics PROFILE_ADD_BY_USERNAME_CLICK;
        public static final ProfilePageMetrics PROFILE_ADD_FRIENDS_PAGE_VIEW;
        public static final ProfilePageMetrics PROFILE_CONTACT_ADD_CLICK;
        public static final ProfilePageMetrics PROFILE_CONTACT_BLOCK;
        public static final ProfilePageMetrics PROFILE_CONTACT_NAME_EDIT;
        public static final ProfilePageMetrics PROFILE_CONTACT_UNBLOCK;
        public static final ProfilePageMetrics PROFILE_DISPLAY_NAME_CHANGE;
        public static final ProfilePageMetrics PROFILE_FRIEND_BLOCK;
        public static final ProfilePageMetrics PROFILE_FRIEND_DELETE;
        public static final ProfilePageMetrics PROFILE_FRIEND_NAME_EDIT;
        public static final ProfilePageMetrics PROFILE_FRIEND_REQUEST_ACCEPT;
        public static final ProfilePageMetrics PROFILE_FRIEND_REQUEST_BLOCK;
        public static final ProfilePageMetrics PROFILE_FRIEND_REQUEST_DISPLAY;
        public static final ProfilePageMetrics PROFILE_FRIEND_REQUEST_IGNORE;
        public static final ProfilePageMetrics PROFILE_FRIEND_REQUEST_SENT;
        public static final ProfilePageMetrics PROFILE_FRIEND_SCORE_DISPLAY;
        public static final ProfilePageMetrics PROFILE_MY_CONTACTS_PAGE_VIEW;
        public static final ProfilePageMetrics PROFILE_PAGE_VIEW;

        public static ProfilePageMetrics valueOf(String s)
        {
            return (ProfilePageMetrics)Enum.valueOf(com/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics, s);
        }

        public static ProfilePageMetrics[] values()
        {
            return (ProfilePageMetrics[])$VALUES.clone();
        }

        static 
        {
            PROFILE_PAGE_VIEW = new ProfilePageMetrics("PROFILE_PAGE_VIEW", 0);
            PROFILE_DISPLAY_NAME_CHANGE = new ProfilePageMetrics("PROFILE_DISPLAY_NAME_CHANGE", 1);
            PROFILE_ADDED_ME_PAGE_VIEW = new ProfilePageMetrics("PROFILE_ADDED_ME_PAGE_VIEW", 2);
            PROFILE_FRIEND_REQUEST_DISPLAY = new ProfilePageMetrics("PROFILE_FRIEND_REQUEST_DISPLAY", 3);
            PROFILE_FRIEND_REQUEST_ACCEPT = new ProfilePageMetrics("PROFILE_FRIEND_REQUEST_ACCEPT", 4);
            PROFILE_FRIEND_REQUEST_IGNORE = new ProfilePageMetrics("PROFILE_FRIEND_REQUEST_IGNORE", 5);
            PROFILE_FRIEND_REQUEST_BLOCK = new ProfilePageMetrics("PROFILE_FRIEND_REQUEST_BLOCK", 6);
            PROFILE_FRIEND_BLOCK = new ProfilePageMetrics("PROFILE_FRIEND_BLOCK", 7);
            PROFILE_ADD_FRIENDS_PAGE_VIEW = new ProfilePageMetrics("PROFILE_ADD_FRIENDS_PAGE_VIEW", 8);
            PROFILE_ADD_BY_USERNAME_CLICK = new ProfilePageMetrics("PROFILE_ADD_BY_USERNAME_CLICK", 9);
            PROFILE_ADD_BY_CONTACTS_CLICK = new ProfilePageMetrics("PROFILE_ADD_BY_CONTACTS_CLICK", 10);
            PROFILE_FRIEND_REQUEST_SENT = new ProfilePageMetrics("PROFILE_FRIEND_REQUEST_SENT", 11);
            PROFILE_CONTACT_ADD_CLICK = new ProfilePageMetrics("PROFILE_CONTACT_ADD_CLICK", 12);
            PROFILE_MY_CONTACTS_PAGE_VIEW = new ProfilePageMetrics("PROFILE_MY_CONTACTS_PAGE_VIEW", 13);
            PROFILE_FRIEND_SCORE_DISPLAY = new ProfilePageMetrics("PROFILE_FRIEND_SCORE_DISPLAY", 14);
            PROFILE_FRIEND_NAME_EDIT = new ProfilePageMetrics("PROFILE_FRIEND_NAME_EDIT", 15);
            PROFILE_FRIEND_DELETE = new ProfilePageMetrics("PROFILE_FRIEND_DELETE", 16);
            PROFILE_CONTACT_NAME_EDIT = new ProfilePageMetrics("PROFILE_CONTACT_NAME_EDIT", 17);
            PROFILE_CONTACT_BLOCK = new ProfilePageMetrics("PROFILE_CONTACT_BLOCK", 18);
            PROFILE_CONTACT_UNBLOCK = new ProfilePageMetrics("PROFILE_CONTACT_UNBLOCK", 19);
            ProfilePageMetrics aprofilepagemetrics[] = new ProfilePageMetrics[20];
            aprofilepagemetrics[0] = PROFILE_PAGE_VIEW;
            aprofilepagemetrics[1] = PROFILE_DISPLAY_NAME_CHANGE;
            aprofilepagemetrics[2] = PROFILE_ADDED_ME_PAGE_VIEW;
            aprofilepagemetrics[3] = PROFILE_FRIEND_REQUEST_DISPLAY;
            aprofilepagemetrics[4] = PROFILE_FRIEND_REQUEST_ACCEPT;
            aprofilepagemetrics[5] = PROFILE_FRIEND_REQUEST_IGNORE;
            aprofilepagemetrics[6] = PROFILE_FRIEND_REQUEST_BLOCK;
            aprofilepagemetrics[7] = PROFILE_FRIEND_BLOCK;
            aprofilepagemetrics[8] = PROFILE_ADD_FRIENDS_PAGE_VIEW;
            aprofilepagemetrics[9] = PROFILE_ADD_BY_USERNAME_CLICK;
            aprofilepagemetrics[10] = PROFILE_ADD_BY_CONTACTS_CLICK;
            aprofilepagemetrics[11] = PROFILE_FRIEND_REQUEST_SENT;
            aprofilepagemetrics[12] = PROFILE_CONTACT_ADD_CLICK;
            aprofilepagemetrics[13] = PROFILE_MY_CONTACTS_PAGE_VIEW;
            aprofilepagemetrics[14] = PROFILE_FRIEND_SCORE_DISPLAY;
            aprofilepagemetrics[15] = PROFILE_FRIEND_NAME_EDIT;
            aprofilepagemetrics[16] = PROFILE_FRIEND_DELETE;
            aprofilepagemetrics[17] = PROFILE_CONTACT_NAME_EDIT;
            aprofilepagemetrics[18] = PROFILE_CONTACT_BLOCK;
            aprofilepagemetrics[19] = PROFILE_CONTACT_UNBLOCK;
            $VALUES = aprofilepagemetrics;
        }

        private ProfilePageMetrics(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class ProfilePageMetricsBoolean extends Enum
    {

        private static final ProfilePageMetricsBoolean $VALUES[];
        public static final ProfilePageMetricsBoolean No;
        public static final ProfilePageMetricsBoolean Yes;

        public static ProfilePageMetricsBoolean a(boolean flag)
        {
            if (flag)
            {
                return Yes;
            } else
            {
                return No;
            }
        }

        public static ProfilePageMetricsBoolean valueOf(String s)
        {
            return (ProfilePageMetricsBoolean)Enum.valueOf(com/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean, s);
        }

        public static ProfilePageMetricsBoolean[] values()
        {
            return (ProfilePageMetricsBoolean[])$VALUES.clone();
        }

        static 
        {
            Yes = new ProfilePageMetricsBoolean("Yes", 0);
            No = new ProfilePageMetricsBoolean("No", 1);
            ProfilePageMetricsBoolean aprofilepagemetricsboolean[] = new ProfilePageMetricsBoolean[2];
            aprofilepagemetricsboolean[0] = Yes;
            aprofilepagemetricsboolean[1] = No;
            $VALUES = aprofilepagemetricsboolean;
        }

        private ProfilePageMetricsBoolean(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class ProfilePageMetricsResponseStatus extends Enum
    {

        private static final ProfilePageMetricsResponseStatus $VALUES[];
        public static final ProfilePageMetricsResponseStatus FAIL;
        public static final ProfilePageMetricsResponseStatus SUCCESS;

        public static ProfilePageMetricsResponseStatus valueOf(String s)
        {
            return (ProfilePageMetricsResponseStatus)Enum.valueOf(com/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus, s);
        }

        public static ProfilePageMetricsResponseStatus[] values()
        {
            return (ProfilePageMetricsResponseStatus[])$VALUES.clone();
        }

        static 
        {
            SUCCESS = new ProfilePageMetricsResponseStatus("SUCCESS", 0);
            FAIL = new ProfilePageMetricsResponseStatus("FAIL", 1);
            ProfilePageMetricsResponseStatus aprofilepagemetricsresponsestatus[] = new ProfilePageMetricsResponseStatus[2];
            aprofilepagemetricsresponsestatus[0] = SUCCESS;
            aprofilepagemetricsresponsestatus[1] = FAIL;
            $VALUES = aprofilepagemetricsresponsestatus;
        }

        private ProfilePageMetricsResponseStatus(String s, int i)
        {
            super(s, i);
        }
    }


    private static final String TAG = "ProfileEventAnalytics";
    private static final String UNKNOWN = "unknown";

    public ProfileEventAnalytics()
    {
    }

    public static void a()
    {
        (new EasyMetric(ProfilePageMetrics.PROFILE_ADD_BY_USERNAME_CLICK.name())).c();
    }

    public static void a(AnalyticsEvents.AnalyticsContext analyticscontext)
    {
        static class _cls1
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
                $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext = new int[AnalyticsEvents.AnalyticsContext.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[AnalyticsEvents.AnalyticsContext.PROFILE_MAIN_PAGE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[AnalyticsEvents.AnalyticsContext.PROFILE_ADDED_ME_PAGE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_MENU_PAGE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[AnalyticsEvents.AnalyticsContext.PROFILE_MY_CONTACTS_PAGE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[AnalyticsEvents.AnalyticsContext.CAMERA_PAGE.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror12)
                {
                    return;
                }
            }
        }

        switch (_cls1..SwitchMap.com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext[analyticscontext.ordinal()])
        {
        default:
            Timber.e("ProfileEventAnalytics", (new StringBuilder()).append("onProfilePagesView  - Unknown analytics context ").append(analyticscontext).toString(), new Object[0]);
            return;

        case 1: // '\001'
            (new EasyMetric(ProfilePageMetrics.PROFILE_PAGE_VIEW.name())).c();
            return;

        case 2: // '\002'
            (new EasyMetric(ProfilePageMetrics.PROFILE_ADDED_ME_PAGE_VIEW.name())).c();
            return;

        case 3: // '\003'
            (new EasyMetric(ProfilePageMetrics.PROFILE_ADD_FRIENDS_PAGE_VIEW.name())).c();
            return;

        case 4: // '\004'
            (new EasyMetric(ProfilePageMetrics.PROFILE_MY_CONTACTS_PAGE_VIEW.name())).c();
            break;
        }
    }

    private static void a(AnalyticsEvents.AnalyticsContext analyticscontext, Friend friend, AnalyticsEvents.AddFriendSourceType addfriendsourcetype, String s, boolean flag)
    {
        _cls1..SwitchMap.com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext[analyticscontext.ordinal()];
        JVM INSTR tableswitch 2 7: default 48
    //                   2 77
    //                   3 48
    //                   4 175
    //                   5 175
    //                   6 175
    //                   7 175;
           goto _L1 _L2 _L1 _L3 _L3 _L3 _L3
_L1:
        Timber.e("ProfileEventAnalytics", (new StringBuilder()).append("onAddAction Unknown analyticsContext ").append(analyticscontext).toString(), new Object[0]);
        return;
_L2:
        EasyMetric easymetric;
        easymetric = new EasyMetric(ProfilePageMetrics.PROFILE_FRIEND_REQUEST_ACCEPT.name());
        a(easymetric, friend);
_L5:
        easymetric.b(ProfilePageMetricParams.FRIEND.a(), friend.a()).a(ProfilePageMetricParams.PAGE.a(), EnumUtils.a(analyticscontext));
        User user = User.c();
        if (user != null)
        {
            easymetric.a(ProfilePageMetricParams.IN_MY_CONTACTS.a(), ProfilePageMetricsBoolean.a(user.a(friend)).name());
        }
        a(easymetric, flag, s);
        easymetric.c();
        return;
_L3:
        easymetric = new EasyMetric(ProfilePageMetrics.PROFILE_FRIEND_REQUEST_SENT.name());
        com.snapchat.android.model.Friend.AddSourceType addsourcetype = addfriendsourcetype.a();
        if (addsourcetype != com.snapchat.android.model.Friend.AddSourceType.UNKNOWN)
        {
            easymetric.a(ProfilePageMetricParams.SOURCE.a(), addsourcetype.a());
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static void a(AnalyticsEvents.AnalyticsContext analyticscontext, Friend friend, String s, boolean flag)
    {
        EasyMetric easymetric = (new EasyMetric(ProfilePageMetrics.PROFILE_CONTACT_UNBLOCK.name())).b(ProfilePageMetricParams.FRIEND.a(), friend.a()).a(ProfilePageMetricParams.PAGE.a(), EnumUtils.a(analyticscontext));
        a(easymetric, flag, s);
        easymetric.c();
    }

    private static void a(AnalyticsEvents.AnalyticsContext analyticscontext, Friend friend, boolean flag)
    {
        _cls1..SwitchMap.com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext[analyticscontext.ordinal()];
        JVM INSTR tableswitch 1 4: default 40
    //                   1 69
    //                   2 40
    //                   3 40
    //                   4 103;
           goto _L1 _L2 _L1 _L1 _L3
_L1:
        Timber.e("ProfileEventAnalytics", (new StringBuilder()).append("onSetDisplayNameAction Unknown analyticsContext ").append(analyticscontext).toString(), new Object[0]);
        return;
_L2:
        EasyMetric easymetric = new EasyMetric(ProfilePageMetrics.PROFILE_DISPLAY_NAME_CHANGE.name());
_L5:
        easymetric.b(ProfilePageMetricParams.DISPLAY_NAME.a(), friend.b()).c();
        return;
_L3:
        User user = User.c();
        if (user != null && user.d(friend.a()))
        {
            easymetric = new EasyMetric(ProfilePageMetrics.PROFILE_FRIEND_NAME_EDIT.name());
        } else
        {
            easymetric = new EasyMetric(ProfilePageMetrics.PROFILE_CONTACT_NAME_EDIT.name());
        }
        easymetric.b(ProfilePageMetricParams.FRIEND.a(), friend.a());
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static void a(EasyMetric easymetric, Friend friend)
    {
        com.snapchat.android.model.Friend.AddSourceType addsourcetype = friend.S();
        if (addsourcetype != null)
        {
            easymetric.a(ProfilePageMetricParams.SOURCE.a(), addsourcetype.a());
            return;
        } else
        {
            easymetric.a(ProfilePageMetricParams.SOURCE.a(), "unknown");
            return;
        }
    }

    private static void a(EasyMetric easymetric, boolean flag, String s)
    {
        if (flag)
        {
            easymetric.a(EnumUtils.a(ProfilePageMetricParams.STATUS), EnumUtils.a(ProfilePageMetricsResponseStatus.SUCCESS));
            return;
        } else
        {
            easymetric.a(ProfilePageMetricParams.STATUS.a(), EnumUtils.a(ProfilePageMetricsResponseStatus.FAIL)).a(ProfilePageMetricParams.REASON.a(), s);
            return;
        }
    }

    public static void a(FriendAction friendaction, AnalyticsEvents.AnalyticsContext analyticscontext, Friend friend, AnalyticsEvents.AddFriendSourceType addfriendsourcetype, boolean flag, String s)
    {
        if (friend == null || analyticscontext == null)
        {
            Timber.e("ProfileEventAnalytics", "invalid event params", new Object[0]);
            return;
        }
        switch (_cls1..SwitchMap.com.snapchat.android.model.FriendAction[friendaction.ordinal()])
        {
        default:
            Timber.e("ProfileEventAnalytics", (new StringBuilder()).append("onProfileFriendActionEvents  - Unknown friendAction ").append(friendaction).toString(), new Object[0]);
            return;

        case 1: // '\001'
            a(analyticscontext, friend, addfriendsourcetype, s, flag);
            return;

        case 2: // '\002'
            b(analyticscontext, friend, s, flag);
            return;

        case 3: // '\003'
            b(analyticscontext, friend, addfriendsourcetype, s, flag);
            return;

        case 4: // '\004'
            a(analyticscontext, friend, s, flag);
            return;

        case 5: // '\005'
            a(analyticscontext, friend, flag);
            return;

        case 6: // '\006'
            c(analyticscontext, friend, addfriendsourcetype, s, flag);
            break;
        }
    }

    public static void a(String s, String s1)
    {
        (new EasyMetric(ProfilePageMetrics.PROFILE_CONTACT_ADD_CLICK.name())).b(ProfilePageMetricParams.CONTACT_NAME.a(), s).b(ProfilePageMetricParams.CONTACT_INFO.a(), s1).a(ProfilePageMetricParams.PAGE.a(), EnumUtils.a(AnalyticsEvents.AnalyticsContext.PROFILE_MY_CONTACTS_PAGE)).c();
    }

    public static void b()
    {
        (new EasyMetric(ProfilePageMetrics.PROFILE_ADD_BY_CONTACTS_CLICK.name())).c();
    }

    private static void b(AnalyticsEvents.AnalyticsContext analyticscontext, Friend friend, AnalyticsEvents.AddFriendSourceType addfriendsourcetype, String s, boolean flag)
    {
        User user;
        boolean flag1;
        user = User.c();
        if (user != null)
        {
            flag1 = user.d(friend.a());
        } else
        {
            flag1 = false;
        }
        _cls1..SwitchMap.com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext[analyticscontext.ordinal()];
        JVM INSTR tableswitch 2 4: default 56
    //                   2 91
    //                   3 56
    //                   4 208;
           goto _L1 _L2 _L1 _L3
_L1:
        Timber.e("ProfileEventAnalytics", (new StringBuilder()).append("onBlockAction Unknown analyticsContext ").append(analyticscontext).toString(), new Object[0]);
        return;
_L2:
        EasyMetric easymetric;
        String s1;
        EasyMetric easymetric1;
        if (flag1)
        {
            s1 = ProfilePageMetrics.PROFILE_FRIEND_BLOCK.name();
        } else
        {
            s1 = ProfilePageMetrics.PROFILE_FRIEND_REQUEST_BLOCK.name();
        }
        easymetric1 = new EasyMetric(s1);
        a(easymetric1, friend);
        if (user != null)
        {
            easymetric1.a(ProfilePageMetricParams.IN_MY_CONTACTS.a(), ProfilePageMetricsBoolean.a(user.a(friend)).name());
            easymetric = easymetric1;
        } else
        {
            easymetric = easymetric1;
        }
_L5:
        easymetric.b(ProfilePageMetricParams.FRIEND.a(), friend.a()).a(ProfilePageMetricParams.PAGE.a(), EnumUtils.a(analyticscontext));
        a(easymetric, flag, s);
        easymetric.c();
        return;
_L3:
        if (flag1)
        {
            easymetric = new EasyMetric(ProfilePageMetrics.PROFILE_FRIEND_BLOCK.name());
        } else
        {
            easymetric = new EasyMetric(ProfilePageMetrics.PROFILE_CONTACT_BLOCK.name());
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static void b(AnalyticsEvents.AnalyticsContext analyticscontext, Friend friend, String s, boolean flag)
    {
        EasyMetric easymetric = (new EasyMetric(ProfilePageMetrics.PROFILE_FRIEND_DELETE.name())).b(ProfilePageMetricParams.FRIEND.a(), friend.a()).a(ProfilePageMetricParams.PAGE.a(), EnumUtils.a(analyticscontext));
        a(easymetric, flag, s);
        easymetric.c();
    }

    public static void c()
    {
        (new EasyMetric(ProfilePageMetrics.PROFILE_FRIEND_SCORE_DISPLAY.name())).c();
    }

    private static void c(AnalyticsEvents.AnalyticsContext analyticscontext, Friend friend, AnalyticsEvents.AddFriendSourceType addfriendsourcetype, String s, boolean flag)
    {
        EasyMetric easymetric = (new EasyMetric(ProfilePageMetrics.PROFILE_FRIEND_REQUEST_IGNORE.name())).b(ProfilePageMetricParams.FRIEND.a(), friend.a()).a(ProfilePageMetricParams.PAGE.a(), EnumUtils.a(analyticscontext));
        a(easymetric, friend);
        User user = User.c();
        if (user != null)
        {
            easymetric.a(ProfilePageMetricParams.IN_MY_CONTACTS.a(), ProfilePageMetricsBoolean.a(user.a(friend)).name());
        }
        a(easymetric, flag, s);
        easymetric.c();
    }
}
