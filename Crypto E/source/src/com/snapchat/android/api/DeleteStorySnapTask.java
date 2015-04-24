// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask, SnapchatServer

public class DeleteStorySnapTask extends RequestTask
{

    private static final String STORY_ID_PARAM = "story_id";
    private static final String TAG = "DeleteStorySnapTask";
    private static final String TASK_NAME = "DeleteStorySnapTask";
    private final Context mContext;
    private boolean mRequestSuccessful;
    private StorySnap mStorySnap;
    private StorySnapLogbook mStorySnapLogbook;

    public DeleteStorySnapTask(StorySnapLogbook storysnaplogbook, Context context)
    {
        mStorySnapLogbook = storysnaplogbook;
        mStorySnap = storysnaplogbook.e();
        mContext = context;
    }

    protected transient ServerResponse a(String as[])
    {
        Bundle bundle = SnapchatServer.a(a(), b(), 2);
        mResultJson = bundle.getString("resultData");
        mStatusCode = bundle.getInt("statusCode");
        Object aobj[] = new Object[2];
        aobj[0] = mResultJson;
        aobj[1] = bundle.toString();
        Object aobj1[];
        for (Iterator iterator = Timber.a(String.format("result json = %s and result = %s", aobj)).iterator(); iterator.hasNext(); Timber.c("DeleteStorySnapTask", "%s: %s", aobj1))
        {
            String s = (String)iterator.next();
            aobj1 = new Object[2];
            aobj1[0] = c();
            aobj1[1] = s;
        }

        if (mStatusCode == 204)
        {
            mRequestSuccessful = true;
        }
        return null;
    }

    protected String a()
    {
        if (!TextUtils.equals(mStorySnapLogbook.d(), "my_story_ads79sdf"))
        {
            return "/shared/delete_story";
        } else
        {
            return "/bq/delete_story";
        }
    }

    public void a(ServerResponse serverresponse)
    {
        if (mRequestSuccessful)
        {
            b(serverresponse);
            return;
        } else
        {
            a(null, mStatusCode);
            return;
        }
    }

    public void a(String s, int i)
    {
        AlertDialogUtils.a(0x7f0c01f3, mContext);
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("story_id", mStorySnap.d());
        if (!TextUtils.equals(mStorySnapLogbook.d(), "my_story_ads79sdf"))
        {
            bundle.putString("group_id", mStorySnapLogbook.d());
        }
        return bundle;
    }

    public void b(ServerResponse serverresponse)
    {
        StoryLibrary.a().a(mStorySnapLogbook);
    }

    protected String c()
    {
        return "DeleteStorySnapTask";
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    public void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }
}
