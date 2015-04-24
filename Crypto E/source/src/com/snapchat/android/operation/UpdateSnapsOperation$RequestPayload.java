// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.model.UserPrefs;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.operation:
//            UpdateSnapsOperation

public class c extends AuthPayload
{

    final Map a;
    final Long b = Long.valueOf(UserPrefs.a().j());
    final List c;
    final UpdateSnapsOperation d;

    (UpdateSnapsOperation updatesnapsoperation, Map map)
    {
        d = updatesnapsoperation;
        super();
        a = map;
        c = updatesnapsoperation.c;
        Timber.c("UpdateSnapOperation", (new StringBuilder()).append("RequestPayload - snapUpdates.size() ").append(map.size()).append(" addedFriendsTimeStamp ").append(b).append(" analyticsEvents.size() ").append(c.size()).toString(), new Object[0]);
    }
}
