// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.SponsoredStoryMetadata;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StoryViewRecord;
import com.snapchat.android.model.User;
import com.snapchat.android.model.server.CaptionParameters;
import java.util.Map;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ContentValuesBuilder

public abstract class StorySnapTable extends DbTable
{
    public static final class StorySnapSchema extends Enum
        implements Schema
    {

        public static final StorySnapSchema A;
        private static final StorySnapSchema E[];
        public static final StorySnapSchema a;
        public static final StorySnapSchema b;
        public static final StorySnapSchema c;
        public static final StorySnapSchema d;
        public static final StorySnapSchema e;
        public static final StorySnapSchema f;
        public static final StorySnapSchema g;
        public static final StorySnapSchema h;
        public static final StorySnapSchema i;
        public static final StorySnapSchema j;
        public static final StorySnapSchema k;
        public static final StorySnapSchema l;
        public static final StorySnapSchema m;
        public static final StorySnapSchema n;
        public static final StorySnapSchema o;
        public static final StorySnapSchema p;
        public static final StorySnapSchema q;
        public static final StorySnapSchema r;
        public static final StorySnapSchema s;
        public static final StorySnapSchema t;
        public static final StorySnapSchema u;
        public static final StorySnapSchema v;
        public static final StorySnapSchema w;
        public static final StorySnapSchema x;
        public static final StorySnapSchema y;
        public static final StorySnapSchema z;
        private int B;
        private String C;
        private DataType D;

        static String a(StorySnapSchema storysnapschema)
        {
            return storysnapschema.C;
        }

        static DataType b(StorySnapSchema storysnapschema)
        {
            return storysnapschema.D;
        }

        public static StorySnapSchema valueOf(String s1)
        {
            return (StorySnapSchema)Enum.valueOf(com/snapchat/android/database/table/StorySnapTable$StorySnapSchema, s1);
        }

        public static StorySnapSchema[] values()
        {
            return (StorySnapSchema[])E.clone();
        }

        public DataType a()
        {
            return D;
        }

        public int b()
        {
            return B;
        }

        public String c()
        {
            return C;
        }

        public String d()
        {
            return null;
        }

        static 
        {
            a = new StorySnapSchema("STORY_SNAP_ID", 0, 1, "StorySnapId", DataType.a);
            b = new StorySnapSchema("CLIENT_ID", 1, 2, "ClientId", DataType.a);
            c = new StorySnapSchema("MEDIA_ID", 2, 3, "MediaId", DataType.a);
            d = new StorySnapSchema("TIMESTAMP", 3, 4, "Timestamp", DataType.b);
            e = new StorySnapSchema("MEDIA_TYPE", 4, 5, "MediaType", DataType.b);
            f = new StorySnapSchema("MEDIA_URL", 5, 6, "MediaUrl", DataType.a);
            g = new StorySnapSchema("THUMBNAIL_URL", 6, 7, "ThumbnailUrl", DataType.a);
            h = new StorySnapSchema("STATUS", 7, 8, "Status", DataType.a);
            i = new StorySnapSchema("USERNAME", 8, 9, "Username", DataType.a);
            j = new StorySnapSchema("DISPLAY_TIME", 9, 10, "DisplayTime", DataType.b);
            k = new StorySnapSchema("CAPTION_TEXT", 10, 11, "CaptionText", DataType.a);
            l = new StorySnapSchema("CAPTION_ORIENTATION", 11, 12, "CaptionOrientation", DataType.b);
            m = new StorySnapSchema("CAPTION_POSITION", 12, 13, "CaptionPosition", DataType.e);
            n = new StorySnapSchema("IS_VIEWED", 13, 14, "IsViewed", DataType.d);
            o = new StorySnapSchema("IS_SCREENSHOTTED", 14, 15, "IsScreenshotted", DataType.d);
            p = new StorySnapSchema("VIEWED_TIMESTAMP", 15, 16, "ViewedTimestamp", DataType.b);
            q = new StorySnapSchema("IS_UPDATED", 16, 17, "IsUpdated", DataType.d);
            r = new StorySnapSchema("IS_FAILED", 17, 18, "IsFailed", DataType.d);
            s = new StorySnapSchema("IS_ZIPPED", 18, 19, "IsZipped", DataType.d);
            t = new StorySnapSchema("FILTER_ID", 19, 20, "FilterId", DataType.a);
            u = new StorySnapSchema("WAS_404_RESPONSE_RECEIVED", 20, 21, "Was404ResponseReceived", DataType.d);
            v = new StorySnapSchema("STORY_ID", 21, 22, "StoryId", DataType.a);
            w = new StorySnapSchema("IS_SHARED", 22, 23, "IsShared", DataType.d);
            x = new StorySnapSchema("SPONSORED_PREVIEW_DISPLAY_NAME", 23, 24, "SponsoredPreviewDisplayName", DataType.a);
            y = new StorySnapSchema("SPONSORED_POSTVIEW_DISPLAY_NAME", 24, 25, "SponsoredPostviewDisplayName", DataType.a);
            z = new StorySnapSchema("SPONSORED_SPONSOR", 25, 26, "SponsoredSponsor", DataType.a);
            A = new StorySnapSchema("SPONSORED_TAG_URL", 26, 27, "SponsoredTagUrl", DataType.a);
            StorySnapSchema astorysnapschema[] = new StorySnapSchema[27];
            astorysnapschema[0] = a;
            astorysnapschema[1] = b;
            astorysnapschema[2] = c;
            astorysnapschema[3] = d;
            astorysnapschema[4] = e;
            astorysnapschema[5] = f;
            astorysnapschema[6] = g;
            astorysnapschema[7] = h;
            astorysnapschema[8] = i;
            astorysnapschema[9] = j;
            astorysnapschema[10] = k;
            astorysnapschema[11] = l;
            astorysnapschema[12] = m;
            astorysnapschema[13] = n;
            astorysnapschema[14] = o;
            astorysnapschema[15] = p;
            astorysnapschema[16] = q;
            astorysnapschema[17] = r;
            astorysnapschema[18] = s;
            astorysnapschema[19] = t;
            astorysnapschema[20] = u;
            astorysnapschema[21] = v;
            astorysnapschema[22] = w;
            astorysnapschema[23] = x;
            astorysnapschema[24] = y;
            astorysnapschema[25] = z;
            astorysnapschema[26] = A;
            E = astorysnapschema;
        }

        private StorySnapSchema(String s1, int i1, int j1, String s2, DataType datatype)
        {
            super(s1, i1);
            B = j1;
            C = s2;
            D = datatype;
        }
    }


    public StorySnapTable()
    {
    }

    protected ContentValues a(StorySnap storysnap)
    {
        if (storysnap == null)
        {
            return null;
        }
        ContentValuesBuilder contentvaluesbuilder = new ContentValuesBuilder();
        contentvaluesbuilder.a(StorySnapSchema.a, storysnap.d());
        contentvaluesbuilder.a(StorySnapSchema.b, storysnap.ay());
        contentvaluesbuilder.a(StorySnapSchema.c, storysnap.az());
        contentvaluesbuilder.a(StorySnapSchema.d, storysnap.ae());
        contentvaluesbuilder.a(StorySnapSchema.e, storysnap.ao());
        contentvaluesbuilder.a(StorySnapSchema.f, storysnap.ax());
        contentvaluesbuilder.a(StorySnapSchema.g, storysnap.aA());
        com.snapchat.android.model.Snap.ClientSnapStatus clientsnapstatus = storysnap.al();
        StorySnapSchema storysnapschema = StorySnapSchema.h;
        String s;
        CaptionParameters captionparameters;
        String s1;
        User user;
        SponsoredStoryMetadata sponsoredstorymetadata;
        if (clientsnapstatus == null)
        {
            s = "";
        } else
        {
            s = clientsnapstatus.name();
        }
        contentvaluesbuilder.a(storysnapschema, s);
        contentvaluesbuilder.a(StorySnapSchema.i, storysnap.aB());
        contentvaluesbuilder.a(StorySnapSchema.j, storysnap.M());
        captionparameters = storysnap.aD();
        s1 = storysnap.ab();
        if (captionparameters == null)
        {
            StorySnapSchema storysnapschema2 = StorySnapSchema.k;
            if (s1 == null)
            {
                s1 = "";
            }
            contentvaluesbuilder.a(storysnapschema2, s1);
            contentvaluesbuilder.a(StorySnapSchema.l, 0);
            contentvaluesbuilder.a(StorySnapSchema.m, 0);
        } else
        {
            StorySnapSchema storysnapschema1 = StorySnapSchema.k;
            if (s1 == null)
            {
                s1 = captionparameters.getText();
            }
            contentvaluesbuilder.a(storysnapschema1, s1);
            contentvaluesbuilder.a(StorySnapSchema.l, captionparameters.getOrientation());
            contentvaluesbuilder.a(StorySnapSchema.m, captionparameters.getPosition());
        }
        contentvaluesbuilder.a(StorySnapSchema.n, a(storysnap.F()));
        contentvaluesbuilder.a(StorySnapSchema.o, a(storysnap.H()));
        contentvaluesbuilder.a(StorySnapSchema.p, storysnap.L());
        user = User.c();
        if (user == null || storysnap.d() == null)
        {
            contentvaluesbuilder.a(StorySnapSchema.q, 0);
        } else
        {
            boolean flag;
            if (user.e().get(storysnap.d()) != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            contentvaluesbuilder.a(StorySnapSchema.q, a(flag));
        }
        contentvaluesbuilder.a(StorySnapSchema.r, a(storysnap.aE()));
        contentvaluesbuilder.a(StorySnapSchema.s, a(storysnap.k()));
        contentvaluesbuilder.a(StorySnapSchema.t, storysnap.O());
        contentvaluesbuilder.a(StorySnapSchema.u, a(storysnap.aH()));
        contentvaluesbuilder.a(StorySnapSchema.v, storysnap.aI());
        contentvaluesbuilder.a(StorySnapSchema.w, a(storysnap.aJ()));
        sponsoredstorymetadata = storysnap.f();
        if (sponsoredstorymetadata != null)
        {
            contentvaluesbuilder.a(StorySnapSchema.x, sponsoredstorymetadata.a());
            contentvaluesbuilder.a(StorySnapSchema.y, sponsoredstorymetadata.b());
            contentvaluesbuilder.a(StorySnapSchema.z, sponsoredstorymetadata.c());
            contentvaluesbuilder.a(StorySnapSchema.A, sponsoredstorymetadata.d());
        }
        return contentvaluesbuilder.a();
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((StorySnap)obj);
    }

    protected StorySnap a(Cursor cursor)
    {
        StorySnap storysnap = new StorySnap(cursor.getString(StorySnapSchema.a.b()), cursor.getString(StorySnapSchema.b.b()), cursor.getString(StorySnapSchema.c.b()), cursor.getLong(StorySnapSchema.d.b()), cursor.getLong(StorySnapSchema.p.b()), cursor.getInt(StorySnapSchema.e.b()), cursor.getString(StorySnapSchema.f.b()), cursor.getString(StorySnapSchema.g.b()), com.snapchat.android.model.Snap.ClientSnapStatus.a(cursor.getString(StorySnapSchema.h.b())), cursor.getString(StorySnapSchema.i.b()), cursor.getInt(StorySnapSchema.j.b()), cursor.getString(StorySnapSchema.k.b()), cursor.getInt(StorySnapSchema.l.b()), cursor.getInt(StorySnapSchema.m.b()), a(cursor.getInt(StorySnapSchema.n.b())), a(cursor.getInt(StorySnapSchema.o.b())), a(cursor.getInt(StorySnapSchema.r.b())), a(cursor.getInt(StorySnapSchema.s.b())), cursor.getString(StorySnapSchema.t.b()), a(cursor.getInt(StorySnapSchema.u.b())), a(cursor.getInt(StorySnapSchema.w.b())));
        User user = User.c();
        if (user != null && a(cursor.getInt(StorySnapSchema.q.b())))
        {
            String s2 = storysnap.d();
            long l = storysnap.L();
            String s;
            String s1;
            int i;
            StoryViewRecord storyviewrecord;
            if (storysnap.H())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            storyviewrecord = new StoryViewRecord(s2, l, i);
            user.e().put(storysnap.d(), storyviewrecord);
        }
        s = cursor.getString(StorySnapSchema.v.b());
        if (!TextUtils.isEmpty(s))
        {
            storysnap.f(s);
        }
        s1 = cursor.getString(StorySnapSchema.x.b());
        if (s1 != null)
        {
            storysnap.a(new SponsoredStoryMetadata(s1, cursor.getString(StorySnapSchema.y.b()), cursor.getString(StorySnapSchema.z.b()), cursor.getString(StorySnapSchema.A.b())));
        }
        return storysnap;
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    public String c()
    {
        String s = "_id INTEGER PRIMARY KEY";
        StorySnapSchema astorysnapschema[] = StorySnapSchema.values();
        int i = astorysnapschema.length;
        for (int j = 0; j < i; j++)
        {
            StorySnapSchema storysnapschema = astorysnapschema[j];
            s = (new StringBuilder()).append(s).append(",").append(StorySnapSchema.a(storysnapschema)).append(" ").append(StorySnapSchema.b(storysnapschema).toString()).toString();
        }

        return s;
    }

    public Schema[] d()
    {
        return StorySnapSchema.values();
    }
}
