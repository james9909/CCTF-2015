// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.vtable;

import com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable;
import com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable;

// Referenced classes of package com.snapchat.android.database.vtable:
//            DbVirtualTable

public static final class c extends Enum
{

    public static final d a;
    public static final d b;
    private static final d d[];
    private DbVirtualTable c;

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable, s);
    }

    public static c[] values()
    {
        return (c[])d.clone();
    }

    public DbVirtualTable a()
    {
        return c;
    }

    static 
    {
        a = new <init>("PUBLISHER_AND_EDITION", 0, PublisherAndEditionVirtualTable.e());
        b = new <init>("DSNAP_PAGE", 1, DSnapPageVirtualTable.e());
        c ac[] = new .e[2];
        ac[0] = a;
        ac[1] = b;
        d = ac;
    }

    private (String s, int i, DbVirtualTable dbvirtualtable)
    {
        super(s, i);
        c = dbvirtualtable;
    }
}
