// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.j;
import java.util.Arrays;

public class mj extends j
{

    public static final mj Zl = new mj();

    private mj()
    {
        super("driveId", Arrays.asList(new String[] {
            "sqlId", "resourceId"
        }), Arrays.asList(new String[] {
            "dbInstanceId"
        }), 0x3e8fa0);
    }

    protected Object c(DataHolder dataholder, int i, int k)
    {
        return m(dataholder, i, k);
    }

    protected DriveId m(DataHolder dataholder, int i, int k)
    {
        long l = dataholder.jk().getLong("dbInstanceId");
        String s = dataholder.c("resourceId", i, k);
        if (s != null && s.startsWith("generated-android-"))
        {
            s = null;
        }
        return new DriveId(s, Long.valueOf(dataholder.a("sqlId", i, k)).longValue(), l);
    }

}
