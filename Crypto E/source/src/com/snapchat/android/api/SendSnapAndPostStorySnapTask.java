// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.Timber;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.model.server.SnapOrStoryDoublePostResponse;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.PostStorySnapRequestCompleteEvent;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.api:
//            SendSnapTask, PostStorySnapTask, SnapchatServer

public class SendSnapAndPostStorySnapTask extends SendSnapTask
{

    private static final String TAG = "SendSnapAndPostStorySnapTask";
    private static final String TASK_NAME = "SendSnapAndPostStorySnapTask";
    private PostStorySnapTask.PostStorySnapCallback mPostStoryCallback;
    private boolean mSnapRequestSuccessful;
    private boolean mStoryRequestSuccessful;
    private byte mThumbnailData[];

    public SendSnapAndPostStorySnapTask(Snapbryo snapbryo, SendSnapTask.SendSnapCallback sendsnapcallback, PostStorySnapTask.PostStorySnapCallback poststorysnapcallback)
    {
        super(snapbryo, sendsnapcallback);
        mSnapRequestSuccessful = false;
        mStoryRequestSuccessful = false;
        mPostStoryCallback = poststorysnapcallback;
        mThumbnailData = PostStorySnapTask.a(mContext, mSnapbryo);
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
        for (Iterator iterator = Timber.a(String.format("result json = %s and result = %s", aobj)).iterator(); iterator.hasNext(); Timber.c("SendSnapAndPostStorySnapTask", "%s: %s", aobj1))
        {
            String s = (String)iterator.next();
            aobj1 = new Object[2];
            aobj1[0] = c();
            aobj1[1] = s;
        }

        if (mStatusCode == 202)
        {
            boolean flag = TextUtils.isEmpty(mResultJson);
            ServerResponse serverresponse = null;
            if (!flag)
            {
                try
                {
                    serverresponse = (ServerResponse)GsonUtil.a().fromJson(mResultJson, com/snapchat/android/model/server/ServerResponse);
                }
                catch (JsonSyntaxException jsonsyntaxexception)
                {
                    mFailureMessage = (new StringBuilder()).append(jsonsyntaxexception.getMessage()).append(" in ").append(c()).append(": ").append(mResultJson).toString();
                    throw new JsonSyntaxException(mFailureMessage);
                }
                if (serverresponse.snap_response.success)
                {
                    mSnapRequestSuccessful = true;
                }
                if (serverresponse.story_response.success)
                {
                    mStoryRequestSuccessful = true;
                }
            }
            return serverresponse;
        }
        if (mStatusCode == 401)
        {
            m401Error = true;
            return null;
        } else
        {
            mFailureMessage = mContext.getResources().getString(0x7f0c0171);
            b(mFailureMessage, mStatusCode);
            return null;
        }
    }

    protected String a()
    {
        return "/loq/double_post";
    }

    protected void a(ServerResponse serverresponse)
    {
        if (mStoryRequestSuccessful)
        {
            mPostStoryCallback.a(mSnapbryo);
            if (serverresponse.story_response != null)
            {
                SnapOrStoryDoublePostResponse snaporstorydoublepostresponse = serverresponse.story_response;
                if (snaporstorydoublepostresponse.json != null && snaporstorydoublepostresponse.json.story != null)
                {
                    StoryLibrary.a().a(snaporstorydoublepostresponse.json.story);
                }
                if (snaporstorydoublepostresponse.group_stories != null)
                {
                    StoryLibrary.a().a(snaporstorydoublepostresponse.group_stories);
                }
            }
        } else
        {
            mPostStoryCallback.b(mSnapbryo);
        }
        BusProvider.a().a(new PostStorySnapRequestCompleteEvent());
        if (mSnapRequestSuccessful)
        {
            super.b(serverresponse);
            return;
        } else
        {
            super.a("Failed send snap task", mStatusCode);
            return;
        }
    }

    protected Bundle b()
    {
        Bundle bundle = super.b();
        PostStorySnapTask.a(bundle, mSnapbryo, mThumbnailData);
        return bundle;
    }

    protected String c()
    {
        return "SendSnapAndPostStorySnapTask";
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }
}
