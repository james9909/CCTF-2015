// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import android.os.Build;
import android.text.TextUtils;
import com.flurry.android.FlurryAgent;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsMetric;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.BroadcastSnap;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.android.model.SponsoredStoryMetadata;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.ui.caption.CaptionAnalyticData;
import com.snapchat.android.util.EnumUtils;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public abstract class AnalyticsEvents
{
    public static final class AddFriendSourceType extends Enum
    {

        private static final AddFriendSourceType $VALUES[];
        public static final AddFriendSourceType ADDED_ME_BACK;
        public static final AddFriendSourceType CONTACTS;
        public static final AddFriendSourceType QR_CODE;
        public static final AddFriendSourceType USERNAME;
        private final com.snapchat.android.model.Friend.AddSourceType mAddSourceType;

        public static AddFriendSourceType valueOf(String s1)
        {
            return (AddFriendSourceType)Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType, s1);
        }

        public static AddFriendSourceType[] values()
        {
            return (AddFriendSourceType[])$VALUES.clone();
        }

        public com.snapchat.android.model.Friend.AddSourceType a()
        {
            return mAddSourceType;
        }

        static 
        {
            CONTACTS = new AddFriendSourceType("CONTACTS", 0, com.snapchat.android.model.Friend.AddSourceType.ADDED_BY_PHONE);
            USERNAME = new AddFriendSourceType("USERNAME", 1, com.snapchat.android.model.Friend.AddSourceType.ADDED_BY_USERNAME);
            QR_CODE = new AddFriendSourceType("QR_CODE", 2, com.snapchat.android.model.Friend.AddSourceType.ADDED_BY_QR_CODE);
            ADDED_ME_BACK = new AddFriendSourceType("ADDED_ME_BACK", 3, com.snapchat.android.model.Friend.AddSourceType.ADDED_BY_ADDED_ME_BACK);
            AddFriendSourceType aaddfriendsourcetype[] = new AddFriendSourceType[4];
            aaddfriendsourcetype[0] = CONTACTS;
            aaddfriendsourcetype[1] = USERNAME;
            aaddfriendsourcetype[2] = QR_CODE;
            aaddfriendsourcetype[3] = ADDED_ME_BACK;
            $VALUES = aaddfriendsourcetype;
        }

        private AddFriendSourceType(String s1, int i1, com.snapchat.android.model.Friend.AddSourceType addsourcetype)
        {
            super(s1, i1);
            mAddSourceType = addsourcetype;
        }
    }

    public static final class AnalyticsContext extends Enum
    {

        private static final AnalyticsContext $VALUES[];
        public static final AnalyticsContext CAMERA_PAGE;
        public static final AnalyticsContext CONTACTS;
        public static final AnalyticsContext MY_FRIENDS_POPUP;
        public static final AnalyticsContext NEW_USER_CONTACT_BOOK_PAGE;
        public static final AnalyticsContext PROFILE_ADDED_ME_PAGE;
        public static final AnalyticsContext PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE;
        public static final AnalyticsContext PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE;
        public static final AnalyticsContext PROFILE_ADD_FRIENDS_MENU_PAGE;
        public static final AnalyticsContext PROFILE_MAIN_PAGE;
        public static final AnalyticsContext PROFILE_MY_CONTACTS_PAGE;
        public static final AnalyticsContext REQUESTS;
        public static final AnalyticsContext SEARCH;
        public static final AnalyticsContext SEND;
        public static final AnalyticsContext SETTINGS;
        public static final AnalyticsContext STORIES;

        public static AnalyticsContext valueOf(String s1)
        {
            return (AnalyticsContext)Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext, s1);
        }

        public static AnalyticsContext[] values()
        {
            return (AnalyticsContext[])$VALUES.clone();
        }

        static 
        {
            MY_FRIENDS_POPUP = new AnalyticsContext("MY_FRIENDS_POPUP", 0);
            REQUESTS = new AnalyticsContext("REQUESTS", 1);
            SEARCH = new AnalyticsContext("SEARCH", 2);
            CONTACTS = new AnalyticsContext("CONTACTS", 3);
            SEND = new AnalyticsContext("SEND", 4);
            STORIES = new AnalyticsContext("STORIES", 5);
            PROFILE_MAIN_PAGE = new AnalyticsContext("PROFILE_MAIN_PAGE", 6);
            PROFILE_ADDED_ME_PAGE = new AnalyticsContext("PROFILE_ADDED_ME_PAGE", 7);
            PROFILE_ADD_FRIENDS_MENU_PAGE = new AnalyticsContext("PROFILE_ADD_FRIENDS_MENU_PAGE", 8);
            PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE = new AnalyticsContext("PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE", 9);
            PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE = new AnalyticsContext("PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE", 10);
            PROFILE_MY_CONTACTS_PAGE = new AnalyticsContext("PROFILE_MY_CONTACTS_PAGE", 11);
            NEW_USER_CONTACT_BOOK_PAGE = new AnalyticsContext("NEW_USER_CONTACT_BOOK_PAGE", 12);
            SETTINGS = new AnalyticsContext("SETTINGS", 13);
            CAMERA_PAGE = new AnalyticsContext("CAMERA_PAGE", 14);
            AnalyticsContext aanalyticscontext[] = new AnalyticsContext[15];
            aanalyticscontext[0] = MY_FRIENDS_POPUP;
            aanalyticscontext[1] = REQUESTS;
            aanalyticscontext[2] = SEARCH;
            aanalyticscontext[3] = CONTACTS;
            aanalyticscontext[4] = SEND;
            aanalyticscontext[5] = STORIES;
            aanalyticscontext[6] = PROFILE_MAIN_PAGE;
            aanalyticscontext[7] = PROFILE_ADDED_ME_PAGE;
            aanalyticscontext[8] = PROFILE_ADD_FRIENDS_MENU_PAGE;
            aanalyticscontext[9] = PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE;
            aanalyticscontext[10] = PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE;
            aanalyticscontext[11] = PROFILE_MY_CONTACTS_PAGE;
            aanalyticscontext[12] = NEW_USER_CONTACT_BOOK_PAGE;
            aanalyticscontext[13] = SETTINGS;
            aanalyticscontext[14] = CAMERA_PAGE;
            $VALUES = aanalyticscontext;
        }

        private AnalyticsContext(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class AnalyticsParent extends Enum
    {

        private static final AnalyticsParent $VALUES[];
        public static final AnalyticsParent ADD_FRIENDS;
        public static final AnalyticsParent REGISTER_ADD_FRIENDS;
        public static final AnalyticsParent SEND;

        public static AnalyticsParent valueOf(String s1)
        {
            return (AnalyticsParent)Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent, s1);
        }

        public static AnalyticsParent[] values()
        {
            return (AnalyticsParent[])$VALUES.clone();
        }

        static 
        {
            REGISTER_ADD_FRIENDS = new AnalyticsParent("REGISTER_ADD_FRIENDS", 0);
            ADD_FRIENDS = new AnalyticsParent("ADD_FRIENDS", 1);
            SEND = new AnalyticsParent("SEND", 2);
            AnalyticsParent aanalyticsparent[] = new AnalyticsParent[3];
            aanalyticsparent[0] = REGISTER_ADD_FRIENDS;
            aanalyticsparent[1] = ADD_FRIENDS;
            aanalyticsparent[2] = SEND;
            $VALUES = aanalyticsparent;
        }

        private AnalyticsParent(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class AnalyticsSendSnapSource extends Enum
    {

        private static final AnalyticsSendSnapSource $VALUES[];
        public static final AnalyticsSendSnapSource CAMERA;
        public static final AnalyticsSendSnapSource DOUBLE_TAP_DISCOVER;
        public static final AnalyticsSendSnapSource DOUBLE_TAP_FEED;
        public static final AnalyticsSendSnapSource DOUBLE_TAP_FRIENDS;
        public static final AnalyticsSendSnapSource IN_CHAT;
        public static final AnalyticsSendSnapSource QUICK_SNAP;

        public static AnalyticsSendSnapSource valueOf(String s1)
        {
            return (AnalyticsSendSnapSource)Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource, s1);
        }

        public static AnalyticsSendSnapSource[] values()
        {
            return (AnalyticsSendSnapSource[])$VALUES.clone();
        }

        static 
        {
            CAMERA = new AnalyticsSendSnapSource("CAMERA", 0);
            DOUBLE_TAP_FEED = new AnalyticsSendSnapSource("DOUBLE_TAP_FEED", 1);
            DOUBLE_TAP_FRIENDS = new AnalyticsSendSnapSource("DOUBLE_TAP_FRIENDS", 2);
            IN_CHAT = new AnalyticsSendSnapSource("IN_CHAT", 3);
            QUICK_SNAP = new AnalyticsSendSnapSource("QUICK_SNAP", 4);
            DOUBLE_TAP_DISCOVER = new AnalyticsSendSnapSource("DOUBLE_TAP_DISCOVER", 5);
            AnalyticsSendSnapSource aanalyticssendsnapsource[] = new AnalyticsSendSnapSource[6];
            aanalyticssendsnapsource[0] = CAMERA;
            aanalyticssendsnapsource[1] = DOUBLE_TAP_FEED;
            aanalyticssendsnapsource[2] = DOUBLE_TAP_FRIENDS;
            aanalyticssendsnapsource[3] = IN_CHAT;
            aanalyticssendsnapsource[4] = QUICK_SNAP;
            aanalyticssendsnapsource[5] = DOUBLE_TAP_DISCOVER;
            $VALUES = aanalyticssendsnapsource;
        }

        private AnalyticsSendSnapSource(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    static class ChatFeedItemTimestampLargestFirstComparator
        implements Comparator
    {

        public int a(ChatFeedItem chatfeeditem, ChatFeedItem chatfeeditem1)
        {
            return (int)((chatfeeditem1.ae() - chatfeeditem.ae()) % 0x7fffffffL);
        }

        public int compare(Object obj, Object obj1)
        {
            return a((ChatFeedItem)obj, (ChatFeedItem)obj1);
        }

        ChatFeedItemTimestampLargestFirstComparator()
        {
        }
    }

    static final class Event extends Enum
    {

        private static final Event $VALUES[];
        public static final Event SYNC_ALL;

        public static Event valueOf(String s1)
        {
            return (Event)Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$Event, s1);
        }

        public static Event[] values()
        {
            return (Event[])$VALUES.clone();
        }

        static 
        {
            SYNC_ALL = new Event("SYNC_ALL", 0);
            Event aevent[] = new Event[1];
            aevent[0] = SYNC_ALL;
            $VALUES = aevent;
        }

        private Event(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class LogoutReason extends Enum
    {

        private static final LogoutReason $VALUES[];
        public static final LogoutReason AUTHENTICATION_ERROR;
        public static final LogoutReason NO_USERNAME;
        public static final LogoutReason USER_INITIATED;

        public static LogoutReason valueOf(String s1)
        {
            return (LogoutReason)Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$LogoutReason, s1);
        }

        public static LogoutReason[] values()
        {
            return (LogoutReason[])$VALUES.clone();
        }

        static 
        {
            USER_INITIATED = new LogoutReason("USER_INITIATED", 0);
            AUTHENTICATION_ERROR = new LogoutReason("AUTHENTICATION_ERROR", 1);
            NO_USERNAME = new LogoutReason("NO_USERNAME", 2);
            LogoutReason alogoutreason[] = new LogoutReason[3];
            alogoutreason[0] = USER_INITIATED;
            alogoutreason[1] = AUTHENTICATION_ERROR;
            alogoutreason[2] = NO_USERNAME;
            $VALUES = alogoutreason;
        }

        private LogoutReason(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    static final class Param extends Enum
    {

        private static final Param $VALUES[];
        public static final Param FROM_NOTIFICATION;
        public static final Param NEWLY_RECEIVED_CHATS_COUNT;
        public static final Param NEWLY_RECEIVED_SNAPS_COUNT;
        public static final Param UNVIEWED_CHATS_COUNT;
        public static final Param UNVIEWED_SNAPS_COUNT;

        public static Param valueOf(String s1)
        {
            return (Param)Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$Param, s1);
        }

        public static Param[] values()
        {
            return (Param[])$VALUES.clone();
        }

        static 
        {
            FROM_NOTIFICATION = new Param("FROM_NOTIFICATION", 0);
            NEWLY_RECEIVED_CHATS_COUNT = new Param("NEWLY_RECEIVED_CHATS_COUNT", 1);
            NEWLY_RECEIVED_SNAPS_COUNT = new Param("NEWLY_RECEIVED_SNAPS_COUNT", 2);
            UNVIEWED_CHATS_COUNT = new Param("UNVIEWED_CHATS_COUNT", 3);
            UNVIEWED_SNAPS_COUNT = new Param("UNVIEWED_SNAPS_COUNT", 4);
            Param aparam[] = new Param[5];
            aparam[0] = FROM_NOTIFICATION;
            aparam[1] = NEWLY_RECEIVED_CHATS_COUNT;
            aparam[2] = NEWLY_RECEIVED_SNAPS_COUNT;
            aparam[3] = UNVIEWED_CHATS_COUNT;
            aparam[4] = UNVIEWED_SNAPS_COUNT;
            $VALUES = aparam;
        }

        private Param(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    public static final String ADDITIONAL_SETTING_FILTERS = "TOGGLE_SETTING_FILTERS";
    public static final String ADDITIONAL_SETTING_FLASH = "TOGGLE_SETTING_FLASH";
    public static final String ADDITIONAL_SETTING_REPLAY = "TOGGLE_SETTING_REPLAY";
    private static final float FULLVIEW_EPSILON = 0.1F;
    private static final String TAG = "AnalyticsEvents";
    private static final SnapchatServiceManager sServiceManager = SnapchatServiceManager.a();

    private AnalyticsEvents()
    {
    }

    public static void A()
    {
        (new EasyMetric("R01_FOCUS_ON_USERNAME")).c();
    }

    public static void B()
    {
        (new EasyMetric("R01_EDITED_USERNAME")).c();
    }

    public static void C()
    {
        (new EasyMetric("R01_USERNAME_EXISTS")).c();
    }

    public static void D()
    {
        (new EasyMetric("R01_USERNAME_INVALID")).c();
    }

    public static void E()
    {
        (new EasyMetric("R01_REGISTER_USERNAME_SUCCESS")).c();
    }

    public static void F()
    {
        (new EasyMetric("R01_CONTACTS_ACCESS_GRANTED")).c();
    }

    public static void G()
    {
        (new EasyMetric("R01_CONTACTS_ACCESS_DENIED")).c();
    }

    public static void H()
    {
        (new EasyMetric("R01_SKIPPED_ADD_FRIENDS")).c();
    }

    public static void I()
    {
        (new EasyMetric("R01_SCROLLS_FRIENDS_TABLE")).c();
    }

    public static void J()
    {
        (new EasyMetric("CLEAR_ALL")).c();
    }

    public static void K()
    {
        (new EasyMetric("CLEAR_USED")).c();
    }

    public static void L()
    {
        (new EasyMetric("SNAPCASH_SQUARE_TOS_ACCEPTED")).c();
    }

    public static void M()
    {
        (new EasyMetric("SNAPCASH_SQUARE_TOS_CANCELED")).c();
    }

    public static void N()
    {
        (new EasyMetric("SNAPCASH_PHONE_VERIFICATION_SUCCEEDED")).c();
    }

    public static void O()
    {
        (new EasyMetric("SNAPCASH_PHONE_VERIFICATION_CANCELED")).c();
    }

    public static void P()
    {
        (new EasyMetric("SNAPCASH_BUTTON_TAPPED")).c();
    }

    public static void Q()
    {
        (new EasyMetric("SNAPCASH_CARD_LINKING_CANCELED")).c();
    }

    public static void R()
    {
        (new EasyMetric("SNAPCASH_ASKED_TO_RELINK")).c();
    }

    public static void S()
    {
        (new EasyMetric("SNAPCASH_IDENTITY_VERIFICATION_SUCCEEDED")).c();
    }

    public static void T()
    {
        (new EasyMetric("SNAPCASH_IDENTITY_VERIFICATION_FAILED")).c();
    }

    public static void U()
    {
        (new EasyMetric("SNAPCASH_IDENTITY_VERIFICATION_CANCELED")).c();
    }

    public static void V()
    {
        (new EasyMetric("CHAT_DISCONNECTED")).c();
    }

    public static void W()
    {
        (new EasyMetric("TCP_RECONNECT")).c();
    }

    private static void X()
    {
        (new EasyMetric("CHAT_ACTIVE")).c();
    }

    private static Map a(int i1, String s1)
    {
        TreeMap treemap = new TreeMap();
        treemap.put("number_of_friends", Integer.toString(i1));
        treemap.put("number_of_friends_histogram", s1);
        return treemap;
    }

    private static Map a(boolean flag, StorySnap storysnap)
    {
        HashMap hashmap = new HashMap(4);
        String s1;
        if (flag)
        {
            s1 = "0";
        } else
        {
            s1 = "1";
        }
        hashmap.put("viewing_type", s1);
        hashmap.put("type", b(storysnap));
        hashmap.put("time", Float.toString((float)storysnap.E() / 1000F));
        if (storysnap.e())
        {
            hashmap.put("sponsor", storysnap.f().c());
        }
        return hashmap;
    }

    public static void a()
    {
        boolean flag = UserPrefs.L();
        EasyMetric easymetric;
        if (flag)
        {
            (new EasyMetric("SESSION_WITH_FILTERS_ENABLED")).c();
        } else
        {
            (new EasyMetric("SESSION_WITH_FILTERS_DISABLED")).c();
        }
        easymetric = new EasyMetric("ON_RESUME");
        easymetric.a("DEVICE", Build.DEVICE);
        easymetric.a("MODEL", Build.MODEL);
        easymetric.a("SDK_INT", Integer.toString(android.os.Build.VERSION.SDK_INT));
        easymetric.a("SDK_RELEASE", android.os.Build.VERSION.RELEASE);
        easymetric.a("CPU_ABI", Build.CPU_ABI);
        easymetric.a("CPU_ABI2", Build.CPU_ABI2);
        easymetric.a("FILTERS_ENABLED", Boolean.toString(flag));
        easymetric.c();
    }

    public static void a(int i1)
    {
        HashMap hashmap = new HashMap(1);
        hashmap.put("friends", Integer.toString(i1));
        (new EasyMetric("FINISH_NEW_USER_ADD_FRIENDS")).a(hashmap).c();
    }

    public static void a(int i1, int j1)
    {
        EasyMetric easymetric = new EasyMetric("PAGE_CHANGED");
        easymetric.a("Previous page", d(i1));
        easymetric.a("New page", d(j1));
        easymetric.c();
    }

    public static void a(int i1, int j1, int k1)
    {
        Map map = a(i1, e(i1));
        (new EasyMetric("R01_NUMBER_OF_FRIENDS_ON_SNAPCHAT")).a(map).c();
        Map map1 = a(j1, e(j1));
        (new EasyMetric("R01_NUMBER_OF_FRIENDS_ADDED")).a(map1).c();
        Map map2 = a(k1, e(k1));
        (new EasyMetric("R01_NUMBER_OF_FRIENDS_INVITED")).a(map2).c();
        (new EasyMetric((new StringBuilder()).append("R01_").append(f(i1)).append("_FRIENDS_ON_SNAPCHAT").toString())).c();
        (new EasyMetric((new StringBuilder()).append("R01_").append(f(j1)).append("_FRIENDS_ADDED").toString())).c();
        (new EasyMetric((new StringBuilder()).append("R01_").append(f(k1)).append("_FRIENDS_INVITED").toString())).c();
    }

    public static void a(long l1)
    {
        (new EasyMetric("CHAT_SESSION_END")).a("session_length_bucket", b(l1)).a("session_length", Double.toString((double)l1 / 1000D)).c();
    }

    public static void a(LogoutReason logoutreason)
    {
        (new EasyMetric("LOGOUT")).a("REASON", logoutreason.name()).c();
    }

    protected static void a(AnnotatedMediabryo annotatedmediabryo)
    {
        TreeMap treemap = new TreeMap();
        treemap.put("filter_impressions", String.valueOf(annotatedmediabryo.w()));
        if (TextUtils.equals(annotatedmediabryo.t(), "Geofilter"))
        {
            (new EasyMetric("SEND_SNAP_GEOFILTER")).a(treemap).c();
        } else
        if (annotatedmediabryo.w() > 0)
        {
            (new EasyMetric("SEND_SNAP_WITHOUT_GEOFILTER")).a(treemap).c();
            return;
        }
    }

    public static void a(AnnotatedMediabryo annotatedmediabryo, AnalyticsSendSnapSource analyticssendsnapsource, boolean flag, boolean flag1, boolean flag2, int i1, User user)
    {
        HashMap hashmap = new HashMap();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("sender", UserPrefs.k());
        String s1;
        String s2;
        CaptionAnalyticData captionanalyticdata;
        if (annotatedmediabryo.b() == 0)
        {
            hashmap.put("type", "IMAGE");
        } else
        {
            hashmap.put("type", "VIDEO");
            if (annotatedmediabryo.b() == 1)
            {
                hashmap.put("videoType", "SOUND");
            } else
            {
                hashmap.put("videoType", "NO_SOUND");
            }
            if (annotatedmediabryo instanceof SnapVideobryo)
            {
                SnapVideobryo snapvideobryo = (SnapVideobryo)annotatedmediabryo;
                HashMap hashmap2 = new HashMap();
                hashmap2.put("transcodingEnabled", TranscodingPreferencesWrapper.a().b().name());
                hashmap2.put("recordedVideoFileSize", String.valueOf(snapvideobryo.Y()));
                hashmap2.put("transcodedVideoFileSize", String.valueOf(snapvideobryo.Z()));
                hashmap2.putAll(hashmap);
                (new EasyMetric("VIDEO_SNAP_SENT")).a(hashmap2).b(hashmap1).a(false);
            } else
            {
                throw new IllegalStateException("Reporting metrics may be wrong, snapybryo is expected to be a SnapVideobryo");
            }
        }
        hashmap.put("recipientCount", Integer.toString(i1));
        if (i1 == 1)
        {
            hashmap.put("recipientCountBucket", "1 recipient");
        } else
        if (i1 > 1 && i1 <= 5)
        {
            hashmap.put("recipientCountBucket", "2-5 recipients");
        } else
        if (i1 > 5 && i1 <= 10)
        {
            hashmap.put("recipientCountBucket", "6-10 recipients");
        } else
        if (i1 > 10)
        {
            hashmap.put("recipientCountBucket", ">10 recipients");
        }
        hashmap.put("friendCount", Integer.toString(-2 + user.t()));
        if (annotatedmediabryo.s())
        {
            s1 = "1";
        } else
        {
            s1 = "0";
        }
        hashmap.put("drawing", s1);
        hashmap.put("caption", annotatedmediabryo.y());
        hashmap.put("filter", annotatedmediabryo.t());
        if (flag)
        {
            s2 = "1";
        } else
        {
            s2 = "0";
        }
        hashmap.put("with_story", s2);
        if (flag2)
        {
            if (analyticssendsnapsource == AnalyticsSendSnapSource.IN_CHAT)
            {
                hashmap.put("source", "chat_story_reply");
            } else
            if (analyticssendsnapsource == AnalyticsSendSnapSource.QUICK_SNAP)
            {
                hashmap.put("source", "chat_story_quick_snap_reply");
            }
        } else
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(EnumUtils.a(analyticssendsnapsource));
            String s3;
            if (flag1)
            {
                s3 = "_from_preview";
            } else
            {
                s3 = "";
            }
            hashmap.put("source", stringbuilder.append(s3).toString());
        }
        (new EasyMetric("SNAP_SENT")).a(hashmap).b(hashmap1).c();
        captionanalyticdata = annotatedmediabryo.z();
        if (captionanalyticdata != null)
        {
            (new EasyMetric("CAPTION_DETAIL")).a(captionanalyticdata.a()).b(hashmap1).c();
        }
        a(annotatedmediabryo);
        b(annotatedmediabryo);
    }

    public static void a(AnnotatedMediabryo annotatedmediabryo, boolean flag, boolean flag1, String s1)
    {
        HashMap hashmap = new HashMap();
        String s2;
        String s3;
        String s4;
        HashMap hashmap1;
        CaptionAnalyticData captionanalyticdata;
        if (annotatedmediabryo.b() == 0)
        {
            hashmap.put("type", "IMAGE");
        } else
        {
            hashmap.put("type", "VIDEO");
            if (annotatedmediabryo.b() == 1)
            {
                hashmap.put("videoType", "SOUND");
            } else
            {
                hashmap.put("videoType", "NO_SOUND");
            }
        }
        if (annotatedmediabryo.s())
        {
            s2 = "1";
        } else
        {
            s2 = "0";
        }
        hashmap.put("drawing", s2);
        hashmap.put("caption", annotatedmediabryo.y());
        hashmap.put("filter", annotatedmediabryo.t());
        if (flag)
        {
            s3 = "1";
        } else
        {
            s3 = "0";
        }
        hashmap.put("reply", s3);
        if (flag1)
        {
            s4 = "1";
        } else
        {
            s4 = "0";
        }
        hashmap.put("with_snap", s4);
        hashmap.put("context", s1);
        hashmap1 = new HashMap();
        hashmap1.put("sender", UserPrefs.k());
        (new EasyMetric("POST_STORY")).a(hashmap).b(hashmap1).c();
        captionanalyticdata = annotatedmediabryo.z();
        if (captionanalyticdata != null)
        {
            (new EasyMetric("CAPTION_DETAIL")).a(captionanalyticdata.a()).b(hashmap1).c();
        }
        c(annotatedmediabryo);
        b(annotatedmediabryo);
    }

    public static void a(FriendAction friendaction, AnalyticsContext analyticscontext, Friend friend, AddFriendSourceType addfriendsourcetype, AnalyticsParent analyticsparent)
    {
        String s1 = analyticscontext.name();
        String s2;
        if (analyticsparent != null)
        {
            s2 = analyticsparent.name();
        } else
        {
            s2 = null;
        }
        a(friendaction, s1, friend, addfriendsourcetype, s2);
    }

    public static void a(FriendAction friendaction, String s1, Friend friend, AddFriendSourceType addfriendsourcetype, String s2)
    {
        a(friendaction, s1, friend.a(), addfriendsourcetype, s2);
    }

    public static void a(FriendAction friendaction, String s1, String s2, AddFriendSourceType addfriendsourcetype, String s3)
    {
        HashMap hashmap = new HashMap();
        if (s1 != null)
        {
            hashmap.put("context", s1);
        }
        if (addfriendsourcetype != null)
        {
            hashmap.put("type", addfriendsourcetype.name());
        }
        if (s3 != null)
        {
            hashmap.put("parent", s3);
        }
        HashMap hashmap1 = new HashMap();
        hashmap1.put("name", s2);
        (new EasyMetric(friendaction.name())).a(hashmap).b(hashmap1).c();
    }

    public static void a(Mediabryo mediabryo)
    {
        EasyMetric easymetric = new EasyMetric("SWIPE_FILTER_SWIPED");
        String s1;
        if (SnapUtils.a(mediabryo))
        {
            s1 = "VIDEO";
        } else
        {
            s1 = "IMAGE";
        }
        easymetric.a("type", s1).c();
    }

    protected static void a(ReceivedSnap receivedsnap)
    {
        if (!TextUtils.isEmpty(receivedsnap.O()))
        {
            (new EasyMetric("VIEW_SNAP_GEOFILTER")).a("filter_id", receivedsnap.O()).c();
        }
    }

    public static void a(ReceivedSnap receivedsnap, User user)
    {
        HashMap hashmap = new HashMap(4);
        hashmap.put("time", Integer.toString((int)receivedsnap.M()));
        hashmap.put("friendCount", Integer.toString(-2 + user.t()));
        HashMap hashmap1;
        if (receivedsnap.ao() == 0)
        {
            hashmap.put("type", "IMAGE");
        } else
        {
            hashmap.put("type", "VIDEO");
            if (receivedsnap.ao() == 1)
            {
                hashmap.put("videoType", "SOUND");
            } else
            {
                hashmap.put("videoType", "NO_SOUND");
            }
        }
        hashmap1 = new HashMap(2);
        hashmap1.put("id", receivedsnap.d());
        hashmap1.put("sender", receivedsnap.l());
        if (receivedsnap instanceof BroadcastSnap)
        {
            hashmap.put("url", ((BroadcastSnap)receivedsnap).f());
            (new EasyMetric("BROADCAST_SNAP_OPENED")).a(hashmap).b(hashmap1).c();
        } else
        if (receivedsnap.getClass().equals(com/snapchat/android/model/ReceivedSnap))
        {
            (new EasyMetric("SNAP_VIEW")).a(hashmap).b(hashmap1).c();
            a(receivedsnap);
            return;
        }
    }

    public static void a(ReceivedSnap receivedsnap, boolean flag)
    {
        HashMap hashmap = new HashMap(3);
        hashmap.put("time", Integer.toString((int)receivedsnap.M()));
        HashMap hashmap1;
        if (receivedsnap.ao() == 0)
        {
            hashmap.put("type", "IMAGE");
        } else
        {
            hashmap.put("type", "VIDEO");
            if (receivedsnap.ao() == 1)
            {
                hashmap.put("videoType", "SOUND");
            } else
            {
                hashmap.put("videoType", "NO_SOUND");
            }
        }
        hashmap1 = new HashMap(2);
        hashmap1.put("id", receivedsnap.d());
        hashmap1.put("sender", receivedsnap.l());
        if (receivedsnap instanceof StorySnap)
        {
            if (((StorySnap)receivedsnap).e())
            {
                hashmap.put("sponsor", ((StorySnap)receivedsnap).f().c());
            }
            (new EasyMetric("SCREENSHOT_STORY")).a(hashmap).b(hashmap1).c();
            (new EasyMetric("SCREENSHOT_PROMOTED_STORY")).a(hashmap).b(hashmap1).c();
            return;
        } else
        {
            (new EasyMetric("SNAP_SCREENSHOT")).a(hashmap).b(hashmap1).c();
            return;
        }
    }

    public static void a(StorySnap storysnap)
    {
        (new EasyMetric("SAVE_STORY")).b("id", storysnap.d()).c();
    }

    public static void a(StorySnap storysnap, boolean flag, User user)
    {
        if (storysnap == null)
        {
            throw new NullPointerException();
        }
        if (user == null)
        {
            throw new NullPointerException();
        }
        TreeMap treemap = new TreeMap();
        String s1;
        TreeMap treemap1;
        if (flag)
        {
            s1 = "0";
        } else
        {
            s1 = "1";
        }
        treemap.put("type", s1);
        if (storysnap.e())
        {
            treemap.put("sponsor", storysnap.f().c());
        }
        treemap1 = new TreeMap();
        treemap1.put("username", UserPrefs.k());
        if (TextUtils.equals(storysnap.aB(), UserPrefs.k()))
        {
            (new EasyMetric("VIEW_MY_STORIES")).c();
        } else
        {
            (new EasyMetric("VIEW_STORIES")).a(treemap).b(treemap1).c();
            if (storysnap.e())
            {
                (new EasyMetric("VIEW_PROMOTED_STORIES")).a(treemap).b(treemap1).c();
                String s2 = storysnap.f().d();
                if (s2 != null)
                {
                    sServiceManager.e(SnapchatApplication.e(), s2);
                    return;
                }
            }
        }
    }

    protected static void a(User user, ReceivedSnap receivedsnap)
    {
        if (!TextUtils.isEmpty(receivedsnap.O()))
        {
            TreeMap treemap = new TreeMap();
            treemap.put("filter_id", receivedsnap.O());
            treemap.put("my_story", Boolean.toString(TextUtils.equals(UserPrefs.k(), receivedsnap.l())));
            (new EasyMetric("VIEW_STORY_GEOFILTER")).a(treemap).c();
        }
    }

    public static void a(User user, boolean flag, StorySnap storysnap)
    {
        if (!storysnap.D()) goto _L2; else goto _L1
_L1:
        if (ReleaseManager.f())
        {
            throw new RuntimeException("onEndStoryViewingSession shouldn't be called while story snap is being viewed!");
        }
          goto _L3
_L2:
        Map map;
        Map map1;
        Map map2;
        Map map3;
        map = a(flag, storysnap);
        map1 = d(storysnap);
        map2 = b(flag, storysnap);
        map3 = e(storysnap);
        (new EasyMetric("VIEW_STORY")).a(map).b(map1).c();
        if (!storysnap.e()) goto _L5; else goto _L4
_L4:
        (new EasyMetric("VIEW_PROMOTED_STORY")).a(map).b(map1).c();
        String s1 = storysnap.f().c();
        (new ScAnalyticsMetric("BRANDSTORY_SNAP_VIEW")).a("sponsor", s1).a(map2).a(map3).b();
_L7:
        a(user, ((ReceivedSnap) (storysnap)));
_L3:
        return;
_L5:
        if (storysnap.aJ())
        {
            (new ScAnalyticsMetric("OURSTORY_SNAP_VIEW")).a(map2).a(map3).b();
            if (storysnap.aK())
            {
                (new EasyMetric(c(storysnap))).a(map).b(map1).c();
            }
        } else
        {
            (new ScAnalyticsMetric("USERSTORY_SNAP_VIEW")).a(map2).a(map3).b();
            if (storysnap.l() != null && storysnap.l().equals(UserPrefs.k()))
            {
                (new EasyMetric("VIEW_MY_STORY")).a(map).b(map1).c();
            } else
            if (storysnap.l() != null && storysnap.l().equals("teamsnapchat"))
            {
                (new EasyMetric("VIEW_TEAMSNAPCHAT_STORY")).a(map).b(map1).c();
            }
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static void a(com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType releasetype, List list, long l1)
    {
        if (com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.DELETE.equals(releasetype))
        {
            String s1 = UserPrefs.k();
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
                if ((chatfeeditem instanceof Chat) && !((Chat)chatfeeditem).k() && !chatfeeditem.l().equals(s1) && ((Chat)chatfeeditem).g())
                {
                    long l2 = l1 - ((Chat)chatfeeditem).w();
                    (new EasyMetric("RECEIVED_CHAT_LIFETIME")).a(l2).c();
                }
            } while (true);
        }
    }

    public static void a(com.snapchat.android.notification.AndroidNotificationManager.Type type)
    {
        (new ErrorMetric("EMPTY_PUSH_NOTIFICATION_TEXT")).a("PUSH_NOTIFICATION_TYPE", type.name()).c();
    }

    public static void a(com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod swipeactivationmethod)
    {
        (new EasyMetric("SNAPCASH_SWIPE_TO_SEND_INITIATED")).a("method", swipeactivationmethod.name()).c();
    }

    public static void a(String s1)
    {
        EasyMetric easymetric = new EasyMetric("CAPTCHA_REGISTER");
        easymetric.a("unsuccessful_attempts", s1);
        easymetric.c();
    }

    public static void a(String s1, int i1)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_SEND_FAILED")).a("reason", s1).a("statusCode", Integer.valueOf(i1)).c();
    }

    public static void a(String s1, String s2)
    {
        EasyMetric easymetric = new EasyMetric("SNAP_PRIVACY_CHANGED");
        easymetric.a("old_privacy", s1);
        easymetric.a("new_privacy", s2);
        easymetric.c();
    }

    public static void a(String s1, boolean flag)
    {
        (new EasyMetric(s1)).a("value", Boolean.toString(flag)).c();
    }

    public static void a(String s1, boolean flag, boolean flag1, String s2)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("filter", s1);
        String s3;
        if (flag1)
        {
            s3 = "IMAGE";
        } else
        {
            s3 = "VIDEO";
        }
        hashmap.put("type", s3);
        if (flag)
        {
            hashmap.put("filter_id", s2);
        } else
        {
            hashmap.put("filter_id", "None");
        }
        (new EasyMetric("SWIPE_FILTER_PASSED")).a(hashmap).c();
    }

    public static void a(boolean flag)
    {
        EasyMetric easymetric = new EasyMetric("CAPTCHA_ATTEMPT");
        String s1;
        if (flag)
        {
            s1 = "true";
        } else
        {
            s1 = "false";
        }
        easymetric.a("success", s1);
        easymetric.c();
    }

    public static void a(boolean flag, int i1, int j1, int k1, int l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put(Param.FROM_NOTIFICATION.name(), String.valueOf(flag));
        hashmap.put(Param.NEWLY_RECEIVED_CHATS_COUNT.name(), String.valueOf(i1));
        hashmap.put(Param.NEWLY_RECEIVED_SNAPS_COUNT.name(), String.valueOf(j1));
        hashmap.put(Param.UNVIEWED_CHATS_COUNT.name(), String.valueOf(k1));
        hashmap.put(Param.UNVIEWED_SNAPS_COUNT.name(), String.valueOf(l1));
        (new EasyMetric(Event.SYNC_ALL.name())).a(hashmap).c();
    }

    public static void a(boolean flag, long l1)
    {
        EasyMetric easymetric = new EasyMetric("CHAT_CONNECT_ATTEMPT");
        String s1;
        if (flag)
        {
            s1 = "true";
        } else
        {
            s1 = "false";
        }
        easymetric.a("success", s1).c();
        if (flag)
        {
            (new EasyMetric("CHAT_CONNECTED")).c();
            (new EasyMetric("CHAT_CONNECT_LATENCY")).a(l1);
        }
    }

    public static void a(boolean flag, ReceivedSnap receivedsnap, User user)
    {
        Map map = c(receivedsnap, user);
        if (flag)
        {
            (new EasyMetric("REPLAY_ACCEPT")).b(map).c();
            return;
        } else
        {
            (new EasyMetric("REPLAY_DECLINE")).b(map).c();
            return;
        }
    }

    public static void a(boolean flag, String s1, List list)
    {
        if (flag && list != null)
        {
            ArrayList arraylist = new ArrayList(list);
            Collections.sort(list, new ChatFeedItemTimestampLargestFirstComparator());
            int i1;
            for (i1 = 0; i1 < arraylist.size() && !((ChatFeedItem)arraylist.get(i1)).l().equals(s1); i1++) { }
            if (i1 > 0)
            {
                (new EasyMetric("CHAT_RELEASED_POTENTIALLY_UNVIEWED")).c();
                return;
            }
        }
    }

    public static void a(boolean flag, boolean flag1, Integer integer, Integer integer1)
    {
        HashMap hashmap;
        hashmap = new HashMap();
        String s1;
        String s2;
        if (flag1)
        {
            s1 = "true";
        } else
        {
            s1 = "false";
        }
        hashmap.put("success", s1);
        if (flag)
        {
            s2 = "storySnap";
        } else
        {
            s2 = "snap";
        }
        hashmap.put("type", s2);
        if (integer == null) goto _L2; else goto _L1
_L1:
        integer.intValue();
        JVM INSTR lookupswitch 2: default 88
    //                   1: 201
    //                   100: 218;
           goto _L3 _L4 _L5
_L3:
        hashmap.put("what", Integer.toString(integer.intValue()));
_L2:
        if (integer1 == null) goto _L7; else goto _L6
_L6:
        integer1.intValue();
        JVM INSTR lookupswitch 3: default 148
    //                   -1010: 252
    //                   -1004: 235
    //                   -110: 269;
           goto _L8 _L9 _L10 _L11
_L11:
        break MISSING_BLOCK_LABEL_269;
_L8:
        hashmap.put("extra", Integer.toString(integer1.intValue()));
_L7:
        (new EasyMetric("VIDEO_PLAY_ATTEMPT")).a(hashmap).c();
        return;
_L4:
        hashmap.put("what", "MEDIA_ERROR_UNKNOWN");
          goto _L2
_L5:
        hashmap.put("what", "MEDIA_ERROR_SERVER_DIED");
          goto _L2
_L10:
        hashmap.put("extra", "MEDIA_ERROR_IO");
          goto _L7
_L9:
        hashmap.put("extra", "MEDIA_ERROR_UNSUPPORTED");
          goto _L7
        hashmap.put("extra", "MEDIA_ERROR_TIMED_OUT");
          goto _L7
    }

    public static String b(long l1)
    {
        if (l1 < 5000L)
        {
            return "0-4 s";
        }
        if (l1 < 10000L)
        {
            return "5-9 s";
        }
        if (l1 < 15000L)
        {
            return "10-14 s";
        }
        if (l1 < 20000L)
        {
            return "15-19 s";
        }
        if (l1 < 25000L)
        {
            return "20-24 s";
        }
        if (l1 < 30000L)
        {
            return "25-29 s";
        }
        if (l1 < 35000L)
        {
            return "30-34 s";
        }
        if (l1 < 40000L)
        {
            return "35-39 s";
        }
        if (l1 < 45000L)
        {
            return "40-44 s";
        }
        if (l1 < 50000L)
        {
            return "45-49 s";
        }
        if (l1 < 55000L)
        {
            return "50-54 s";
        }
        if (l1 < 60000L)
        {
            return "55-59 s";
        } else
        {
            return "60+ s";
        }
    }

    private static String b(ReceivedSnap receivedsnap)
    {
        switch (receivedsnap.ao())
        {
        default:
            return "IMAGE";

        case 1: // '\001'
            return "VIDEO";

        case 2: // '\002'
            return "VIDEO_NO_SOUND";
        }
    }

    private static Map b(boolean flag, StorySnap storysnap)
    {
        double d1 = (double)storysnap.E() / 1000D;
        double d2 = (double)Math.round(d1 * 10D) / 10D;
        boolean flag1;
        int i1;
        String s1;
        String s2;
        HashMap hashmap;
        if (d1 >= storysnap.M() - 0.10000000149011612D)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        i1 = 0;
        if (!flag)
        {
            i1 = 1;
        }
        s1 = storysnap.l();
        s2 = storysnap.d();
        hashmap = new HashMap(5);
        hashmap.put("time_viewed", Double.valueOf(d2));
        hashmap.put("full_view", Boolean.valueOf(flag1));
        hashmap.put("view_location", Integer.valueOf(i1));
        hashmap.put("poster_id", s1);
        hashmap.put("story_snap_id", s2);
        return hashmap;
    }

    public static void b()
    {
        (new EasyMetric("PAGE_SETTINGS")).c();
    }

    public static void b(int i1)
    {
        (new EasyMetric("DRAW")).a("num_strokes", Integer.valueOf(i1)).c();
    }

    public static void b(int i1, int j1)
    {
        EasyMetric easymetric = new EasyMetric("MediaPlayer onError");
        easymetric.a("what", Integer.valueOf(i1));
        easymetric.a("extra", Integer.valueOf(j1));
        easymetric.c();
    }

    public static void b(AnnotatedMediabryo annotatedmediabryo)
    {
        int i1 = annotatedmediabryo.u();
        int j1 = annotatedmediabryo.v();
        int k1 = i1 + j1;
        if (k1 > 0)
        {
            HashMap hashmap = new HashMap();
            String s1;
            if (annotatedmediabryo.b() == 0)
            {
                s1 = "IMAGE";
            } else
            {
                s1 = "VIDEO";
            }
            hashmap.put("type", s1);
            hashmap.put("filter", annotatedmediabryo.t());
            hashmap.put("number_of_filter_changes", Integer.toString(k1));
            hashmap.put("single_swipe_filter_changes", Integer.toString(i1));
            hashmap.put("double_swipe_filter_changes", Integer.toString(j1));
            (new EasyMetric("SWIPE_FILTER_SENT")).a(hashmap).c();
        }
    }

    public static void b(ReceivedSnap receivedsnap, User user)
    {
        Map map = c(receivedsnap, user);
        (new EasyMetric("REPLAY_PRESS_HOLD")).b(map).c();
    }

    public static void b(StorySnap storysnap)
    {
        HashMap hashmap = new HashMap(1);
        if (storysnap.e())
        {
            hashmap.put("sponsor", storysnap.f().c());
        }
        (new EasyMetric("REPLAY_PROMOTED_STORY_BUTTON_PRESS")).a(hashmap).c();
    }

    public static void b(String s1)
    {
        HashMap hashmap = new HashMap(1);
        hashmap.put("type", s1);
        (new EasyMetric("FILTER")).a(hashmap).c();
    }

    public static void b(String s1, int i1)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_RECEIVE_FAILED")).a("reason", s1).a("statusCode", Integer.valueOf(i1)).c();
    }

    public static void b(String s1, String s2)
    {
        (new EasyMetric("R01_REGISTER_EMAIL_SUCCESS")).b("email", s1).b("birthday", s2).c();
    }

    public static void b(String s1, boolean flag)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_SEND_INITIATED")).a("amount", s1).a("swipe", Boolean.valueOf(flag)).c();
    }

    public static void b(boolean flag)
    {
        EasyMetric easymetric = new EasyMetric("SEARCHABLE_BY_PHONE_NUMBER_CHANGED");
        String s1;
        if (flag)
        {
            s1 = "true";
        } else
        {
            s1 = "false";
        }
        easymetric.a("value", s1).c();
    }

    private static String c(StorySnap storysnap)
    {
        if (!storysnap.aK())
        {
            Timber.e("AnalyticsEvents", "onEndBrandSnapView called on a non-brand snap", new Object[0]);
        } else
        {
            String as[] = storysnap.d().split("~");
            if (as.length > 1)
            {
                return (new StringBuilder()).append("VIEW_BRAND_SNAP_STORY_").append(as[1]).toString();
            }
        }
        return null;
    }

    private static Map c(ReceivedSnap receivedsnap, User user)
    {
        TreeMap treemap = new TreeMap();
        treemap.put("sender_username", receivedsnap.l());
        treemap.put("viewer_username", UserPrefs.k());
        return treemap;
    }

    public static void c()
    {
        (new EasyMetric("PAGE_MY_FRIENDS_SESSION_START")).c();
    }

    public static void c(int i1)
    {
        (new EasyMetric("R01_USERNAME_TOO_SHORT")).a("number_of_letters", Integer.valueOf(i1)).c();
    }

    protected static void c(AnnotatedMediabryo annotatedmediabryo)
    {
        TreeMap treemap = new TreeMap();
        treemap.put("filter_impressions", String.valueOf(annotatedmediabryo.w()));
        if (TextUtils.equals(annotatedmediabryo.t(), "Geofilter"))
        {
            (new EasyMetric("SEND_STORY_GEOFILTER")).a(treemap).c();
        } else
        if (annotatedmediabryo.w() > 0)
        {
            (new EasyMetric("SEND_STORY_WITHOUT_GEOFILTER")).a(treemap).c();
            return;
        }
    }

    public static void c(String s1)
    {
        (new EasyMetric("DELETE_STORY")).b("id", s1).c();
    }

    public static void c(String s1, String s2)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("FROM", String.valueOf(s1));
        hashmap.put("TO", s2);
        FlurryAgent.logEvent("ACTIVITY_TRANSITION", hashmap);
    }

    public static void c(boolean flag)
    {
        EasyMetric easymetric = new EasyMetric("LOGOUT_DIALOG");
        String s1;
        if (flag)
        {
            s1 = "yes";
        } else
        {
            s1 = "no";
        }
        easymetric.a("result", s1).c();
    }

    private static String d(int i1)
    {
        switch (i1)
        {
        default:
            throw new RuntimeException((new StringBuilder()).append("Unexpected page number: ").append(i1).toString());

        case 0: // '\0'
            return "Chat";

        case 1: // '\001'
            return "Feed";

        case 2: // '\002'
            return "Camera";

        case 3: // '\003'
            return "My friends";

        case 4: // '\004'
            return "Discover";
        }
    }

    private static Map d(StorySnap storysnap)
    {
        HashMap hashmap = new HashMap(3);
        hashmap.put("id", storysnap.d());
        hashmap.put("viewer_username", UserPrefs.k());
        hashmap.put("poster_username", storysnap.l());
        return hashmap;
    }

    public static void d()
    {
        (new EasyMetric("PAGE_MY_FRIENDS_SESSION_END")).c();
    }

    public static void d(String s1)
    {
        (new EasyMetric("USER_OPENED_BROADCAST_SNAP_LINK")).a("url", s1).c();
    }

    public static void d(boolean flag)
    {
        HashMap hashmap = new HashMap(1);
        String s1;
        if (flag)
        {
            s1 = "skipped";
        } else
        {
            s1 = "redirected";
        }
        hashmap.put("result", s1);
        (new EasyMetric("SKIP_NEW_USER_ADD_FRIENDS")).a(hashmap).c();
    }

    private static String e(int i1)
    {
        if (i1 < 5)
        {
            return (new StringBuilder()).append("").append(i1).toString();
        }
        if (i1 < 10)
        {
            return "5_9";
        } else
        {
            return (new StringBuilder()).append("").append(i1 / 10).append("0").append("_").append(i1 / 10).append("9").toString();
        }
    }

    private static Map e(StorySnap storysnap)
    {
        double d1 = storysnap.M();
        String s1 = b(storysnap);
        HashMap hashmap = new HashMap(2);
        hashmap.put("snap_time", Double.valueOf(d1));
        hashmap.put("type", s1);
        return hashmap;
    }

    public static void e()
    {
        (new EasyMetric("MANAGE_ADDITIONAL_SERVICES")).c();
    }

    public static void e(String s1)
    {
        (new EasyMetric("VIEW_PROMOTED_STORY_CELL")).a("sponsor", s1).c();
    }

    public static void e(boolean flag)
    {
        EasyMetric easymetric = new EasyMetric("CHAT_STORY_REPLY");
        String s1;
        if (flag)
        {
            s1 = "1";
        } else
        {
            s1 = "0";
        }
        easymetric.a("follow_through", s1).c();
    }

    private static String f(int i1)
    {
        if (i1 < 5)
        {
            return "0_4";
        }
        if (i1 < 10)
        {
            return "5_9";
        }
        if (i1 < 50)
        {
            return (new StringBuilder()).append("").append(i1 / 10).append("0").append("_").append(i1 / 10).append("9").toString();
        } else
        {
            return "50_OR_MORE";
        }
    }

    public static void f()
    {
        (new EasyMetric("PAGE_CLEAR_FEED")).c();
    }

    public static void f(String s1)
    {
        TreeMap treemap = new TreeMap();
        treemap.put("message", s1);
        (new EasyMetric("Unsatisfied link error")).a(treemap).c();
    }

    public static void f(boolean flag)
    {
        HashMap hashmap = new HashMap(1);
        String s1;
        if (flag)
        {
            s1 = "yes";
        } else
        {
            s1 = "no";
        }
        hashmap.put("result", s1);
        (new EasyMetric("BETA_SIGNUP_DIALOG")).a(hashmap).c();
    }

    public static void g()
    {
        (new EasyMetric("FILTER_SETTING_CHANGED_FROM_CAMERA")).c();
    }

    public static void g(String s1)
    {
        (new EasyMetric((new StringBuilder()).append("CHAT_").append(s1.toUpperCase(Locale.US)).append("_VIEWED").toString())).c();
        (new EasyMetric("CHAT_VIEWED")).c();
        X();
    }

    public static void g(boolean flag)
    {
        HashMap hashmap = new HashMap(1);
        String s1;
        if (flag)
        {
            s1 = "yes";
        } else
        {
            s1 = "no";
        }
        hashmap.put("result", s1);
        (new EasyMetric("PLAY_STORE_REVIEW_DIALOG")).a(hashmap).c();
    }

    public static void h()
    {
        (new EasyMetric("TYPED_CAPTION")).c();
    }

    public static void h(String s1)
    {
        X();
    }

    public static void h(boolean flag)
    {
        if (flag)
        {
            (new EasyMetric("OPEN_NOTIFICATION")).c();
            return;
        } else
        {
            (new EasyMetric("OPEN")).c();
            return;
        }
    }

    public static void i()
    {
        (new EasyMetric("DRAWING_BUTTON_PRESSED")).c();
    }

    public static void i(String s1)
    {
        if (TextUtils.isEmpty(s1))
        {
            (new EasyMetric("NOTIFICATION_RECEIVED_UNSPECIFIED")).c();
            return;
        } else
        {
            (new EasyMetric((new StringBuilder()).append("NOTIFICATION_RECEIVED_").append(s1.toUpperCase(Locale.US)).toString())).c();
            return;
        }
    }

    public static void i(boolean flag)
    {
        (new EasyMetric("DOUBLE_TAP")).a("follow_through", Boolean.valueOf(flag)).c();
    }

    public static void j()
    {
        (new EasyMetric("CHAT_SESSION_START")).c();
    }

    public static void j(String s1)
    {
        if (TextUtils.isEmpty(s1))
        {
            (new EasyMetric("NOTIFICATION_OPENED_UNSPECIFIED")).c();
            return;
        } else
        {
            (new EasyMetric((new StringBuilder()).append("NOTIFICATION_OPENED_").append(s1.toUpperCase(Locale.US)).toString())).c();
            return;
        }
    }

    public static void j(boolean flag)
    {
        (new EasyMetric("SNAPCASH_CARD_LINKING_SUCCEEDED")).a("relink", Boolean.valueOf(flag)).c();
    }

    public static void k()
    {
        (new EasyMetric("R01_BEGIN_REGISTRATION")).c();
    }

    public static void k(String s1)
    {
        (new EasyMetric("R01_ADD_FRIEND")).b("name", s1).c();
    }

    public static void k(boolean flag)
    {
        (new EasyMetric("CHAT_OR_CASH_OPEN_FROM_NOTIF")).a("success", Boolean.valueOf(flag)).c();
    }

    public static void l()
    {
        (new EasyMetric("R01_LOGIN_SUCCESSFUL")).c();
    }

    public static void l(String s1)
    {
        (new EasyMetric("R01_DELETE_FRIEND")).b("name", s1).c();
    }

    public static void m()
    {
        (new EasyMetric("R01_FOCUS_ON_EMAIL")).c();
    }

    public static void m(String s1)
    {
        (new EasyMetric("R01_INVITE_FRIEND")).b("number", s1).c();
    }

    public static void n()
    {
        (new EasyMetric("R01_AUTO_FILL_EMAIL")).c();
    }

    public static void n(String s1)
    {
        (new EasyMetric("CLEAR_CONVERSATION")).b("cleared_username", s1).c();
    }

    public static void o()
    {
        (new EasyMetric("R01_EDITED_EMAIL")).c();
    }

    public static void o(String s1)
    {
        (new EasyMetric("SNAPCASH_PHONE_VERIFICATION_FAILED")).a("reason", s1).c();
    }

    public static void p()
    {
        (new EasyMetric("R01_EMAIL_EXISTS")).c();
    }

    public static void p(String s1)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_SENT")).a("amount", s1).c();
    }

    public static void q()
    {
        (new EasyMetric("R01_EMAIL_INVALID")).c();
    }

    public static void q(String s1)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_SEND_FAILED")).a("reason", s1).c();
    }

    public static void r()
    {
        (new EasyMetric("R01_FOCUS_ON_PASSWORD")).c();
    }

    public static void r(String s1)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_SEND_RETRIED")).a("amount", s1).c();
    }

    public static void s()
    {
        (new EasyMetric("R01_EDITED_PASSWORD")).c();
    }

    public static void s(String s1)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_RECEIVE_INITIATED")).a("amount", s1).c();
    }

    public static void t()
    {
        (new EasyMetric("R01_PASSWORD_TOO_SHORT")).c();
    }

    public static void t(String s1)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_RECEIVED")).a("amount", s1).c();
    }

    public static void u()
    {
        (new EasyMetric("R01_PASSWORD_TOO_COMMON")).c();
    }

    public static void u(String s1)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_RECEIVE_FAILED")).a("reason", s1).c();
    }

    public static void v()
    {
        (new EasyMetric("R01_PASSWORD_TOO_EASY")).c();
    }

    public static void v(String s1)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_EXPIRED")).a("amount", s1).c();
    }

    public static void w()
    {
        (new EasyMetric("R01_PASSWORD_SIMILAR_TO_USERNAME")).c();
    }

    public static void w(String s1)
    {
        (new EasyMetric("SNAPCASH_PAYMENT_REFUNDED")).a("amount", s1).c();
    }

    public static void x()
    {
        (new EasyMetric("R01_FOCUS_ON_BIRTHDAY")).c();
    }

    public static void x(String s1)
    {
        (new EasyMetric("SNAPCASH_CASH_TAG_CREATED")).a("amount", s1).c();
    }

    public static void y()
    {
        (new EasyMetric("R01_EDITED_BIRTHDAY")).c();
    }

    public static void y(String s1)
    {
        (new EasyMetric("SNAPCASH_CARD_LINKING_FAILED")).a("reason", s1).c();
    }

    public static void z()
    {
        (new EasyMetric("R01_ATTEMPT_REGISTER_EMAIL")).c();
    }

}
