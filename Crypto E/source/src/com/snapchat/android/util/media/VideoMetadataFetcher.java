// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.media;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;

public class VideoMetadataFetcher
{

    public VideoMetadataFetcher()
    {
    }

    public int a(MediaMetadataRetriever mediametadataretriever, Context context, Uri uri)
    {
        mediametadataretriever.setDataSource(context, uri);
        return Integer.parseInt(mediametadataretriever.extractMetadata(9));
    }
}
