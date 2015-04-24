// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.CacheType;
import com.snapchat.android.util.cache.FileUtils;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import com.snapchat.videotranscoder.task.MediaSource;
import com.snapchat.videotranscoder.task.VideoMediaSource;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrix;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

// Referenced classes of package com.snapchat.android.model:
//            LazyMediaSource

public class LazyVideoMediaSourceFromData extends LazyMediaSource
{

    private final com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource mAudioChannelSource;
    private final Cache mCache;
    private final String mCacheKey;
    private final CbcEncryptionAlgorithm mEncryptionAlgorithm;
    private final boolean mIsZipped;
    private MediaSource mMediaSource;
    private boolean mNeedsDelete;

    public LazyVideoMediaSourceFromData(Cache cache, String s, CbcEncryptionAlgorithm cbcencryptionalgorithm, boolean flag, com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource audiochannelsource)
    {
        mNeedsDelete = false;
        mCache = cache;
        mCacheKey = s;
        mEncryptionAlgorithm = cbcencryptionalgorithm;
        mIsZipped = flag;
        mAudioChannelSource = audiochannelsource;
    }

    private byte[] a(byte abyte0[])
    {
        ZipInputStream zipinputstream = new ZipInputStream(new BufferedInputStream(new ByteArrayInputStream(abyte0)));
_L3:
        ZipEntry zipentry = zipinputstream.getNextEntry();
        if (zipentry == null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        String s;
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte1[];
        s = zipentry.getName();
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte1 = new byte[1024];
_L1:
        int i = zipinputstream.read(abyte1);
        if (i == -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        bytearrayoutputstream.write(abyte1, 0, i);
          goto _L1
        Exception exception;
        exception;
        zipinputstream.close();
        throw exception;
        if (!s.contains("media")) goto _L3; else goto _L2
_L2:
        byte abyte2[] = bytearrayoutputstream.toByteArray();
        zipinputstream.close();
        return abyte2;
        zipinputstream.close();
        throw new IllegalStateException("Unable to find media entry in zipped data");
    }

    public MediaSource a(Context context)
    {
        if (mMediaSource == null)
        {
            byte abyte0[] = mCache.a(mCacheKey);
            if (abyte0 == null)
            {
                throw new NullPointerException((new StringBuilder()).append("Media source data not found in the cache! Key: ").append(mCacheKey).toString());
            }
            if (mEncryptionAlgorithm != null)
            {
                abyte0 = mEncryptionAlgorithm.b(abyte0);
                if (abyte0 == null)
                {
                    throw new IllegalStateException("Unable to decrypt video data");
                }
            }
            if (mIsZipped)
            {
                abyte0 = a(abyte0);
            }
            FileUtils fileutils = new FileUtils();
            File file = fileutils.a(CacheType.h);
            mNeedsDelete = true;
            fileutils.a(file, abyte0, abyte0.length);
            mMediaSource = new VideoMediaSource(file.getAbsolutePath(), (new ImageTransformationMatrix()).a(), null, com.snapchat.videotranscoder.task.VideoMediaSource.VideoChannelSource.a, mAudioChannelSource);
        }
        return mMediaSource;
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
