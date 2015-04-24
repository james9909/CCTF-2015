// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.snapchat.android.analytics.SnapbryoAnalytics;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.system.Clock;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrix;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrixFactory;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.model:
//            AnnotatedMediabryo, SnapWomb, PostToStory, UserPrefs, 
//            SnapVideobryo, SnapImagebryo, User, MyPostToStory

public abstract class Snapbryo extends AnnotatedMediabryo
{
    public static class Builder
    {

        private String mCaptionText;
        private String mClientId;
        private boolean mIsChatMedia;
        private boolean mIsFrontFacingSnap;
        private boolean mIsMuted;
        private boolean mIsZipUpload;
        private Mediabryo.PostStatus mPostStatus;
        private ArrayList mPostToStories;
        private Bitmap mRawImageBitmap;
        private LinkedHashSet mRecipients;
        private boolean mRetried;
        private Mediabryo.SendStatus mSendStatus;
        private Date mTime;
        private long mTimeOfFirstAttempt;
        private long mTimeOfLastAttempt;
        private double mTimerValueOrDuration;
        private Mediabryo.UploadStatus mUploadStatus;
        private Uri mVideoUri;

        static String a(Builder builder)
        {
            return builder.mClientId;
        }

        static Date b(Builder builder)
        {
            return builder.mTime;
        }

        static LinkedHashSet c(Builder builder)
        {
            return builder.mRecipients;
        }

        static Mediabryo.UploadStatus d(Builder builder)
        {
            return builder.mUploadStatus;
        }

        static Mediabryo.SendStatus e(Builder builder)
        {
            return builder.mSendStatus;
        }

        static Mediabryo.PostStatus f(Builder builder)
        {
            return builder.mPostStatus;
        }

        static boolean g(Builder builder)
        {
            return builder.mRetried;
        }

        static Bitmap h(Builder builder)
        {
            return builder.mRawImageBitmap;
        }

        static Uri i(Builder builder)
        {
            return builder.mVideoUri;
        }

        static String j(Builder builder)
        {
            return builder.mCaptionText;
        }

        static boolean k(Builder builder)
        {
            return builder.mIsMuted;
        }

        static ArrayList l(Builder builder)
        {
            return builder.mPostToStories;
        }

        static boolean m(Builder builder)
        {
            return builder.mIsChatMedia;
        }

        static boolean n(Builder builder)
        {
            return builder.mIsFrontFacingSnap;
        }

        static double o(Builder builder)
        {
            return builder.mTimerValueOrDuration;
        }

        static long p(Builder builder)
        {
            return builder.mTimeOfFirstAttempt;
        }

        static long q(Builder builder)
        {
            return builder.mTimeOfLastAttempt;
        }

        static boolean r(Builder builder)
        {
            return builder.mIsZipUpload;
        }

        public Builder a(double d1)
        {
            mTimerValueOrDuration = d1;
            return this;
        }

        public Builder a(int i1)
        {
            mUploadStatus = Mediabryo.UploadStatus.values()[i1];
            return this;
        }

        public Builder a(Bitmap bitmap)
        {
            mRawImageBitmap = bitmap;
            return this;
        }

        public Builder a(Uri uri)
        {
            mVideoUri = uri;
            return this;
        }

        public Builder a(String s)
        {
            mClientId = s;
            return this;
        }

        public Builder a(boolean flag)
        {
            mIsChatMedia = flag;
            return this;
        }

        public Snapbryo a()
        {
            if (mVideoUri != null)
            {
                return new SnapVideobryo(this);
            } else
            {
                return new SnapImagebryo(this);
            }
        }

        public Builder b(int i1)
        {
            mSendStatus = Mediabryo.SendStatus.values()[i1];
            return this;
        }

        public Builder b(String s)
        {
            try
            {
                mTime = DateFormat.getDateTimeInstance().parse(s);
            }
            catch (ParseException parseexception)
            {
                if (ReleaseManager.e())
                {
                    throw new RuntimeException(parseexception);
                }
            }
            return this;
        }

        public Builder b(boolean flag)
        {
            mIsFrontFacingSnap = flag;
            return this;
        }

        public Builder c(int i1)
        {
            mPostStatus = Mediabryo.PostStatus.values()[i1];
            return this;
        }

        public Builder c(String s)
        {
            if (s.length() != 0)
            {
                mVideoUri = Uri.parse(s);
            }
            return this;
        }

        public Builder c(boolean flag)
        {
            mIsMuted = flag;
            return this;
        }

        public Builder d(String s)
        {
            ArrayList arraylist = new ArrayList(Arrays.asList(s.split("\\s*,\\s*")));
            User user = User.c();
            Friend friend;
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); mRecipients.add(friend))
            {
                friend = FriendUtils.a((String)iterator.next(), user);
            }

            return this;
        }

        public Builder d(boolean flag)
        {
            mIsZipUpload = flag;
            return this;
        }

        public Builder e(String s)
        {
            if (!TextUtils.isEmpty(s))
            {
                for (Iterator iterator = (new ArrayList(Arrays.asList(s.split("\\s*,\\s*")))).iterator(); iterator.hasNext();)
                {
                    String s1 = (String)iterator.next();
                    if (TextUtils.equals(s1, "my_story_ads79sdf"))
                    {
                        mPostToStories.add(MyPostToStory.a());
                    } else
                    {
                        mPostToStories.add(new PostToStory(s1, s1, null, null));
                    }
                }

            }
            return this;
        }

        public Builder e(boolean flag)
        {
            mRetried = flag;
            return this;
        }

        public Builder f(String s)
        {
            mCaptionText = s;
            return this;
        }

        public Builder g(String s)
        {
            mTimeOfFirstAttempt = Long.parseLong(s);
            return this;
        }

        public Builder h(String s)
        {
            mTimeOfLastAttempt = Long.parseLong(s);
            return this;
        }

        public Builder()
        {
            mTime = new Date();
            mRecipients = new LinkedHashSet();
            mPostToStories = new ArrayList();
            mUploadStatus = Mediabryo.UploadStatus.NOT_UPLOADED;
            mSendStatus = Mediabryo.SendStatus.UNSENT;
            mPostStatus = Mediabryo.PostStatus.NOT_POSTED;
            mClientId = (new StringBuilder()).append(UserPrefs.k()).append("~").append(UUID.randomUUID().toString()).toString().toUpperCase(Locale.US);
        }
    }


    protected Clock mClock;
    private boolean mIsChatMedia;
    private boolean mIsFrontFacingSnap;
    protected boolean mIsZipUpload;
    private ArrayList mPostToStories;
    private boolean mShouldExecutePostStoryTaskAfterUpload;
    private int mSnapOrientation;
    protected SnapbryoAnalytics mSnapbryoAnalytics;
    private long mTimeOfFirstAttempt;
    private long mTimeOfLastAttempt;
    private double mTimerValueOrDuration;

    protected Snapbryo(Builder builder)
    {
        super(Builder.a(builder), Builder.b(builder));
        mIsFrontFacingSnap = false;
        mSnapOrientation = 0;
        mSnapbryoAnalytics = new SnapbryoAnalytics();
        mClock = new Clock();
        mShouldExecutePostStoryTaskAfterUpload = false;
        a(Builder.c(builder));
        a(Builder.d(builder));
        a(Builder.e(builder), false);
        a(Builder.f(builder));
        e(Builder.g(builder));
        b(Builder.h(builder));
        a(Builder.i(builder));
        h(Builder.j(builder));
        f(Builder.k(builder));
        mPostToStories = Builder.l(builder);
        mIsChatMedia = Builder.m(builder);
        mIsFrontFacingSnap = Builder.n(builder);
        mTimerValueOrDuration = Builder.o(builder);
        mTimeOfFirstAttempt = Builder.p(builder);
        mTimeOfLastAttempt = Builder.q(builder);
        mIsZipUpload = Builder.r(builder);
    }

    protected Snapbryo(Snapbryo snapbryo)
    {
        super(snapbryo.N(), snapbryo.O());
        mIsFrontFacingSnap = false;
        mSnapOrientation = 0;
        mSnapbryoAnalytics = new SnapbryoAnalytics();
        mClock = new Clock();
        mShouldExecutePostStoryTaskAfterUpload = false;
        a(snapbryo.D());
        a(snapbryo.J());
        a(snapbryo.K());
        a(snapbryo.L());
        e(snapbryo.P());
        b(snapbryo.G());
        a(snapbryo.I());
        h(snapbryo.A());
        d(snapbryo.s());
        e(snapbryo.t());
        a(snapbryo.u());
        b(snapbryo.v());
        f(snapbryo.x());
        c(snapbryo.w());
        g(snapbryo.y());
        a(snapbryo.z());
        f(snapbryo.c());
        mIsZipUpload = snapbryo.mIsZipUpload;
        mPostToStories = snapbryo.mPostToStories;
        mTimerValueOrDuration = snapbryo.mTimerValueOrDuration;
        mTimeOfFirstAttempt = snapbryo.mTimeOfFirstAttempt;
        mTimeOfLastAttempt = snapbryo.mTimeOfLastAttempt;
        mIsChatMedia = snapbryo.mIsChatMedia;
        mIsFrontFacingSnap = snapbryo.mIsFrontFacingSnap;
        mShouldExecuteSendSnapTaskAfterUpload = snapbryo.mShouldExecuteSendSnapTaskAfterUpload;
        mShouldExecutePostStoryTaskAfterUpload = snapbryo.mShouldExecutePostStoryTaskAfterUpload;
    }

    private void Q()
    {
        mTimeOfLastAttempt = mClock.a();
    }

    private void b(Mediabryo.SendStatus sendstatus)
    {
        if (sendstatus == Mediabryo.SendStatus.SENT)
        {
            mSnapbryoAnalytics.b();
        } else
        {
            if (sendstatus == Mediabryo.SendStatus.SENDING || sendstatus == Mediabryo.SendStatus.SENDING_ON_UPLOAD)
            {
                mSnapbryoAnalytics.a();
                return;
            }
            if (sendstatus == Mediabryo.SendStatus.FAILED)
            {
                mSnapbryoAnalytics.c();
                return;
            }
        }
    }

    private void f()
    {
        if (mTimeOfFirstAttempt > 0L)
        {
            return;
        } else
        {
            mTimeOfFirstAttempt = mClock.a();
            return;
        }
    }

    public int a(Context context)
    {
        if (j())
        {
            return 3;
        } else
        {
            return super.a(context);
        }
    }

    public abstract Snapbryo a();

    public void a(double d1)
    {
        mTimerValueOrDuration = d1;
    }

    public void a(Mediabryo.PostStatus poststatus)
    {
        super.a(poststatus);
        if (poststatus == Mediabryo.PostStatus.POSTING || poststatus == Mediabryo.PostStatus.POSTING_ON_UPLOAD || poststatus == Mediabryo.PostStatus.WILL_POST_AFTER_SAVE)
        {
            f();
            Q();
        }
    }

    public void a(Mediabryo.SendStatus sendstatus)
    {
        a(sendstatus, true);
    }

    protected void a(Mediabryo.SendStatus sendstatus, boolean flag)
    {
        super.a(sendstatus);
        if (flag)
        {
            b(sendstatus);
        }
    }

    public void a(Mediabryo.UploadStatus uploadstatus)
    {
        super.a(uploadstatus);
        SnapWomb.a().a(this);
    }

    public void a(String s)
    {
        mClientId = s;
    }

    public void a(ArrayList arraylist)
    {
        mPostToStories = arraylist;
    }

    public int aa()
    {
        return mSnapOrientation;
    }

    public boolean ab()
    {
        return mIsFrontFacingSnap;
    }

    public float[] ac()
    {
        ImageTransformationMatrix imagetransformationmatrix = (new ImageTransformationMatrixFactory()).a(mIsFrontFacingSnap);
        switch (mSnapOrientation)
        {
        default:
            return imagetransformationmatrix.d();

        case 0: // '\0'
            return imagetransformationmatrix.a();

        case 90: // 'Z'
            return imagetransformationmatrix.c();

        case 180: 
            return imagetransformationmatrix.b();
        }
    }

    public void c(boolean flag)
    {
        mShouldExecutePostStoryTaskAfterUpload = flag;
    }

    public abstract boolean c();

    public Object clone()
    {
        return a();
    }

    public void d(int i)
    {
        mSnapOrientation = i;
    }

    public AnnotatedMediabryo e()
    {
        return a();
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Snapbryo))
        {
            return false;
        } else
        {
            return super.equals(obj);
        }
    }

    public abstract void f(boolean flag);

    public void g(boolean flag)
    {
        mIsFrontFacingSnap = flag;
    }

    public boolean j()
    {
        return mIsChatMedia;
    }

    public ArrayList l()
    {
        return mPostToStories;
    }

    public double m()
    {
        return mTimerValueOrDuration;
    }

    public boolean n()
    {
        return mIsZipUpload;
    }

    public long o()
    {
        return mTimeOfFirstAttempt;
    }

    public boolean p()
    {
        return mShouldExecutePostStoryTaskAfterUpload;
    }

    public long q()
    {
        return mTimeOfLastAttempt;
    }

    public String r()
    {
        Iterator iterator = mPostToStories.iterator();
        String s = "";
        for (String s1 = ""; iterator.hasNext(); s1 = ", ")
        {
            PostToStory posttostory = (PostToStory)iterator.next();
            s = (new StringBuilder()).append(s).append(s1).append(posttostory.c()).toString();
        }

        return s;
    }
}
