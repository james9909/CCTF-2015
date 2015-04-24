// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            FriendTable

public static final class y extends Enum
    implements Schema
{

    public static final z a;
    public static final z b;
    public static final z c;
    public static final z d;
    public static final z e;
    public static final z f;
    public static final z g;
    public static final z h;
    public static final z i;
    public static final z j;
    public static final z k;
    public static final z l;
    public static final z m;
    public static final z n;
    public static final z o;
    public static final z p;
    public static final z q;
    public static final z r;
    public static final z s;
    public static final z t;
    public static final z u;
    public static final z v;
    private static final z z[];
    private int w;
    private String x;
    private DataType y;

    static String a(y y1)
    {
        return y1.x;
    }

    static DataType b(x x1)
    {
        return x1.y;
    }

    public static y valueOf(String s1)
    {
        return (y)Enum.valueOf(com/snapchat/android/database/table/FriendTable$FriendSchema, s1);
    }

    public static y[] values()
    {
        return (y[])z.clone();
    }

    public DataType a()
    {
        return y;
    }

    public int b()
    {
        return w;
    }

    public String c()
    {
        return x;
    }

    public String d()
    {
        return null;
    }

    static 
    {
        a = new <init>("USERNAME", 0, 1, "Username", DataType.a);
        b = new <init>("DISPLAY_NAME", 1, 2, "DisplayName", DataType.a);
        c = new <init>("PHONE_NUMBER", 2, 3, "PhoneNumber", DataType.a);
        d = new <init>("BEST_FRIEND_INDEX", 3, 4, "BestFriendIndex", DataType.b);
        e = new <init>("IS_BLOCKED", 4, 5, "IsBlocked", DataType.d);
        f = new <init>("IS_PENDING", 5, 6, "IsPending", DataType.d);
        g = new <init>("IS_DUPLICATE_DISPLAY_NAME", 6, 7, "IsDuplicateDisplayName", DataType.d);
        h = new <init>("IS_ADDED_AS_FRIEND", 7, 8, "isAddedAsFriend", DataType.d);
        i = new <init>("ADDED_ME_TIMESTAMP", 8, 9, "AddedMeTimestamp", DataType.b);
        j = new <init>("ADDED_THEM_TIMESTAMP", 9, 10, "AddedThemTimestamp", DataType.b);
        k = new <init>("IS_SHARED_STORY", 10, 11, "IsSharedStory", DataType.d);
        l = new <init>("SHARED_STORY_ID", 11, 12, "SharedStoryId", DataType.a);
        m = new <init>("SHOULD_FETCH_CUSTOM_DESCRIPTION", 12, 13, "ShouldFetchCustomDescription", DataType.d);
        n = new <init>("CUSTOM_TITLE", 13, 14, "CustomTitle", DataType.a);
        o = new <init>("CUSTOM_DESCRIPTION", 14, 15, "CustomDescription", DataType.a);
        p = new <init>("IS_LOCAL_STORY", 15, 16, "IsLocalStory", DataType.d);
        q = new <init>("CASH_ELIGIBILITY", 16, 17, "CashEligibility", DataType.b);
        r = new <init>("IS_IGNORED", 17, 18, "IsIgnored", DataType.d);
        s = new <init>("IS_HIDDEN", 18, 19, "IsHidden", DataType.d);
        t = new <init>("DIRECTION", 19, 20, "Direction", DataType.a);
        u = new <init>("ADD_SOURCE", 20, 21, "AddSource", DataType.a);
        v = new <init>("ADD_SOURCE_TYPE", 21, 22, "AddSourceType", DataType.a);
        x ax[] = new <init>[22];
        ax[0] = a;
        ax[1] = b;
        ax[2] = c;
        ax[3] = d;
        ax[4] = e;
        ax[5] = f;
        ax[6] = g;
        ax[7] = h;
        ax[8] = i;
        ax[9] = j;
        ax[10] = k;
        ax[11] = l;
        ax[12] = m;
        ax[13] = n;
        ax[14] = o;
        ax[15] = p;
        ax[16] = q;
        ax[17] = r;
        ax[18] = s;
        ax[19] = t;
        ax[20] = u;
        ax[21] = v;
        z = ax;
    }

    private (String s1, int i1, int j1, String s2, DataType datatype)
    {
        super(s1, i1);
        w = j1;
        x = s2;
        y = datatype;
    }
}
