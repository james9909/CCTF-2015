// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.PendingIntent;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v4.app:
//            NotificationCompat, RemoteInput

public static class mParticipant
{

    private long mLatestTimestamp;
    private final List mMessages = new ArrayList();
    private final String mParticipant;
    private PendingIntent mReadPendingIntent;
    private RemoteInput mRemoteInput;
    private PendingIntent mReplyPendingIntent;

    public mParticipant addMessage(String s)
    {
        mMessages.add(s);
        return this;
    }

    public mMessages build()
    {
        String as[] = (String[])mMessages.toArray(new String[mMessages.size()]);
        String as1[] = new String[1];
        as1[0] = mParticipant;
        return new mParticipant(as, mRemoteInput, mReplyPendingIntent, mReadPendingIntent, as1, mLatestTimestamp);
    }

    public mLatestTimestamp setLatestTimestamp(long l)
    {
        mLatestTimestamp = l;
        return this;
    }

    public mLatestTimestamp setReadPendingIntent(PendingIntent pendingintent)
    {
        mReadPendingIntent = pendingintent;
        return this;
    }

    public mReadPendingIntent setReplyAction(PendingIntent pendingintent, RemoteInput remoteinput)
    {
        mRemoteInput = remoteinput;
        mReplyPendingIntent = pendingintent;
        return this;
    }

    public (String s)
    {
        mParticipant = s;
    }
}
