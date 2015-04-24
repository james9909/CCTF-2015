// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.Schema;
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
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.snapchat.android.database.table:
//            ContactOnSnapchatTable, ContactNotOnSnapchatTable, FriendsWhoAddedMeTable, FriendTable, 
//            SentSnapTable, ReceivedSnapTable, ScreenshotDetectionSessionTable, SnapImageFileTable, 
//            SnapVideoFileTable, StoryImageFileTable, StoryImageThumbnailFileTable, StoryVideoFileTable, 
//            MyMediaFileTable, StoryGroupTable, MyPostedStorySnapTable, FriendStorySnapTable, 
//            UpdateSnapsAnalyticsTable, FailedPostSnapbryoTable, FailedSendSnapbryoTable, FailedChatMediaSnapbryoTable, 
//            SendingSnapbryoTable, ConversationTable, ChatTable, NotificationTable, 
//            ChatsReceivedInLastHourTable, ClearedChatIdsTable, GeofilterFileTable, HasSeenPostToOurStoryDialogTable, 
//            HasSeenOurCampusStoryDialogTable, StorySnapNoteTable, HttpMetricsTable, CashFeedItemTable, 
//            ProfileImageFileTable

public abstract class DbTable
{
    public static final class DatabaseTable extends Enum
    {

        public static final DatabaseTable A;
        public static final DatabaseTable B;
        public static final DatabaseTable C;
        public static final DatabaseTable D;
        public static final DatabaseTable E;
        public static final DatabaseTable F;
        public static final DatabaseTable G;
        public static final DatabaseTable H;
        public static final DatabaseTable I;
        public static final DatabaseTable J;
        public static final DatabaseTable K;
        public static final DatabaseTable L;
        public static final DatabaseTable M;
        public static final DatabaseTable N;
        public static final DatabaseTable O;
        public static final DatabaseTable P;
        public static final DatabaseTable Q;
        public static final DatabaseTable R;
        private static final DatabaseTable T[];
        public static final DatabaseTable a;
        public static final DatabaseTable b;
        public static final DatabaseTable c;
        public static final DatabaseTable d;
        public static final DatabaseTable e;
        public static final DatabaseTable f;
        public static final DatabaseTable g;
        public static final DatabaseTable h;
        public static final DatabaseTable i;
        public static final DatabaseTable j;
        public static final DatabaseTable k;
        public static final DatabaseTable l;
        public static final DatabaseTable m;
        public static final DatabaseTable n;
        public static final DatabaseTable o;
        public static final DatabaseTable p;
        public static final DatabaseTable q;
        public static final DatabaseTable r;
        public static final DatabaseTable s;
        public static final DatabaseTable t;
        public static final DatabaseTable u;
        public static final DatabaseTable v;
        public static final DatabaseTable w;
        public static final DatabaseTable x;
        public static final DatabaseTable y;
        public static final DatabaseTable z;
        private DbTable S;

        public static DatabaseTable valueOf(String s1)
        {
            return (DatabaseTable)Enum.valueOf(com/snapchat/android/database/table/DbTable$DatabaseTable, s1);
        }

        public static DatabaseTable[] values()
        {
            return (DatabaseTable[])T.clone();
        }

        public DbTable a()
        {
            return S;
        }

        static 
        {
            a = new DatabaseTable("CONTACTS_ON_SNAPCHAT", 0, ContactOnSnapchatTable.b());
            b = new DatabaseTable("CONTACTS_NOT_ON_SNAPCHAT", 1, ContactNotOnSnapchatTable.b());
            c = new DatabaseTable("FRIENDS_WHO_ADDED_ME", 2, FriendsWhoAddedMeTable.b());
            d = new DatabaseTable("FRIENDS", 3, FriendTable.f());
            e = new DatabaseTable("SENT_SNAPS", 4, SentSnapTable.b());
            f = new DatabaseTable("RECEIVED_SNAPS", 5, ReceivedSnapTable.b());
            g = new DatabaseTable("VIEWING_SESSIONS", 6, ScreenshotDetectionSessionTable.b());
            h = new DatabaseTable("SNAP_IMAGE_FILES", 7, SnapImageFileTable.b());
            i = new DatabaseTable("SNAP_VIDEO_FILES", 8, SnapVideoFileTable.b());
            j = new DatabaseTable("STORY_IMAGE_FILES", 9, StoryImageFileTable.b());
            k = new DatabaseTable("STORY_IMAGE_THUMBNAIL_FILES", 10, StoryImageThumbnailFileTable.b());
            l = new DatabaseTable("STORY_VIDEO_FILES", 11, StoryVideoFileTable.b());
            m = new DatabaseTable("MY_STORY_FILES", 12, MyMediaFileTable.b());
            n = new DatabaseTable("STORY_GROUPS", 13, StoryGroupTable.b());
            o = new DatabaseTable("MY_POSTED_STORIES", 14, MyPostedStorySnapTable.b());
            p = new DatabaseTable("FRIEND_STORIES", 15, FriendStorySnapTable.b());
            q = new DatabaseTable("ANALYTICS_EVENTS", 16, UpdateSnapsAnalyticsTable.b());
            r = new DatabaseTable("FAILED_POST_SNAPBRYOS", 17, FailedPostSnapbryoTable.b());
            s = new DatabaseTable("FAILED_SEND_SNAPBRYOS", 18, FailedSendSnapbryoTable.b());
            t = new DatabaseTable("FAILED_CHAT_MEDIA_SNAPBRYOS", 19, FailedChatMediaSnapbryoTable.b());
            u = new DatabaseTable("SENDING_SNAPBRYOS", 20, SendingSnapbryoTable.b());
            v = new DatabaseTable("CONVERSATION", 21, ConversationTable.b());
            w = new DatabaseTable("CHAT", 22, ChatTable.b());
            x = new DatabaseTable("NOTIFICATION", 23, NotificationTable.b());
            y = new DatabaseTable("CHATS_FROM_LAST_HOUR", 24, ChatsReceivedInLastHourTable.b());
            z = new DatabaseTable("CLEARED_CHAT_IDS", 25, ClearedChatIdsTable.b());
            A = new DatabaseTable("GEOFILTER_FILES", 26, GeofilterFileTable.b());
            B = new DatabaseTable("HAS_SEEN_OUR_STORY_DIALOG_TABLE", 27, HasSeenPostToOurStoryDialogTable.b());
            C = new DatabaseTable("HAS_SEEN_OUR_CAMPUS_STORY_DIALOG_TABLE", 28, HasSeenOurCampusStoryDialogTable.b());
            D = new DatabaseTable("STORY_SNAP_NOTE_TABLE", 29, StorySnapNoteTable.b());
            E = new DatabaseTable("HTTP_METRICS", 30, HttpMetricsTable.b());
            F = new DatabaseTable("CASH_FEED_ITEM", 31, CashFeedItemTable.b());
            G = new DatabaseTable("PUBLISHER_CHANNELS", 32, PublisherChannelTable.b());
            H = new DatabaseTable("EDITIONS", 33, EditionTable.b());
            I = new DatabaseTable("EDITION_CHUNKS", 34, EditionChunkTable.b());
            J = new DatabaseTable("DSNAPS", 35, DSnapTable.b());
            K = new DatabaseTable("DSNAP_ITEMS", 36, DSnapItemTable.b());
            L = new DatabaseTable("INTRO_VIDEO_FILES", 37, IntroVideoFileTable.b());
            M = new DatabaseTable("PUBLISHER_ICONS", 38, PublisherIconTable.b());
            N = new DatabaseTable("EDITION_CHUNK_FILES", 39, EditionChunkFileTable.b());
            O = new DatabaseTable("EDITION_VIEW_STATE", 40, EditionViewStateTable.b());
            P = new DatabaseTable("CHANNEL_VIEW_STATE", 41, ChannelViewStateTable.b());
            Q = new DatabaseTable("DSNAP_VIEW_STATE", 42, DSnapViewStateTable.b());
            R = new DatabaseTable("PROFILE_IMAGE_FILE_TABLE", 43, ProfileImageFileTable.b());
            DatabaseTable adatabasetable[] = new DatabaseTable[44];
            adatabasetable[0] = a;
            adatabasetable[1] = b;
            adatabasetable[2] = c;
            adatabasetable[3] = d;
            adatabasetable[4] = e;
            adatabasetable[5] = f;
            adatabasetable[6] = g;
            adatabasetable[7] = h;
            adatabasetable[8] = i;
            adatabasetable[9] = j;
            adatabasetable[10] = k;
            adatabasetable[11] = l;
            adatabasetable[12] = m;
            adatabasetable[13] = n;
            adatabasetable[14] = o;
            adatabasetable[15] = p;
            adatabasetable[16] = q;
            adatabasetable[17] = r;
            adatabasetable[18] = s;
            adatabasetable[19] = t;
            adatabasetable[20] = u;
            adatabasetable[21] = v;
            adatabasetable[22] = w;
            adatabasetable[23] = x;
            adatabasetable[24] = y;
            adatabasetable[25] = z;
            adatabasetable[26] = A;
            adatabasetable[27] = B;
            adatabasetable[28] = C;
            adatabasetable[29] = D;
            adatabasetable[30] = E;
            adatabasetable[31] = F;
            adatabasetable[32] = G;
            adatabasetable[33] = H;
            adatabasetable[34] = I;
            adatabasetable[35] = J;
            adatabasetable[36] = K;
            adatabasetable[37] = L;
            adatabasetable[38] = M;
            adatabasetable[39] = N;
            adatabasetable[40] = O;
            adatabasetable[41] = P;
            adatabasetable[42] = Q;
            adatabasetable[43] = R;
            T = adatabasetable;
        }

        private DatabaseTable(String s1, int i1, DbTable dbtable)
        {
            super(s1, i1);
            S = dbtable;
        }
    }


    protected static Lock c = new ReentrantLock();
    protected SQLiteDatabase d;

    public DbTable()
    {
    }

    protected static int a(boolean flag)
    {
        return !flag ? 0 : 1;
    }

    protected static boolean a(int i1)
    {
        return i1 != 0;
    }

    public static void b(SQLiteDatabase sqlitedatabase, String s)
    {
        Timber.c("DbTable", (new StringBuilder()).append("Drop table ").append(s).toString(), new Object[0]);
        sqlitedatabase.execSQL((new StringBuilder()).append("DROP TABLE IF EXISTS ").append(s).toString());
    }

    public abstract ContentValues a(Object obj);

    public abstract String a();

    protected String a(Schema aschema[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i1 = aschema.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            Schema schema = aschema[j1];
            if (j1 > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(schema.c()).append(" ").append(schema.a().toString()).toString());
            String s = schema.d();
            if (!TextUtils.isEmpty(s))
            {
                stringbuilder.append(" ");
                stringbuilder.append(s);
            }
        }

        return stringbuilder.toString();
    }

    protected List a(String s, String s1)
    {
        Cursor cursor;
        j().lock();
        cursor = d.query(a(), null, s, null, null, null, s1);
        SQLiteDatabase sqlitedatabase = o();
        if (sqlitedatabase == null)
        {
            if (cursor != null)
            {
                cursor.close();
            }
            j().unlock();
            return null;
        }
        ArrayList arraylist;
        arraylist = new ArrayList();
        Object aobj[] = new Object[1];
        aobj[0] = a();
        Timber.b("DbTable", "Querying [%s] database table", aobj);
        cursor.moveToFirst();
_L2:
        Object obj;
        if (cursor.isAfterLast())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = b(cursor);
        if (obj == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        arraylist.add(obj);
        if (cursor.moveToNext()) goto _L2; else goto _L1
_L1:
        Object aobj1[] = new Object[2];
        aobj1[0] = a();
        aobj1[1] = Integer.valueOf(arraylist.size());
        Timber.b("DbTable", "DbTable [%s] retrieved %d elements of data", aobj1);
        if (cursor != null)
        {
            cursor.close();
        }
        j().unlock();
        return arraylist;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        j().unlock();
        throw exception;
    }

    protected void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.delete(a(), null, null);
    }

    public void a(User user)
    {
    }

    protected Object b(Cursor cursor)
    {
        return null;
    }

    public abstract Collection b(User user);

    public String c()
    {
        return a(d());
    }

    public void c(User user)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
_L4:
        do
        {
            return;
        } while (e() || o() == null);
        j().lock();
        Collection collection;
        d.beginTransaction();
        k();
        collection = b(user);
        flag = false;
        if (collection == null)
        {
            break MISSING_BLOCK_LABEL_200;
        }
        boolean flag1 = collection.isEmpty();
        flag = false;
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_200;
        }
        Iterator iterator;
        Timber.c("DbTable", (new StringBuilder()).append("saveToDatabaseAsync ").append(a()).append(" ").append(collection.size()).append(" item(s)").toString(), new Object[0]);
        iterator = collection.iterator();
        boolean flag2 = false;
_L2:
        ContentValues contentvalues;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        contentvalues = a(iterator.next());
        if (contentvalues == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        long l1;
        if (contentvalues.size() <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        l1 = d.insert(a(), null, contentvalues);
        if (l1 == -1L)
        {
            flag2 = true;
        }
        if (true) goto _L2; else goto _L1
_L1:
        flag = flag2;
        d.setTransactionSuccessful();
        d.endTransaction();
        j().unlock();
        if (!flag) goto _L4; else goto _L3
_L3:
        UserPrefs.ak();
        UserPrefs.al();
        return;
        Exception exception;
        exception;
_L6:
        d.endTransaction();
        j().unlock();
        if (flag);
        UserPrefs.ak();
        UserPrefs.al();
        throw exception;
        Exception exception1;
        exception1;
        flag = flag2;
        exception = exception1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void d(User user)
    {
        if (o() == null)
        {
            return;
        }
        j().lock();
        Object aobj[] = new Object[1];
        aobj[0] = a();
        Timber.c("DbTable", "Calling populateUserObjectFromTable from %s table", aobj);
        a(user);
        j().unlock();
        return;
        Exception exception;
        exception;
        j().unlock();
        throw exception;
    }

    public abstract Schema[] d();

    public boolean e()
    {
        return false;
    }

    public String[] i()
    {
        Schema aschema[] = d();
        int i1 = aschema.length;
        String as[] = new String[i1];
        for (int j1 = 0; j1 < i1; j1++)
        {
            as[j1] = aschema[j1].c();
        }

        return as;
    }

    public Lock j()
    {
        return c;
    }

    protected void k()
    {
        d.delete(a(), null, null);
    }

    public void l()
    {
        if (o() == null)
        {
            return;
        }
        j().lock();
        k();
        j().unlock();
        return;
        Exception exception;
        exception;
        j().unlock();
        throw exception;
    }

    public boolean m()
    {
        return true;
    }

    public String n()
    {
        return (new StringBuilder()).append("CREATE TABLE ").append(a()).append(" (").append(c()).append(");").toString();
    }

    protected SQLiteDatabase o()
    {
        DatabaseHelper databasehelper = DatabaseHelper.a(SnapchatApplication.e());
        if (databasehelper == null)
        {
            Timber.e("DbTable", "Database helper is null", new Object[0]);
            return null;
        }
        d = databasehelper.getWritableDatabase();
        if (d == null)
        {
            Timber.e("DbTable", "Writeable database is null", new Object[0]);
            return null;
        } else
        {
            return d;
        }
    }

}
