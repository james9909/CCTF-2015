// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.MyPostToStory;
import com.snapchat.android.model.PostToStory;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.PostStorySnapRequestCompleteEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask, SnapchatServer, SendSnapTask, PostStorySnapWithMediaTask

public class PostStorySnapTask extends RequestTask
{
    public static interface PostStorySnapCallback
    {

        public abstract void a(AnnotatedMediabryo annotatedmediabryo);

        public abstract void b(AnnotatedMediabryo annotatedmediabryo);
    }

    public class PostStorySnapJsonResponse
    {

        public StorySnap story;
        final PostStorySnapTask this$0;

        public PostStorySnapJsonResponse()
        {
            this$0 = PostStorySnapTask.this;
            super();
        }
    }


    public static final String PATH = "/bq/post_story";
    private static final String TAG = "PostStorySnapTask";
    private static final String TASK_NAME = "PostStorySnapTask";
    protected Context mContext;
    protected NetworkAnalytics mNetworkAnalytics;
    protected PostStorySnapCallback mPostStorySnapCallback;
    protected boolean mRequestSuccessful;
    protected AnnotatedMediabryo mSnapbryo;
    private byte mThumbnailData[];

    public PostStorySnapTask(AnnotatedMediabryo annotatedmediabryo, PostStorySnapCallback poststorysnapcallback)
    {
        mRequestSuccessful = false;
        mContext = SnapchatApplication.e();
        mSnapbryo = annotatedmediabryo;
        mPostStorySnapCallback = poststorysnapcallback;
        mThumbnailData = a(mContext, mSnapbryo);
        mNetworkAnalytics = NetworkAnalytics.a();
    }

    public static void a(Bundle bundle, AnnotatedMediabryo annotatedmediabryo, byte abyte0[])
    {
        bundle.putString("client_id", annotatedmediabryo.N());
        bundle.putInt("type", annotatedmediabryo.b());
        bundle.putString("time", String.valueOf(annotatedmediabryo.m()));
        String s = annotatedmediabryo.A();
        if (s == null)
        {
            s = "";
        }
        bundle.putString("caption_text_display", s);
        if (abyte0 != null)
        {
            bundle.putByteArray("thumbnail_data", abyte0);
        }
        bundle.putLong("story_timestamp", annotatedmediabryo.o());
        ArrayList arraylist = annotatedmediabryo.l();
        bundle.putBoolean("my_story", false);
        if (!arraylist.isEmpty())
        {
            ArrayList arraylist1 = new ArrayList();
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
            {
                PostToStory posttostory = (PostToStory)iterator.next();
                if (posttostory instanceof MyPostToStory)
                {
                    bundle.putBoolean("my_story", true);
                } else
                {
                    arraylist1.add(posttostory.c());
                }
            }

            bundle.putString("group_ids", GsonUtil.a().toJson(arraylist1));
        }
    }

    public static byte[] a(Context context, AnnotatedMediabryo annotatedmediabryo)
    {
        byte abyte0[];
        MediaMetadataRetriever mediametadataretriever;
        abyte0 = null;
        if (annotatedmediabryo.b() != 1)
        {
            int i = annotatedmediabryo.b();
            abyte0 = null;
            if (i != 2)
            {
                break MISSING_BLOCK_LABEL_102;
            }
        }
        mediametadataretriever = new MediaMetadataRetriever();
        mediametadataretriever.setDataSource(SnapchatApplication.e(), annotatedmediabryo.I());
        annotatedmediabryo.a(Double.parseDouble(mediametadataretriever.extractMetadata(9)) / 1000D);
        abyte0 = Caches.b.a(annotatedmediabryo.N());
        if (abyte0 != null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        Bitmap bitmap = mediametadataretriever.getFrameAtTime(0L, 3);
        abyte0 = SnapMediaUtils.a(bitmap, annotatedmediabryo.B());
        bitmap.recycle();
        mediametadataretriever.release();
        return abyte0;
        RuntimeException runtimeexception;
        runtimeexception;
        Timber.a("PostStorySnapTask", runtimeexception);
        mediametadataretriever.release();
        return abyte0;
        Exception exception;
        exception;
        mediametadataretriever.release();
        throw exception;
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
        for (Iterator iterator = Timber.a(String.format("result json = %s and result = %s", aobj)).iterator(); iterator.hasNext(); Timber.c("PostStorySnapTask", "%s: %s", aobj1))
        {
            String s = (String)iterator.next();
            aobj1 = new Object[2];
            aobj1[0] = c();
            aobj1[1] = s;
        }

        ServerResponse serverresponse;
        if (mStatusCode == 202)
        {
            mRequestSuccessful = true;
            boolean flag = TextUtils.isEmpty(mResultJson);
            serverresponse = null;
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
            }
        } else
        {
            if (mStatusCode == 401)
            {
                m401Error = true;
                return null;
            }
            int i = mStatusCode;
            serverresponse = null;
            if (i == 404)
            {
                m404Error = true;
                return null;
            }
        }
        return serverresponse;
    }

    protected String a()
    {
        return "/bq/post_story";
    }

    protected void a(ServerResponse serverresponse)
    {
        if (mRequestSuccessful)
        {
            b(serverresponse);
        } else
        if (m404Error)
        {
            e();
        } else
        if (serverresponse == null)
        {
            a("Connection Lost", mStatusCode);
        } else
        {
            a(serverresponse.message, mStatusCode);
        }
        BusProvider.a().a(new PostStorySnapRequestCompleteEvent());
    }

    protected void a(String s, int i)
    {
        if (!mSnapbryo.P())
        {
            mSnapbryo.e(true);
            (new PostStorySnapTask(mSnapbryo, mPostStorySnapCallback)).executeOnExecutor(ScExecutors.b, new String[0]);
            return;
        } else
        {
            mNetworkAnalytics.d(mSnapbryo, mUUID);
            mPostStorySnapCallback.b(mSnapbryo);
            return;
        }
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("media_id", mSnapbryo.N());
        SendSnapTask.a(bundle, mSnapbryo);
        a(bundle, mSnapbryo, mThumbnailData);
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        mNetworkAnalytics.c(mSnapbryo, mUUID);
        mPostStorySnapCallback.a(mSnapbryo);
        if (serverresponse.json != null)
        {
            StoryLibrary.a().a(serverresponse.json.story);
        }
        if (serverresponse.group_stories != null)
        {
            StoryLibrary.a().a(serverresponse.group_stories);
        }
    }

    protected String c()
    {
        return "PostStorySnapTask";
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void e()
    {
        (new PostStorySnapWithMediaTask(mSnapbryo, mPostStorySnapCallback)).executeOnExecutor(ScExecutors.b, new String[0]);
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }
}
