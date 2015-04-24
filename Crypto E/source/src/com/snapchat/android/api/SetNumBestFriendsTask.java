// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class SetNumBestFriendsTask extends RequestTask
{

    private static final String TASK_NAME = "SetNumBestFriendsTask";

    public SetNumBestFriendsTask()
    {
    }

    protected String a()
    {
        return "/bq/set_num_best_friends";
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putInt("num_best_friends", UserPrefs.O());
        return bundle;
    }

    protected String c()
    {
        return "SetNumBestFriendsTask";
    }
}
