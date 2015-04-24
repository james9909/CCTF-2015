// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.graphics.Bitmap;
import android.net.Uri;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.transcoding.SnapTranscodingState;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.ZipArchive;
import com.snapchat.android.util.cache.CacheType;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.cache.FileUtils;
import com.snapchat.android.util.cache.SendSnapCacheWrapper;
import java.io.IOException;

// Referenced classes of package com.snapchat.android.model:
//            Snapbryo, AnnotatedMediabryo

public class SnapVideobryo extends Snapbryo
{

    private static final float RETRY_DOWNSCALE_FACTOR = 0.8F;
    private static final String TAG = "SnapVideobryo";
    private boolean mIsMuted;
    private com.snapchat.videotranscoder.video.ShaderText.Type mShader;
    private SnapTranscodingState mTranscodingState;

    public SnapVideobryo(SnapVideobryo snapvideobryo, SnapTranscodingState snaptranscodingstate)
    {
        super(snapvideobryo);
        mTranscodingState = snaptranscodingstate;
        mShader = com.snapchat.videotranscoder.video.ShaderText.Type.a;
    }

    SnapVideobryo(Snapbryo.Builder builder)
    {
        super(builder);
        mTranscodingState = new SnapTranscodingState();
        mShader = com.snapchat.videotranscoder.video.ShaderText.Type.a;
    }

    private byte[] ad()
    {
        if (I() == null)
        {
            return null;
        }
        byte abyte0[];
        String s = (new FileUtils()).a("Snapchat-", ".zip.nomedia");
        ZipArchive ziparchive = new ZipArchive();
        ziparchive.a((new StringBuilder()).append("media~").append(s).toString(), Q());
        SendSnapCacheWrapper.a().a(this, true);
        ziparchive.a((new StringBuilder()).append("overlay~").append(s).toString(), SendSnapCacheWrapper.a().c(this));
        ziparchive.a();
        abyte0 = ziparchive.b();
        return abyte0;
        Object obj;
        obj;
_L2:
        throw new RuntimeException(((Throwable) (obj)));
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String Q()
    {
        if (mTranscodingState.b() == com.snapchat.videotranscoder.task.Task.Status.g)
        {
            return S();
        }
        if (I() == null)
        {
            return null;
        } else
        {
            return I().getPath();
        }
    }

    public int R()
    {
        return mTranscodingState.a();
    }

    public String S()
    {
        return mTranscodingState.a(CacheType.j);
    }

    public com.snapchat.videotranscoder.task.Task.Status T()
    {
        return mTranscodingState.b();
    }

    public boolean U()
    {
        return mTranscodingState.d();
    }

    public boolean V()
    {
        return mTranscodingState.e();
    }

    public boolean W()
    {
        return mTranscodingState.a(X());
    }

    public boolean X()
    {
        return Y() > 0x1a6667L;
    }

    public long Y()
    {
        if (I() != null)
        {
            return (new FileUtils()).a(I().getPath());
        } else
        {
            return 0L;
        }
    }

    public long Z()
    {
        return (new FileUtils()).a(S());
    }

    public Snapbryo a()
    {
        return new SnapVideobryo(this, mTranscodingState);
    }

    public void a(Bitmap bitmap)
    {
        super.a(bitmap);
        if (B() != null)
        {
            mIsZipUpload = true;
            return;
        } else
        {
            mIsZipUpload = false;
            return;
        }
    }

    public void a(com.snapchat.videotranscoder.task.Task.Status status)
    {
        mTranscodingState.b(status);
    }

    public void a(com.snapchat.videotranscoder.video.ShaderText.Type type)
    {
        mShader = type;
    }

    public int b()
    {
        return !mIsMuted ? 1 : 2;
    }

    public void b(com.snapchat.videotranscoder.task.Task.Status status)
    {
        mTranscodingState.a(status);
    }

    public void c(com.snapchat.videotranscoder.task.Task.Status status)
    {
        e(true);
        a(Mediabryo.SendStatus.FAILED);
        a(Mediabryo.UploadStatus.FAILED);
        a(Mediabryo.PostStatus.FAILED);
        Timber.e("SnapVideobryo", (new StringBuilder()).append("Transcoding failed with: ").append(status).append(" failing upload").toString(), new Object[0]);
    }

    public boolean c()
    {
        return mIsMuted;
    }

    public Object clone()
    {
        return a();
    }

    public byte[] d()
    {
        byte abyte0[];
        if (I() == null)
        {
            abyte0 = null;
        } else
        {
            Bitmap bitmap = B();
            if (bitmap != null)
            {
                abyte0 = ad();
                while (abyte0 != null && abyte0.length >= 0x280000) 
                {
                    bitmap = Bitmap.createScaledBitmap(bitmap, (int)(0.8F * (float)bitmap.getWidth()), (int)(0.8F * (float)bitmap.getHeight()), true);
                    abyte0 = ad();
                }
            } else
            {
                return SnapMediaUtils.a(Q());
            }
        }
        return abyte0;
    }

    public AnnotatedMediabryo e()
    {
        return a();
    }

    public com.snapchat.videotranscoder.video.ShaderText.Type f()
    {
        return mShader;
    }

    public void f(boolean flag)
    {
        mIsMuted = flag;
    }
}
