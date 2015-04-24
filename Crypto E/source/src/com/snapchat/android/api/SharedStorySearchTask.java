// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import java.util.ArrayList;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class SharedStorySearchTask extends RequestTask
{
    public static interface SharedStorySearchTaskCallback
    {

        public abstract void a(ArrayList arraylist);
    }


    private static final String TASK_NAME = "SharedStorySearchTask";
    private SharedStorySearchTaskCallback mCallback;
    private String mQuery;

    public SharedStorySearchTask(String s, SharedStorySearchTaskCallback sharedstorysearchtaskcallback)
    {
        mQuery = s;
        mCallback = sharedstorysearchtaskcallback;
    }

    protected String a()
    {
        return "/loq/friend_search";
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("query", mQuery);
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        if (serverresponse.result != null)
        {
            mCallback.a(serverresponse.result);
        }
    }

    protected String c()
    {
        return "SharedStorySearchTask";
    }
}
