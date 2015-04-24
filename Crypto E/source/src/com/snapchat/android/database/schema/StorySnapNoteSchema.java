// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.schema;

import com.snapchat.android.database.DataType;

// Referenced classes of package com.snapchat.android.database.schema:
//            Schema

public final class StorySnapNoteSchema extends Enum
    implements Schema
{

    public static final StorySnapNoteSchema a;
    public static final StorySnapNoteSchema b;
    public static final StorySnapNoteSchema c;
    public static final StorySnapNoteSchema d;
    public static final StorySnapNoteSchema e;
    public static final StorySnapNoteSchema f;
    private static final StorySnapNoteSchema j[];
    private String g;
    private DataType h;
    private String i;

    private StorySnapNoteSchema(String s, int k, String s1, DataType datatype)
    {
        super(s, k);
        g = s1;
        h = datatype;
    }

    public static StorySnapNoteSchema valueOf(String s)
    {
        return (StorySnapNoteSchema)Enum.valueOf(com/snapchat/android/database/schema/StorySnapNoteSchema, s);
    }

    public static StorySnapNoteSchema[] values()
    {
        return (StorySnapNoteSchema[])j.clone();
    }

    public DataType a()
    {
        return h;
    }

    public int b()
    {
        return ordinal();
    }

    public String c()
    {
        return g;
    }

    public String d()
    {
        return i;
    }

    static 
    {
        a = new StorySnapNoteSchema("STORY_SNAP_ID", 0, "StorySnapId", DataType.a);
        b = new StorySnapNoteSchema("VIEWER", 1, "Viewer", DataType.a);
        c = new StorySnapNoteSchema("SCREENSHOTTED", 2, "Screenshotted", DataType.b);
        d = new StorySnapNoteSchema("TIMESTAMP", 3, "Timestamp", DataType.b);
        e = new StorySnapNoteSchema("STORY_POINTER_KEY", 4, "StoryPointerKey", DataType.a);
        f = new StorySnapNoteSchema("STORY_POINTER_FIELD", 5, "StoryPointerField", DataType.a);
        StorySnapNoteSchema astorysnapnoteschema[] = new StorySnapNoteSchema[6];
        astorysnapnoteschema[0] = a;
        astorysnapnoteschema[1] = b;
        astorysnapnoteschema[2] = c;
        astorysnapnoteschema[3] = d;
        astorysnapnoteschema[4] = e;
        astorysnapnoteschema[5] = f;
        j = astorysnapnoteschema;
    }
}
