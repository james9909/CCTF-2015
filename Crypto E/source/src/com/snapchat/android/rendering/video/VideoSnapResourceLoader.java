// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.content.Context;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.util.ScExecutors;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.snapchat.android.rendering.video:
//            LoadVideoSnapResourcesAsyncTask, VideoSnapResources

public class VideoSnapResourceLoader
{
    public static interface Callback
    {

        public abstract void a(VideoSnapResources videosnapresources);
    }


    private final Context a;
    private final ExecutorService b;
    private LoadVideoSnapResourcesAsyncTask c;

    public VideoSnapResourceLoader(Context context)
    {
        this(context, ScExecutors.d);
    }

    VideoSnapResourceLoader(Context context, ExecutorService executorservice)
    {
        a = context;
        b = executorservice;
    }

    static LoadVideoSnapResourcesAsyncTask a(VideoSnapResourceLoader videosnapresourceloader, LoadVideoSnapResourcesAsyncTask loadvideosnapresourcesasynctask)
    {
        videosnapresourceloader.c = loadvideosnapresourcesasynctask;
        return loadvideosnapresourcesasynctask;
    }

    public void a()
    {
        if (c != null)
        {
            c.cancel(false);
            c = null;
        }
    }

    public void a(ReceivedSnap receivedsnap, Callback callback)
    {
        c = new LoadVideoSnapResourcesAsyncTask(a, callback) {

            final Callback a;
            final VideoSnapResourceLoader b;

            protected void a(VideoSnapResources videosnapresources)
            {
                super.onPostExecute(videosnapresources);
                VideoSnapResourceLoader.a(b, null);
                a.a(videosnapresources);
            }

            protected void onPostExecute(Object obj)
            {
                a((VideoSnapResources)obj);
            }

            
            {
                b = VideoSnapResourceLoader.this;
                a = callback;
                super(context);
            }
        };
        c.executeOnExecutor(b, new ReceivedSnap[] {
            receivedsnap
        });
    }
}
