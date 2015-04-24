// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.content.Context;

// Referenced classes of package com.snapchat.android.rendering.video:
//            LoadVideoSnapResourcesAsyncTask, VideoSnapResourceLoader, VideoSnapResources

class cTask extends LoadVideoSnapResourcesAsyncTask
{

    final llback a;
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

    llback(VideoSnapResourceLoader videosnapresourceloader, Context context, llback llback)
    {
        b = videosnapresourceloader;
        a = llback;
        super(context);
    }
}
