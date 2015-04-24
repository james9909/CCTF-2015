// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import com.snapchat.android.Timber;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.android.util.SnapMediaUtils;

// Referenced classes of package com.snapchat.android.util.cache:
//            SaveSentSnapToCacheTask, Caches, Cache, ExternalStorageUnavailableException

public class SaveSentStoryToCacheTask extends SaveSentSnapToCacheTask
{

    public SaveSentStoryToCacheTask()
    {
    }

    private void a(String s, Bitmap bitmap, Bitmap bitmap1)
    {
        byte abyte0[] = SnapMediaUtils.a(bitmap, bitmap1);
        if (abyte0 != null)
        {
            Caches.b.a(s, abyte0);
        }
    }

    private void a(String s, MediaMetadataRetriever mediametadataretriever, Bitmap bitmap)
    {
        Bitmap bitmap1 = mediametadataretriever.getFrameAtTime(0L, 3);
        if (bitmap1 != null)
        {
            a(s, bitmap1, bitmap);
            bitmap1.recycle();
        }
    }

    protected boolean a(AnnotatedMediabryo annotatedmediabryo)
    {
        boolean flag = super.a(annotatedmediabryo);
        boolean flag1 = false;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        byte abyte0[];
        try
        {
            abyte0 = SnapMediaUtils.b(annotatedmediabryo.B());
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Timber.c("SaveSentSnapToCacheTask", "External storage not available.", new Object[0]);
            return false;
        }
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        Caches.b.a(annotatedmediabryo.N(), abyte0);
        flag1 = true;
        return flag1;
    }

    protected boolean a(SnapVideobryo snapvideobryo)
    {
        boolean flag = super.a(snapvideobryo);
        boolean flag1 = false;
        if (flag)
        {
            try
            {
                MediaMetadataRetriever mediametadataretriever = new MediaMetadataRetriever();
                mediametadataretriever.setDataSource(snapvideobryo.Q());
                a(snapvideobryo.N(), mediametadataretriever, snapvideobryo.B());
                Timber.c("SaveSentSnapToCacheTask", "Transcoding finished", new Object[0]);
            }
            catch (ExternalStorageUnavailableException externalstorageunavailableexception)
            {
                Timber.c("SaveSentSnapToCacheTask", "External storage not available.", new Object[0]);
                return false;
            }
            flag1 = true;
        }
        return flag1;
    }
}
