// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.text.format.DateUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.server.CaptionParameters;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.StoryUtils;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import com.snapchat.android.util.network.EndpointManager;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;

// Referenced classes of package com.snapchat.android.model:
//            ReceivedSnap, AnnotatedMediabryo, LazyImageMediaSourceFromFile, LazyImageMediaSourceFromData, 
//            LazyVideoMediaSourceFromFile, LazyVideoMediaSourceFromData, SponsoredStoryMetadata, User, 
//            LazyMediaSource

public class StorySnap extends ReceivedSnap
{
    public static final class StoryViewedState extends Enum
    {

        private static final StoryViewedState $VALUES[];
        public static final StoryViewedState RELEASED_BEFORE_TIMER_EXPIRED;
        public static final StoryViewedState TAPPED_TO_SKIP;
        public static final StoryViewedState TIMER_EXPIRED;
        public static final StoryViewedState UNVIEWED;
        public static final StoryViewedState VIEWING;

        public static StoryViewedState valueOf(String s)
        {
            return (StoryViewedState)Enum.valueOf(com/snapchat/android/model/StorySnap$StoryViewedState, s);
        }

        public static StoryViewedState[] values()
        {
            return (StoryViewedState[])$VALUES.clone();
        }

        static 
        {
            UNVIEWED = new StoryViewedState("UNVIEWED", 0);
            VIEWING = new StoryViewedState("VIEWING", 1);
            RELEASED_BEFORE_TIMER_EXPIRED = new StoryViewedState("RELEASED_BEFORE_TIMER_EXPIRED", 2);
            TIMER_EXPIRED = new StoryViewedState("TIMER_EXPIRED", 3);
            TAPPED_TO_SKIP = new StoryViewedState("TAPPED_TO_SKIP", 4);
            StoryViewedState astoryviewedstate[] = new StoryViewedState[5];
            astoryviewedstate[0] = UNVIEWED;
            astoryviewedstate[1] = VIEWING;
            astoryviewedstate[2] = RELEASED_BEFORE_TIMER_EXPIRED;
            astoryviewedstate[3] = TIMER_EXPIRED;
            astoryviewedstate[4] = TAPPED_TO_SKIP;
            $VALUES = astoryviewedstate;
        }

        private StoryViewedState(String s, int j)
        {
            super(s, j);
        }
    }


    private static final String TAG = "StorySnap";
    private CaptionParameters mCaptionParameters;
    private String mClientId;
    private boolean mFailed;
    private boolean mHasBeenViewed;
    private boolean mIsShared;
    private String mMediaId;
    private String mMediaUrl;
    private SponsoredStoryMetadata mSponsoredStoryMetadata;
    private String mStoryId;
    private StoryViewedState mStoryViewedState;
    private String mThumbnailIv;
    private String mThumbnailUrl;
    private String mUsername;
    private long mViewedTimeStamp;
    private boolean mWas404ResponseReceived;

    public StorySnap()
    {
        mStoryViewedState = StoryViewedState.UNVIEWED;
        SnapchatApplication.e().a(this);
    }

    public StorySnap(AnnotatedMediabryo annotatedmediabryo)
    {
        this();
        mClientId = annotatedmediabryo.N();
        mCaptionText = annotatedmediabryo.A();
        mMediaType = annotatedmediabryo.b();
        boolean flag;
        if (annotatedmediabryo.L() == Mediabryo.PostStatus.FAILED)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mFailed = flag;
        mZipped = annotatedmediabryo.n();
        mTimestamp = annotatedmediabryo.O().getTime();
        mCanonicalDisplayTime = annotatedmediabryo.m();
    }

    public StorySnap(String s, String s1, String s2, long l1, long l2, 
            int j, String s3, String s4, Snap.ClientSnapStatus clientsnapstatus, String s5, int k, String s6, 
            int i1, int j1, boolean flag, boolean flag1, boolean flag2, boolean flag3, String s7, 
            boolean flag4, boolean flag5)
    {
        this();
        mId = s;
        mClientId = s1;
        mMediaId = s2;
        mTimestamp = l1;
        mViewedTimeStamp = l2;
        mMediaType = j;
        mMediaUrl = s3;
        mThumbnailUrl = s4;
        mClientSnapStatus = clientsnapstatus;
        mUsername = s5;
        mCanonicalDisplayTime = k;
        mCaptionParameters = new CaptionParameters(s6, i1, j1);
        mCaptionOrientation = i1;
        mCaptionPosition = j1;
        mCaptionText = s6;
        mHasBeenViewed = flag;
        mWasOpened = flag;
        mIsScreenshotted = flag1;
        mFailed = flag2;
        mZipped = flag3;
        mFilterId = s7;
        mWas404ResponseReceived = flag4;
        mIsShared = flag5;
    }

    private LazyMediaSource a(Cache cache, String s)
    {
        if (mMediaType != 0)
        {
            throw new IllegalStateException("Unexpected call to getLazyMediaSourceAsImageFileInCache");
        }
        String s1;
        if (cache.f(s))
        {
            if ((s1 = cache.b(s)) != null)
            {
                return new LazyImageMediaSourceFromFile(s1, (long)(1000D * mCanonicalDisplayTime));
            }
        }
        return null;
    }

    private LazyMediaSource a(Cache cache, String s, CbcEncryptionAlgorithm cbcencryptionalgorithm)
    {
        if (mMediaType != 0)
        {
            throw new IllegalStateException("Unexpected call to getLazyMediaSourceAsImageDataInCache");
        }
        if (!cache.e(s))
        {
            return null;
        } else
        {
            return new LazyImageMediaSourceFromData(cache, s, cbcencryptionalgorithm, (long)(1000D * mCanonicalDisplayTime));
        }
    }

    private LazyMediaSource b(Cache cache, String s)
    {
        boolean flag = true;
        if (mMediaType != flag && mMediaType != 2)
        {
            throw new IllegalStateException("Unexpected call to getLazyMediaSourceAsVideoFileInCache");
        }
        if (!cache.f(s))
        {
            return null;
        }
        String s1 = cache.b(s);
        if (s1 == null)
        {
            return null;
        }
        if (mMediaType == flag)
        {
            flag = false;
        }
        return new LazyVideoMediaSourceFromFile(s1, flag);
    }

    private LazyMediaSource b(Cache cache, String s, CbcEncryptionAlgorithm cbcencryptionalgorithm)
    {
        int j = 1;
        if (mMediaType != j && mMediaType != 2)
        {
            throw new IllegalStateException("Unexpected call to getLazyMediaSourceAsVideoDataInCache");
        }
        if (!cache.e(s))
        {
            return null;
        }
        com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource audiochannelsource;
        if (mMediaType == j)
        {
            j = 0;
        }
        if (j != 0)
        {
            audiochannelsource = com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource.b;
        } else
        {
            audiochannelsource = com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource.a;
        }
        return new LazyVideoMediaSourceFromData(cache, s, cbcencryptionalgorithm, mZipped, audiochannelsource);
    }

    private LazyMediaSource e(Context context)
    {
        if (mMediaType != 0)
        {
            throw new IllegalStateException("Unexpected call to imageToLazyMediaSource");
        }
        LazyMediaSource lazymediasource = a(Caches.g, mClientId);
        if (lazymediasource == null)
        {
            String s = (new StringBuilder()).append(mClientId).append("-unzippedbitmap").toString();
            lazymediasource = a(Caches.g, s);
            if (lazymediasource == null)
            {
                lazymediasource = a(Caches.c, mId, R());
                if (lazymediasource == null)
                {
                    lazymediasource = a(Caches.g, mClientId, null);
                    if (lazymediasource == null)
                    {
                        lazymediasource = a(Caches.g, s, null);
                        if (lazymediasource == null)
                        {
                            throw new IllegalStateException("Image snap did not exist in cache!");
                        }
                    }
                }
            }
        }
        return lazymediasource;
    }

    private LazyMediaSource f(Context context)
    {
        if (mMediaType != 1 && mMediaType != 2)
        {
            throw new IllegalStateException("Unexpected call to videoToLazyMediaSource");
        }
        LazyMediaSource lazymediasource = b(Caches.k, mClientId);
        if (lazymediasource == null)
        {
            if ((lazymediasource = b(Caches.k, mId)) == null && (lazymediasource = b(Caches.h, mClientId, null)) == null && (lazymediasource = b(Caches.d, mId, R())) == null)
            {
                throw new IllegalStateException("Video snap did not exist in cache!");
            }
        }
        return lazymediasource;
    }

    public void B()
    {
        super.B();
        SnapUtils.a(this);
    }

    public boolean F()
    {
        return mHasBeenViewed;
    }

    public long L()
    {
        return mViewedTimeStamp;
    }

    public CbcEncryptionAlgorithm R()
    {
        this;
        JVM INSTR monitorenter ;
        if (mMediaKey != null && mMediaIv != null) goto _L2; else goto _L1
_L1:
        CbcEncryptionAlgorithm cbcencryptionalgorithm;
        cbcencryptionalgorithm = new CbcEncryptionAlgorithm();
        mMediaKey = cbcencryptionalgorithm.a();
        mMediaIv = cbcencryptionalgorithm.b();
        mThumbnailIv = cbcencryptionalgorithm.c();
_L4:
        this;
        JVM INSTR monitorexit ;
        return cbcencryptionalgorithm;
_L2:
        cbcencryptionalgorithm = new CbcEncryptionAlgorithm(mMediaKey, mMediaIv, mThumbnailIv);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    protected String T()
    {
        String s;
        byte abyte0[];
        s = mClientId;
        abyte0 = Caches.h.a(s);
        if (abyte0 != null) goto _L2; else goto _L1
_L1:
        byte abyte1[];
        s = mId;
        abyte1 = Caches.d.a(s);
        if (abyte1 != null) goto _L4; else goto _L3
_L3:
        return null;
_L4:
        abyte0 = R().b(abyte1);
_L2:
        if (abyte0 == null) goto _L3; else goto _L5
_L5:
        if (!mZipped) goto _L7; else goto _L6
_L6:
        a(s, abyte0);
_L9:
        return Caches.k.b(s);
_L7:
        try
        {
            Caches.k.a(s, abyte0);
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Timber.c("StorySnap", "External storage unavailable.", new Object[0]);
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    public boolean U()
    {
label0:
        {
            boolean flag;
label1:
            {
                while (mWas404ResponseReceived || Caches.g.e(mClientId) || Caches.h.e(mClientId)) 
                {
                    return true;
                }
                if (mId == null)
                {
                    break label0;
                }
                if (!Caches.c.e(mId))
                {
                    boolean flag1 = Caches.d.e(mId);
                    flag = false;
                    if (!flag1)
                    {
                        break label1;
                    }
                }
                flag = true;
            }
            return flag;
        }
        return false;
    }

    protected int a(int j)
    {
        if (e())
        {
            return j;
        } else
        {
            return Math.min(j, 10);
        }
    }

    public int a(ChatFeedItem chatfeeditem)
    {
        return -1 * Long.valueOf(ae()).compareTo(Long.valueOf(chatfeeditem.ae()));
    }

    public Bitmap a(Context context)
    {
        Bitmap bitmap = Caches.g.a(context, mClientId, null);
        if (bitmap == null)
        {
            bitmap = Caches.g.a(context, (new StringBuilder()).append(mClientId).append("-unzippedbitmap").toString(), null);
        }
        if (bitmap == null)
        {
            bitmap = Caches.c.a(context, mId, R());
        }
        return bitmap;
    }

    public void a(long l1)
    {
        mTimestamp = l1;
    }

    public void a(SponsoredStoryMetadata sponsoredstorymetadata)
    {
        mSponsoredStoryMetadata = sponsoredstorymetadata;
    }

    public void a(CbcEncryptionAlgorithm cbcencryptionalgorithm)
    {
        this;
        JVM INSTR monitorenter ;
        mMediaKey = cbcencryptionalgorithm.a();
        mMediaIv = cbcencryptionalgorithm.b();
        mThumbnailIv = cbcencryptionalgorithm.c();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s)
    {
        mClientId = s;
    }

    protected void a(byte abyte0[])
    {
        if (mId != null && mId.length() > 0 && mMediaKey != null && mMediaKey.length() > 0 && mMediaIv != null && mMediaIv.length() > 0)
        {
            Caches.c.a(mId, R().a(abyte0));
            return;
        } else
        {
            Caches.g.a((new StringBuilder()).append(mClientId).append("-unzippedbitmap").toString(), abyte0);
            return;
        }
    }

    public String aA()
    {
        if (EndpointManager.a().i())
        {
            String s;
            try
            {
                URL url = new URL(mThumbnailUrl);
                URL url1 = new URL(EndpointManager.a().j());
                s = mThumbnailUrl.replace(url.getHost(), url1.getHost());
            }
            catch (MalformedURLException malformedurlexception)
            {
                return null;
            }
            return s;
        } else
        {
            return mThumbnailUrl;
        }
    }

    public String aB()
    {
        return mUsername;
    }

    public boolean aC()
    {
        return System.currentTimeMillis() - mTimestamp >= 0x5265c00L;
    }

    public CaptionParameters aD()
    {
        return mCaptionParameters;
    }

    public boolean aE()
    {
        return mFailed;
    }

    public boolean aF()
    {
        return !aE() && mId == null;
    }

    public void aG()
    {
        mWas404ResponseReceived = true;
        mHasBeenViewed = true;
    }

    public boolean aH()
    {
        return mWas404ResponseReceived;
    }

    public String aI()
    {
        return mStoryId;
    }

    public boolean aJ()
    {
        return mIsShared;
    }

    public boolean aK()
    {
        if (mId == null)
        {
            Timber.e("StorySnap", "Attempting to check if snap is a brand snap when id is null", new Object[0]);
            return false;
        } else
        {
            return mId.endsWith("BRAND_SNAP");
        }
    }

    public long ac()
    {
        if (mCaptionParameters == null)
        {
            return mCaptionOrientation;
        } else
        {
            return mCaptionParameters.getOrientation();
        }
    }

    public double ad()
    {
        if (mCaptionParameters == null)
        {
            return mCaptionPosition;
        } else
        {
            return mCaptionParameters.getPosition();
        }
    }

    public long ae()
    {
        return mTimestamp;
    }

    public void av()
    {
        mHasBeenViewed = false;
        mWasOpened = false;
        mClientSnapStatus = Snap.ClientSnapStatus.UNVIEWED_AND_LOADED;
    }

    public boolean aw()
    {
        return Caches.b.e(mClientId) || mId != null && Caches.b.e(mId);
    }

    public String ax()
    {
        if (EndpointManager.a().i())
        {
            return (new StringBuilder()).append(EndpointManager.a().j()).append("/bq/story_blob?story_id=").append(az()).toString();
        } else
        {
            return mMediaUrl;
        }
    }

    public String ay()
    {
        return mClientId;
    }

    public String az()
    {
        return mMediaId;
    }

    public void b(String s)
    {
        mCaptionText = s;
    }

    public String c(Context context)
    {
        Long long1 = Long.valueOf((new Date()).getTime());
        String s = DateUtils.getRelativeTimeSpanString(mTimestamp, long1.longValue(), 60000L).toString();
        if (s.equals("0 minutes ago") || s.equals("in 0 minutes"))
        {
            s = context.getString(0x7f0c0111);
        }
        return s;
    }

    public int compareTo(Object obj)
    {
        return a((ChatFeedItem)obj);
    }

    public LazyMediaSource d(Context context)
    {
        switch (mMediaType)
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unhandled media type: ").append(mMediaType).toString());

        case 0: // '\0'
            return e(context);

        case 1: // '\001'
        case 2: // '\002'
            return f(context);
        }
    }

    public String d()
    {
        return super.d();
    }

    public void d(String s)
    {
        mMediaId = s;
    }

    public void e(String s)
    {
        mMediaUrl = s;
    }

    public void e(boolean flag)
    {
        mViewedTimeStamp = (new Date()).getTime();
        mIsTimerRunning = false;
        c(false);
        mHasBeenViewed = true;
        mWasOpened = true;
        Snap.ClientSnapStatus clientsnapstatus;
        if (e())
        {
            clientsnapstatus = Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE;
        } else
        {
            clientsnapstatus = Snap.ClientSnapStatus.RECEIVED_AND_VIEWED;
        }
        mClientSnapStatus = clientsnapstatus;
        if (am())
        {
            Caches.k.d(mId);
            Caches.k.d(mClientId);
        }
        if (flag)
        {
            SnapUtils.a(this);
        }
    }

    public boolean e()
    {
        return mSponsoredStoryMetadata != null;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof StorySnap))
        {
            return false;
        } else
        {
            StorySnap storysnap = (StorySnap)obj;
            return mClientId.equals(storysnap.mClientId);
        }
    }

    public SponsoredStoryMetadata f()
    {
        return mSponsoredStoryMetadata;
    }

    public void f(String s)
    {
        mStoryId = s;
    }

    public void f(boolean flag)
    {
        mHasBeenViewed = flag;
    }

    public String g()
    {
        if (mSponsoredStoryMetadata != null)
        {
            if ((K() || G()) && !TextUtils.isEmpty(mSponsoredStoryMetadata.b()))
            {
                return mSponsoredStoryMetadata.b();
            } else
            {
                return mSponsoredStoryMetadata.a();
            }
        } else
        {
            return null;
        }
    }

    public int hashCode()
    {
        return mClientId.hashCode();
    }

    public boolean i()
    {
        return !mIsLoading;
    }

    public String l()
    {
        return mUsername;
    }

    public void r()
    {
        StoryUtils.a(User.c(), this, false);
    }
}
