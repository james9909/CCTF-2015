// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.content.Context;
import android.os.AsyncTask;
import com.snapchat.android.model.ReceivedSnap;

// Referenced classes of package com.snapchat.android.rendering.video:
//            VideoSnapResources

class LoadVideoSnapResourcesAsyncTask extends AsyncTask
{

    private final Context a;

    public LoadVideoSnapResourcesAsyncTask(Context context)
    {
        a = context;
    }

    protected transient VideoSnapResources a(ReceivedSnap areceivedsnap[])
    {
        ReceivedSnap receivedsnap = areceivedsnap[0];
        VideoSnapResources.Builder builder = new VideoSnapResources.Builder(receivedsnap);
        builder.a(receivedsnap.P());
        if (receivedsnap.k())
        {
            builder.a(receivedsnap.a(a));
        }
        return builder.a();
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((ReceivedSnap[])aobj);
    }
}
