// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.TimberTimingLogger;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.bitmap.BitmapUtils;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.FeedIconRefreshedEvent;
import com.snapchat.android.util.system.Clock;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

// Referenced classes of package com.snapchat.android.model:
//            Snap, User, UserPrefs

public class ReceivedSnap extends Snap
{

    public static final int ALLOWED_TIME_TO_REPLAY = 5000;
    static final long BIRTHDAY_PRIORITY_TIMESTAMP = 0L;
    static final int SECOND_MAX_VIDEO_DURATION = 10;
    private static final String TAG = "ReceivedSnap";
    private transient FutureTask mBitmapFutureTask;
    protected double mCanonicalDisplayTime;
    protected long mCaptionOrientation;
    protected double mCaptionPosition;
    protected String mCaptionText;
    protected Clock mClock;
    private transient AtomicBoolean mDidFutureBitmapStart;
    protected String mFilterId;
    protected boolean mIsBeingViewed;
    protected boolean mIsLoading;
    protected boolean mIsScreenshotted;
    protected boolean mIsSelectedForReplay;
    protected boolean mIsTimerRunning;
    protected String mMediaIv;
    protected String mMediaKey;
    protected com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext mReceivedSnapLoadingContext;
    protected long mReplaySelectedTime;
    private String mSender;
    private SnapViewEventAnalytics mSnapViewEventAnalytics;
    protected double mTimeLeft;
    protected long mTimeViewed;
    protected boolean mUpdatedOnServer;
    protected long mViewedTimestamp;
    protected boolean mWasOpened;
    protected boolean mZipped;

    public ReceivedSnap()
    {
        mDidFutureBitmapStart = new AtomicBoolean();
        mWasOpened = true;
        mIsBeingViewed = false;
        mIsTimerRunning = false;
        mIsLoading = false;
        mIsScreenshotted = false;
        mIsSelectedForReplay = false;
        mReplaySelectedTime = 0x8000000000000000L;
        mReceivedSnapLoadingContext = com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext.UNINITIALIZED;
        SnapchatApplication.e().a(this);
    }

    public ReceivedSnap(String s1, long l1, long l2, long l3, 
            int i1, boolean flag, Snap.ClientSnapStatus clientsnapstatus, String s2, double d1, String s3, 
            boolean flag1, long l4, double d2, String s4)
    {
        this(s1, l1, l2, l3, i1, flag, clientsnapstatus, s2, d1, s3, flag1, l4, d2, s4, SnapViewEventAnalytics.a());
    }

    ReceivedSnap(String s1, long l1, long l2, long l3, 
            int i1, boolean flag, Snap.ClientSnapStatus clientsnapstatus, String s2, double d1, String s3, 
            boolean flag1, long l4, double d2, String s4, SnapViewEventAnalytics snapvieweventanalytics)
    {
        super(s1, l1, i1, clientsnapstatus);
        mDidFutureBitmapStart = new AtomicBoolean();
        mWasOpened = true;
        mIsBeingViewed = false;
        mIsTimerRunning = false;
        mIsLoading = false;
        mIsScreenshotted = false;
        mIsSelectedForReplay = false;
        mReplaySelectedTime = 0x8000000000000000L;
        mReceivedSnapLoadingContext = com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext.UNINITIALIZED;
        SnapchatApplication.e().a(this);
        mSender = s2;
        mZipped = flag;
        mCanonicalDisplayTime = d1;
        mTimeLeft = d1;
        mSentTimestamp = l2;
        mViewedTimestamp = l3;
        mIsScreenshotted = flag1;
        static class _cls3
        {

            static final int $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[];

            static 
            {
                $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus = new int[Snap.ClientSnapStatus.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.LOADING.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.UNVIEWED_AND_LOADED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.UNVIEWED_AND_UNLOADED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.UNVIEWED_AND_LOAD_STATE_TBD.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        _cls3..SwitchMap.com.snapchat.android.model.Snap.ClientSnapStatus[clientsnapstatus.ordinal()];
        JVM INSTR tableswitch 1 4: default 152
    //                   1 183
    //                   2 183
    //                   3 183
    //                   4 183;
           goto _L1 _L2 _L2 _L2 _L2
_L1:
        mCaptionText = s3;
        mCaptionOrientation = l4;
        mCaptionPosition = d2;
        mFilterId = s4;
        mSnapViewEventAnalytics = snapvieweventanalytics;
        return;
_L2:
        if (U())
        {
            q();
        } else
        {
            o();
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean A()
    {
        return mClientSnapStatus == Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED;
    }

    public void B()
    {
        mIsScreenshotted = true;
        User.c().a(this);
        C();
    }

    public void C()
    {
        String s1 = UserPrefs.k();
        ChatConversation chatconversation;
        if (s1 != null && l() != null)
        {
            if ((chatconversation = ConversationUtils.a(ChatUtils.a(s1, l()))) != null)
            {
                SendingMailman.a().a(chatconversation, this);
                return;
            }
        }
    }

    public boolean D()
    {
        return mIsBeingViewed;
    }

    public long E()
    {
        return mTimeViewed;
    }

    public boolean F()
    {
        return Snap.ClientSnapStatus.RECEIVED_AND_VIEWED.equals(mClientSnapStatus) || Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE.equals(mClientSnapStatus) || Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED.equals(mClientSnapStatus);
    }

    public boolean G()
    {
        return mWasOpened;
    }

    public boolean H()
    {
        return mIsScreenshotted;
    }

    public void I()
    {
        mIsTimerRunning = true;
    }

    public void J()
    {
        mIsTimerRunning = false;
    }

    public boolean K()
    {
        return mIsTimerRunning;
    }

    public long L()
    {
        return mViewedTimestamp;
    }

    public double M()
    {
        return mCanonicalDisplayTime;
    }

    public double N()
    {
        return mTimeLeft;
    }

    public String O()
    {
        return mFilterId;
    }

    public String P()
    {
        return T();
    }

    public com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext Q()
    {
        return mReceivedSnapLoadingContext;
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
_L4:
        this;
        JVM INSTR monitorexit ;
        return cbcencryptionalgorithm;
_L2:
        cbcencryptionalgorithm = new CbcEncryptionAlgorithm(mMediaKey, mMediaIv);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public boolean S()
    {
        return mMediaKey != null;
    }

    protected String T()
    {
        byte abyte1[];
        byte abyte0[] = Caches.f.a(mId);
        StringBuilder stringbuilder = (new StringBuilder()).append("!!! encrypted video is null?");
        boolean flag;
        if (abyte0 == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Timber.c("ReceivedSnap", stringbuilder.append(flag).toString(), new Object[0]);
        if (abyte0 == null)
        {
            return null;
        }
        abyte1 = R().b(abyte0);
        if (abyte1 == null)
        {
            return null;
        }
        if (!mZipped) goto _L2; else goto _L1
_L1:
        a(mId, abyte1);
_L4:
        return Caches.k.b(mId);
_L2:
        try
        {
            Caches.k.a(mId, abyte1);
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Timber.c("ReceivedSnap", "External storage unavailable.", new Object[0]);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean U()
    {
        boolean flag;
        if (Caches.e.e(mId) || Caches.f.e(mId))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag && mMediaKey != null;
    }

    public boolean V()
    {
        return false;
    }

    public boolean W()
    {
        return false;
    }

    public boolean X()
    {
        return true;
    }

    public boolean Y()
    {
        return false;
    }

    public boolean Z()
    {
        return mIsLoading;
    }

    protected int a(int i1)
    {
        return Math.min(i1, 10);
    }

    public int a(ChatConversation chatconversation)
    {
        com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority feediconpriority = com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.MOST_RECENT;
        if (!K() || N() <= 0.0D) goto _L2; else goto _L1
_L1:
        feediconpriority = com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.CURRENTLY_TICKING;
_L4:
        return feediconpriority.ordinal();
_L2:
        if (F() && System.currentTimeMillis() - L() < 5000L)
        {
            if (chatconversation.f() != null)
            {
                feediconpriority = com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT;
            } else
            if (au())
            {
                feediconpriority = com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.RECENTLY_OPENED_LAST_SNAP;
            }
        } else
        if (!G())
        {
            feediconpriority = com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.NEW;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Bitmap a(Context context)
    {
        Object aobj[] = new Object[1];
        aobj[0] = d();
        Timber.c("ReceivedSnap", "getImageBitmap - begin - %s", aobj);
        Bitmap bitmap;
        Object aobj1[];
        if (mBitmapFutureTask != null && !am())
        {
            Object aobj3[] = new Object[1];
            aobj3[0] = d();
            Timber.c("ReceivedSnap", "getImageBitmap - getBitmapFromFutureTask - %s", aobj3);
            bitmap = BitmapUtils.a(mBitmapFutureTask);
            mBitmapFutureTask = null;
            Object aobj4[] = new Object[2];
            aobj4[0] = d();
            aobj4[1] = bitmap;
            Timber.c("ReceivedSnap", "getImageBitmap - There was a future task for %s, it returned %s", aobj4);
            if (bitmap != null)
            {
                SnapViewEventAnalytics.c(true);
            }
        } else
        {
            bitmap = null;
        }
        if (bitmap == null)
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = d();
            Timber.c("ReceivedSnap", "getImageBitmap - getImageBitmapFromCache - %s", aobj2);
            bitmap = b(context);
        }
        aobj1 = new Object[2];
        aobj1[0] = d();
        aobj1[1] = bitmap;
        Timber.c("ReceivedSnap", "getImageBitmap - end - %s - %s", aobj1);
        return bitmap;
    }

    public com.snapchat.android.model.chat.ChatFeedItem.FeedIconResource a(View view, ChatConversation chatconversation)
    {
        boolean flag = true;
        if (System.currentTimeMillis() - L() < 5000L)
        {
            long l1 = 5000L - (System.currentTimeMillis() - L());
            view.postDelayed(new Runnable() {

                final ReceivedSnap this$0;

                public void run()
                {
                    BusProvider.a().a(new FeedIconRefreshedEvent());
                }

            
            {
                this$0 = ReceivedSnap.this;
                super();
            }
            }, l1);
        }
        boolean flag1;
        if (chatconversation != null && chatconversation.ar())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (!K() && y() && !A())
        {
            com.snapchat.android.model.chat.ChatFeedItem.FeedIconResource feediconresource = new com.snapchat.android.model.chat.ChatFeedItem.FeedIconResource(aj());
            feediconresource.endResource = b(ag(), flag1);
            feediconresource.frivolousAnimationTime = z();
            return feediconresource;
        }
        if (!ag() || K())
        {
            flag = false;
        }
        return new com.snapchat.android.model.chat.ChatFeedItem.FeedIconResource(a(flag, flag1));
    }

    public String a()
    {
        int i1 = 0x7f0c016e;
        if (G()) goto _L2; else goto _L1
_L1:
        if (!U())
        {
            if (Z())
            {
                i1 = 0x7f0c0115;
            } else
            {
                i1 = 0x7f0c020c;
            }
        }
_L4:
        return SnapchatApplication.e().getResources().getString(i1);
_L2:
        if (!K())
        {
            if (au())
            {
                i1 = 0x7f0c016d;
            } else
            {
                i1 = 0x7f0c00de;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(final Context context, final com.snapchat.android.util.cache.Cache.OnCompleted listener)
    {
        final TimberTimingLogger timingLogger = new TimberTimingLogger("ReceivedSnap", "loadImageBitmapAsync");
        ScExecutors.d.execute(new Runnable() {

            final ReceivedSnap this$0;
            final Context val$context;
            final com.snapchat.android.util.cache.Cache.OnCompleted val$listener;
            final TimberTimingLogger val$timingLogger;

            public void run()
            {
                timingLogger.a("startDelay");
                Bitmap bitmap = a(context);
                timingLogger.a("getImageBitmap");
                ThreadUtils.a(bitmap. new Runnable() {

                    final _cls1 this$1;
                    final Bitmap val$bitmap;

                    public void run()
                    {
                        timingLogger.a("runOnUiThreadDelay");
                        listener.a(bitmap);
                        timingLogger.a("onBitmapLoaded");
                        Timber.a(timingLogger);
                    }

            
            {
                this$1 = final__pcls1;
                bitmap = Bitmap.this;
                super();
            }
                });
            }

            
            {
                this$0 = ReceivedSnap.this;
                timingLogger = timbertiminglogger;
                context = context1;
                listener = oncompleted;
                super();
            }
        });
    }

    public void a(com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext loadingreceivedsnapcontext)
    {
        mReceivedSnapLoadingContext = loadingreceivedsnapcontext;
    }

    public void a(CbcEncryptionAlgorithm cbcencryptionalgorithm)
    {
        this;
        JVM INSTR monitorenter ;
        mMediaKey = cbcencryptionalgorithm.a();
        mMediaIv = cbcencryptionalgorithm.b();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void a(String s1, byte abyte0[])
    {
        ZipInputStream zipinputstream = new ZipInputStream(new BufferedInputStream(new ByteArrayInputStream(abyte0)));
_L4:
        ZipEntry zipentry = zipinputstream.getNextEntry();
        if (zipentry == null)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        String s2;
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte1[];
        s2 = zipentry.getName();
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte1 = new byte[1024];
_L1:
        int i1 = zipinputstream.read(abyte1);
        if (i1 == -1)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        bytearrayoutputstream.write(abyte1, 0, i1);
          goto _L1
        Exception exception;
        exception;
        try
        {
            zipinputstream.close();
            throw exception;
        }
        catch (IOException ioexception)
        {
            Timber.a("ReceivedSnap", ioexception);
        }
        return;
        byte abyte2[] = bytearrayoutputstream.toByteArray();
        if (!s2.contains("overlay")) goto _L3; else goto _L2
_L2:
        a(abyte2);
          goto _L4
_L3:
        if (!s2.contains("media")) goto _L4; else goto _L5
_L5:
        Caches.k.a(s1, abyte2);
          goto _L4
        zipinputstream.close();
        return;
    }

    public void a(boolean flag)
    {
        mUpdatedOnServer = flag;
    }

    protected void a(byte abyte0[])
    {
        Caches.e.a(mId, R().a(abyte0));
    }

    public boolean aa()
    {
        return mCaptionText != null;
    }

    public String ab()
    {
        return mCaptionText;
    }

    public long ac()
    {
        return mCaptionOrientation;
    }

    public double ad()
    {
        return mCaptionPosition;
    }

    public long ae()
    {
        return mSentTimestamp;
    }

    public long af()
    {
        return mTimestamp;
    }

    public boolean ag()
    {
        long l1 = UserPrefs.o();
        return ae() > l1 && ae() < l1 + 0x5265c00L;
    }

    public void ah()
    {
        mBitmapFutureTask = BitmapUtils.a(this);
        ThreadUtils.b(mBitmapFutureTask);
        d(true);
    }

    public boolean ai()
    {
        return mDidFutureBitmapStart.get();
    }

    public long b(ChatConversation chatconversation)
    {
        if (a(chatconversation) == com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.NEW.ordinal() && ag())
        {
            return 0L;
        } else
        {
            return c(chatconversation);
        }
    }

    public Bitmap b(Context context)
    {
        return Caches.e.a(context, mId, R());
    }

    public void b(int i1)
    {
        mCanonicalDisplayTime = a(i1);
    }

    public void b(boolean flag)
    {
        mZipped = flag;
    }

    public long c(ChatConversation chatconversation)
    {
        int i1 = a(chatconversation);
        if (i1 == com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.RECENTLY_OPENED_LAST_SNAP.ordinal() || i1 == com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT.ordinal())
        {
            return L();
        } else
        {
            return ae();
        }
    }

    public void c(int i1)
    {
        mTimeLeft = a(i1);
    }

    public void c(boolean flag)
    {
        if (flag)
        {
            mWasOpened = true;
        }
        if (mIsBeingViewed || !flag) goto _L2; else goto _L1
_L1:
        mTimeViewed = -mClock.b();
_L4:
        mIsBeingViewed = flag;
        return;
_L2:
        if (mIsBeingViewed && !flag)
        {
            mTimeViewed = mTimeViewed + mClock.b();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean c()
    {
        return au() || !G() && !U() && !Z();
    }

    public void d(int i1)
    {
        mTimeLeft = i1;
    }

    public void d(boolean flag)
    {
        mDidFutureBitmapStart.set(flag);
    }

    public boolean h()
    {
        return false;
    }

    public boolean i()
    {
        return !F() && !mIsLoading;
    }

    public boolean j()
    {
        return mUpdatedOnServer;
    }

    public boolean k()
    {
        return mZipped;
    }

    public String l()
    {
        return mSender;
    }

    public List m()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(UserPrefs.k());
        return arraylist;
    }

    public String n()
    {
        return mSender;
    }

    public void o()
    {
        mWasOpened = false;
        mIsLoading = false;
        if (F())
        {
            Timber.c("ReceivedSnap", "Call to markUnviewedAndUnloaded on an already viewed snap", new Object[0]);
            return;
        } else
        {
            mClientSnapStatus = Snap.ClientSnapStatus.UNVIEWED_AND_UNLOADED;
            return;
        }
    }

    public void p()
    {
        mIsLoading = true;
        mClientSnapStatus = Snap.ClientSnapStatus.LOADING;
    }

    public void q()
    {
        mWasOpened = false;
        mIsLoading = false;
        mClientSnapStatus = Snap.ClientSnapStatus.UNVIEWED_AND_LOADED;
    }

    public void r()
    {
        mViewedTimestamp = System.currentTimeMillis();
        mIsTimerRunning = false;
        mTimeLeft = 0.0D;
        c(false);
        mWasOpened = true;
        mIsLoading = false;
        if (y())
        {
            mClientSnapStatus = Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED;
        } else
        {
            mClientSnapStatus = Snap.ClientSnapStatus.RECEIVED_AND_VIEWED;
        }
        Caches.f.d(mId);
        Caches.k.d(mId);
        Caches.e.d(mId);
        User.c().a(this);
        C();
    }

    public void s()
    {
    }

    public boolean t()
    {
        return false;
    }

    public boolean u()
    {
        return false;
    }

    public void u_()
    {
        mViewedTimestamp = System.currentTimeMillis();
        mIsTimerRunning = false;
        mTimeLeft = 0.0D;
        c(false);
        mWasOpened = true;
        mIsLoading = false;
        mClientSnapStatus = Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE;
        User.c().a(this);
        C();
    }

    public boolean v()
    {
        return true;
    }

    public boolean w()
    {
        return false;
    }

    public void x()
    {
        mIsSelectedForReplay = true;
        mReplaySelectedTime = System.currentTimeMillis();
        mWasOpened = false;
        if (U())
        {
            q();
        } else
        {
            o();
        }
        User.c().a(this);
    }

    public boolean y()
    {
        return mIsSelectedForReplay;
    }

    public long z()
    {
        return mReplaySelectedTime;
    }
}
