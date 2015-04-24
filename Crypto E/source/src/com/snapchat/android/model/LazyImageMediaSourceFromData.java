// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import android.graphics.Bitmap;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.FileUtils;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import com.snapchat.videotranscoder.task.ImageMediaSource;
import com.snapchat.videotranscoder.task.MediaSource;
import java.io.File;
import java.io.FileOutputStream;

// Referenced classes of package com.snapchat.android.model:
//            LazyMediaSource

public class LazyImageMediaSourceFromData extends LazyMediaSource
{

    private final Cache mCache;
    private final String mCacheKey;
    private final long mDisplayTimeMs;
    private final CbcEncryptionAlgorithm mEncryptionAlgorithm;
    private MediaSource mMediaSource;
    private boolean mNeedsDelete;

    public LazyImageMediaSourceFromData(Cache cache, String s, CbcEncryptionAlgorithm cbcencryptionalgorithm, long l)
    {
        mNeedsDelete = false;
        if (l <= 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Display time must be greater than 0: ").append(l).toString());
        } else
        {
            mCache = cache;
            mCacheKey = s;
            mEncryptionAlgorithm = cbcencryptionalgorithm;
            mDisplayTimeMs = l;
            return;
        }
    }

    public MediaSource a(Context context)
    {
        Bitmap bitmap;
        String s;
        if (mMediaSource != null)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        byte abyte0[] = mCache.a(mCacheKey);
        if (abyte0 == null)
        {
            throw new NullPointerException((new StringBuilder()).append("Media source data not found in the cache! Key: ").append(mCacheKey).toString());
        }
        if (mEncryptionAlgorithm != null)
        {
            abyte0 = mEncryptionAlgorithm.b(abyte0);
        }
        bitmap = SnapMediaUtils.a(context, abyte0, android.graphics.Bitmap.Config.ARGB_8888).b();
        if (bitmap == null)
        {
            throw new IllegalStateException("Failed to decode bitmap");
        }
        s = (new FileUtils()).d().getAbsolutePath();
        FileOutputStream fileoutputstream = new FileOutputStream(s);
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, fileoutputstream);
        mMediaSource = new ImageMediaSource(s, mDisplayTimeMs);
        mNeedsDelete = true;
        if (fileoutputstream != null)
        {
            fileoutputstream.close();
        }
        return mMediaSource;
        Exception exception;
        exception;
        fileoutputstream = null;
_L2:
        if (fileoutputstream != null)
        {
            fileoutputstream.close();
        }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a()
    {
        if (mMediaSource == null)
        {
            return;
        }
        if (mNeedsDelete)
        {
            (new File(mMediaSource.b())).delete();
        }
        mMediaSource = null;
    }
}
