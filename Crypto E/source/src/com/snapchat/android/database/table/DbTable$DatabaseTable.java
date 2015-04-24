// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.discover.model.database.table.ChannelViewStateTable;
import com.snapchat.android.discover.model.database.table.DSnapItemTable;
import com.snapchat.android.discover.model.database.table.DSnapTable;
import com.snapchat.android.discover.model.database.table.DSnapViewStateTable;
import com.snapchat.android.discover.model.database.table.EditionChunkFileTable;
import com.snapchat.android.discover.model.database.table.EditionChunkTable;
import com.snapchat.android.discover.model.database.table.EditionTable;
import com.snapchat.android.discover.model.database.table.EditionViewStateTable;
import com.snapchat.android.discover.model.database.table.IntroVideoFileTable;
import com.snapchat.android.discover.model.database.table.PublisherChannelTable;
import com.snapchat.android.discover.model.database.table.PublisherIconTable;

// Referenced classes of package com.snapchat.android.database.table:
//            ContactOnSnapchatTable, ContactNotOnSnapchatTable, FriendsWhoAddedMeTable, FriendTable, 
//            SentSnapTable, ReceivedSnapTable, ScreenshotDetectionSessionTable, SnapImageFileTable, 
//            SnapVideoFileTable, StoryImageFileTable, StoryImageThumbnailFileTable, StoryVideoFileTable, 
//            MyMediaFileTable, StoryGroupTable, MyPostedStorySnapTable, FriendStorySnapTable, 
//            UpdateSnapsAnalyticsTable, FailedPostSnapbryoTable, FailedSendSnapbryoTable, FailedChatMediaSnapbryoTable, 
//            SendingSnapbryoTable, ConversationTable, ChatTable, NotificationTable, 
//            ChatsReceivedInLastHourTable, ClearedChatIdsTable, GeofilterFileTable, HasSeenPostToOurStoryDialogTable, 
//            HasSeenOurCampusStoryDialogTable, StorySnapNoteTable, HttpMetricsTable, CashFeedItemTable, 
//            ProfileImageFileTable, DbTable

public static final class S extends Enum
{

    public static final T A;
    public static final T B;
    public static final T C;
    public static final T D;
    public static final T E;
    public static final T F;
    public static final T G;
    public static final T H;
    public static final T I;
    public static final T J;
    public static final T K;
    public static final T L;
    public static final T M;
    public static final T N;
    public static final T O;
    public static final T P;
    public static final T Q;
    public static final T R;
    private static final T T[];
    public static final T a;
    public static final T b;
    public static final T c;
    public static final T d;
    public static final T e;
    public static final T f;
    public static final T g;
    public static final T h;
    public static final T i;
    public static final T j;
    public static final T k;
    public static final T l;
    public static final T m;
    public static final T n;
    public static final T o;
    public static final T p;
    public static final T q;
    public static final T r;
    public static final T s;
    public static final T t;
    public static final T u;
    public static final T v;
    public static final T w;
    public static final T x;
    public static final T y;
    public static final T z;
    private DbTable S;

    public static S valueOf(String s1)
    {
        return (S)Enum.valueOf(com/snapchat/android/database/table/DbTable$DatabaseTable, s1);
    }

    public static S[] values()
    {
        return (S[])T.clone();
    }

    public DbTable a()
    {
        return S;
    }

    static 
    {
        a = new <init>("CONTACTS_ON_SNAPCHAT", 0, ContactOnSnapchatTable.b());
        b = new <init>("CONTACTS_NOT_ON_SNAPCHAT", 1, ContactNotOnSnapchatTable.b());
        c = new <init>("FRIENDS_WHO_ADDED_ME", 2, FriendsWhoAddedMeTable.b());
        d = new <init>("FRIENDS", 3, FriendTable.f());
        e = new <init>("SENT_SNAPS", 4, SentSnapTable.b());
        f = new <init>("RECEIVED_SNAPS", 5, ReceivedSnapTable.b());
        g = new <init>("VIEWING_SESSIONS", 6, ScreenshotDetectionSessionTable.b());
        h = new <init>("SNAP_IMAGE_FILES", 7, SnapImageFileTable.b());
        i = new <init>("SNAP_VIDEO_FILES", 8, SnapVideoFileTable.b());
        j = new <init>("STORY_IMAGE_FILES", 9, StoryImageFileTable.b());
        k = new <init>("STORY_IMAGE_THUMBNAIL_FILES", 10, StoryImageThumbnailFileTable.b());
        l = new <init>("STORY_VIDEO_FILES", 11, StoryVideoFileTable.b());
        m = new <init>("MY_STORY_FILES", 12, MyMediaFileTable.b());
        n = new <init>("STORY_GROUPS", 13, StoryGroupTable.b());
        o = new <init>("MY_POSTED_STORIES", 14, MyPostedStorySnapTable.b());
        p = new <init>("FRIEND_STORIES", 15, FriendStorySnapTable.b());
        q = new <init>("ANALYTICS_EVENTS", 16, UpdateSnapsAnalyticsTable.b());
        r = new <init>("FAILED_POST_SNAPBRYOS", 17, FailedPostSnapbryoTable.b());
        s = new <init>("FAILED_SEND_SNAPBRYOS", 18, FailedSendSnapbryoTable.b());
        t = new <init>("FAILED_CHAT_MEDIA_SNAPBRYOS", 19, FailedChatMediaSnapbryoTable.b());
        u = new <init>("SENDING_SNAPBRYOS", 20, SendingSnapbryoTable.b());
        v = new <init>("CONVERSATION", 21, ConversationTable.b());
        w = new <init>("CHAT", 22, ChatTable.b());
        x = new <init>("NOTIFICATION", 23, NotificationTable.b());
        y = new <init>("CHATS_FROM_LAST_HOUR", 24, ChatsReceivedInLastHourTable.b());
        z = new <init>("CLEARED_CHAT_IDS", 25, ClearedChatIdsTable.b());
        A = new <init>("GEOFILTER_FILES", 26, GeofilterFileTable.b());
        B = new <init>("HAS_SEEN_OUR_STORY_DIALOG_TABLE", 27, HasSeenPostToOurStoryDialogTable.b());
        C = new <init>("HAS_SEEN_OUR_CAMPUS_STORY_DIALOG_TABLE", 28, HasSeenOurCampusStoryDialogTable.b());
        D = new <init>("STORY_SNAP_NOTE_TABLE", 29, StorySnapNoteTable.b());
        E = new <init>("HTTP_METRICS", 30, HttpMetricsTable.b());
        F = new <init>("CASH_FEED_ITEM", 31, CashFeedItemTable.b());
        G = new <init>("PUBLISHER_CHANNELS", 32, PublisherChannelTable.b());
        H = new <init>("EDITIONS", 33, EditionTable.b());
        I = new <init>("EDITION_CHUNKS", 34, EditionChunkTable.b());
        J = new <init>("DSNAPS", 35, DSnapTable.b());
        K = new <init>("DSNAP_ITEMS", 36, DSnapItemTable.b());
        L = new <init>("INTRO_VIDEO_FILES", 37, IntroVideoFileTable.b());
        M = new <init>("PUBLISHER_ICONS", 38, PublisherIconTable.b());
        N = new <init>("EDITION_CHUNK_FILES", 39, EditionChunkFileTable.b());
        O = new <init>("EDITION_VIEW_STATE", 40, EditionViewStateTable.b());
        P = new <init>("CHANNEL_VIEW_STATE", 41, ChannelViewStateTable.b());
        Q = new <init>("DSNAP_VIEW_STATE", 42, DSnapViewStateTable.b());
        R = new <init>("PROFILE_IMAGE_FILE_TABLE", 43, ProfileImageFileTable.b());
        S as[] = new b[44];
        as[0] = a;
        as[1] = b;
        as[2] = c;
        as[3] = d;
        as[4] = e;
        as[5] = f;
        as[6] = g;
        as[7] = h;
        as[8] = i;
        as[9] = j;
        as[10] = k;
        as[11] = l;
        as[12] = m;
        as[13] = n;
        as[14] = o;
        as[15] = p;
        as[16] = q;
        as[17] = r;
        as[18] = s;
        as[19] = t;
        as[20] = u;
        as[21] = v;
        as[22] = w;
        as[23] = x;
        as[24] = y;
        as[25] = z;
        as[26] = A;
        as[27] = B;
        as[28] = C;
        as[29] = D;
        as[30] = E;
        as[31] = F;
        as[32] = G;
        as[33] = H;
        as[34] = I;
        as[35] = J;
        as[36] = K;
        as[37] = L;
        as[38] = M;
        as[39] = N;
        as[40] = O;
        as[41] = P;
        as[42] = Q;
        as[43] = R;
        T = as;
    }

    private ewStateTable(String s1, int i1, DbTable dbtable)
    {
        super(s1, i1);
        S = dbtable;
    }
}
