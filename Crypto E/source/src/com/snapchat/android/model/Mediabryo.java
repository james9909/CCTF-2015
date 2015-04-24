// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.bitmap.BitmapPool;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;

// Referenced classes of package com.snapchat.android.model:
//            Friend, User

public abstract class Mediabryo
    implements Comparable
{
    public static final class PostStatus extends Enum
    {

        private static final PostStatus $VALUES[];
        public static final PostStatus FAILED;
        public static final PostStatus NOT_POSTED;
        public static final PostStatus POSTED;
        public static final PostStatus POSTING;
        public static final PostStatus POSTING_ON_UPLOAD;
        public static final PostStatus WILL_POST_AFTER_SAVE;

        public static PostStatus valueOf(String s)
        {
            return (PostStatus)Enum.valueOf(com/snapchat/android/model/Mediabryo$PostStatus, s);
        }

        public static PostStatus[] values()
        {
            return (PostStatus[])$VALUES.clone();
        }

        static 
        {
            NOT_POSTED = new PostStatus("NOT_POSTED", 0);
            POSTING = new PostStatus("POSTING", 1);
            WILL_POST_AFTER_SAVE = new PostStatus("WILL_POST_AFTER_SAVE", 2);
            POSTING_ON_UPLOAD = new PostStatus("POSTING_ON_UPLOAD", 3);
            POSTED = new PostStatus("POSTED", 4);
            FAILED = new PostStatus("FAILED", 5);
            PostStatus apoststatus[] = new PostStatus[6];
            apoststatus[0] = NOT_POSTED;
            apoststatus[1] = POSTING;
            apoststatus[2] = WILL_POST_AFTER_SAVE;
            apoststatus[3] = POSTING_ON_UPLOAD;
            apoststatus[4] = POSTED;
            apoststatus[5] = FAILED;
            $VALUES = apoststatus;
        }

        private PostStatus(String s, int j)
        {
            super(s, j);
        }
    }

    public static final class SendStatus extends Enum
    {

        private static final SendStatus $VALUES[];
        public static final SendStatus FAILED;
        public static final SendStatus SENDING;
        public static final SendStatus SENDING_ON_UPLOAD;
        public static final SendStatus SENT;
        public static final SendStatus UNSENT;

        public static SendStatus valueOf(String s)
        {
            return (SendStatus)Enum.valueOf(com/snapchat/android/model/Mediabryo$SendStatus, s);
        }

        public static SendStatus[] values()
        {
            return (SendStatus[])$VALUES.clone();
        }

        static 
        {
            UNSENT = new SendStatus("UNSENT", 0);
            SENDING = new SendStatus("SENDING", 1);
            SENDING_ON_UPLOAD = new SendStatus("SENDING_ON_UPLOAD", 2);
            SENT = new SendStatus("SENT", 3);
            FAILED = new SendStatus("FAILED", 4);
            SendStatus asendstatus[] = new SendStatus[5];
            asendstatus[0] = UNSENT;
            asendstatus[1] = SENDING;
            asendstatus[2] = SENDING_ON_UPLOAD;
            asendstatus[3] = SENT;
            asendstatus[4] = FAILED;
            $VALUES = asendstatus;
        }

        private SendStatus(String s, int j)
        {
            super(s, j);
        }
    }

    public static final class UploadStatus extends Enum
    {

        private static final UploadStatus $VALUES[];
        public static final UploadStatus FAILED;
        public static final UploadStatus NOT_UPLOADED;
        public static final UploadStatus UPLOADED;
        public static final UploadStatus UPLOADING;
        public static final UploadStatus WILL_UPLOAD_AFTER_SAVE;

        public static UploadStatus valueOf(String s)
        {
            return (UploadStatus)Enum.valueOf(com/snapchat/android/model/Mediabryo$UploadStatus, s);
        }

        public static UploadStatus[] values()
        {
            return (UploadStatus[])$VALUES.clone();
        }

        static 
        {
            NOT_UPLOADED = new UploadStatus("NOT_UPLOADED", 0);
            UPLOADING = new UploadStatus("UPLOADING", 1);
            WILL_UPLOAD_AFTER_SAVE = new UploadStatus("WILL_UPLOAD_AFTER_SAVE", 2);
            UPLOADED = new UploadStatus("UPLOADED", 3);
            FAILED = new UploadStatus("FAILED", 4);
            UploadStatus auploadstatus[] = new UploadStatus[5];
            auploadstatus[0] = NOT_UPLOADED;
            auploadstatus[1] = UPLOADING;
            auploadstatus[2] = WILL_UPLOAD_AFTER_SAVE;
            auploadstatus[3] = UPLOADED;
            auploadstatus[4] = FAILED;
            $VALUES = auploadstatus;
        }

        private UploadStatus(String s, int j)
        {
            super(s, j);
        }
    }


    protected String mClientId;
    private PostStatus mPostStatus;
    private Bitmap mRawImageBitmap;
    private LinkedHashSet mRecipients;
    private boolean mRetried;
    private SendStatus mSendStatus;
    private Date mTime;
    private UploadStatus mUploadStatus;
    private Uri mVideoUri;

    protected Mediabryo(String s)
    {
        mClientId = s;
        mTime = new Date();
        mUploadStatus = UploadStatus.NOT_UPLOADED;
        mSendStatus = SendStatus.UNSENT;
        mPostStatus = PostStatus.NOT_POSTED;
        mRetried = false;
    }

    protected Mediabryo(String s, Date date)
    {
        this(s);
        mTime = date;
    }

    public LinkedHashSet D()
    {
        return mRecipients;
    }

    public String E()
    {
        Iterator iterator = mRecipients.iterator();
        String s = "";
        for (String s1 = ""; iterator.hasNext(); s1 = ", ")
        {
            Friend friend = (Friend)iterator.next();
            s = (new StringBuilder()).append(s).append(s1).append(friend.a()).toString();
        }

        return s;
    }

    public String[] F()
    {
        String as[] = new String[mRecipients.size()];
        Iterator iterator = mRecipients.iterator();
        for (int j = 0; iterator.hasNext(); j++)
        {
            as[j] = ((Friend)iterator.next()).a();
        }

        return as;
    }

    public Bitmap G()
    {
        return mRawImageBitmap;
    }

    public void H()
    {
        if (mRawImageBitmap == null)
        {
            return;
        } else
        {
            BitmapPool.a().a(mRawImageBitmap);
            mRawImageBitmap = null;
            return;
        }
    }

    public Uri I()
    {
        return mVideoUri;
    }

    public UploadStatus J()
    {
        return mUploadStatus;
    }

    public SendStatus K()
    {
        return mSendStatus;
    }

    public PostStatus L()
    {
        return mPostStatus;
    }

    public HashMap M()
    {
        HashMap hashmap = new HashMap();
        Iterator iterator = mRecipients.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = ((Friend)iterator.next()).a();
            ChatConversation chatconversation = ConversationUtils.b(s);
            if (chatconversation != null)
            {
                hashmap.put(s, Long.valueOf(chatconversation.X()));
            }
        } while (true);
        return hashmap;
    }

    public String N()
    {
        return mClientId;
    }

    public Date O()
    {
        return mTime;
    }

    public boolean P()
    {
        return mRetried;
    }

    public int a(Context context)
    {
        return ViewUtils.c(context);
    }

    public int a(Mediabryo mediabryo)
    {
        return mTime.compareTo(mediabryo.O());
    }

    public void a(Uri uri)
    {
        mVideoUri = uri;
    }

    public void a(PostStatus poststatus)
    {
        mPostStatus = poststatus;
    }

    public void a(SendStatus sendstatus)
    {
        mSendStatus = sendstatus;
    }

    public void a(UploadStatus uploadstatus)
    {
        mUploadStatus = uploadstatus;
    }

    public void a(LinkedHashSet linkedhashset)
    {
        mRecipients = linkedhashset;
    }

    public abstract int b();

    public void b(Bitmap bitmap)
    {
        mRawImageBitmap = bitmap;
    }

    public int compareTo(Object obj)
    {
        return a((Mediabryo)obj);
    }

    public abstract byte[] d();

    public void e(boolean flag)
    {
        mRetried = flag;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Mediabryo))
        {
            return false;
        } else
        {
            Mediabryo mediabryo = (Mediabryo)obj;
            return mClientId.equals(mediabryo.mClientId);
        }
    }

    public int hashCode()
    {
        return mClientId.hashCode();
    }

    public void i(String s)
    {
        if (s != null)
        {
            ArrayList arraylist = new ArrayList(Arrays.asList(s.split("\\s*,\\s*")));
            User user = User.c();
            Iterator iterator = arraylist.iterator();
            while (iterator.hasNext()) 
            {
                Friend friend = FriendUtils.a((String)iterator.next(), user);
                mRecipients.add(friend);
            }
        }
    }
}
