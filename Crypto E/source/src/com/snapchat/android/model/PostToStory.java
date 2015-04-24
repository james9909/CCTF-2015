// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.fragments.sendto.SendToItem;
import com.snapchat.android.model.server.ServerGeofence;
import com.snapchat.android.util.Geofence;

public class PostToStory
    implements SendToItem
{

    private String mCustomDescription;
    private String mCustomTitle;
    private String mDisplayName;
    private String mFriendName;
    private Geofence mGeofence;
    private boolean mIsLocalStory;
    private ServerGeofence mServerGeofence;
    private String mStoryGroupDisplayName;
    private String mStoryId;
    private long mTimestamp;
    private String mVenue;

    public PostToStory()
    {
    }

    public PostToStory(String s, String s1, Geofence geofence, String s2)
    {
        mStoryId = s;
        mDisplayName = s1;
        mGeofence = geofence;
        mVenue = s2;
    }

    public void a(long l1)
    {
        mTimestamp = l1;
    }

    public void a(String s)
    {
        mCustomTitle = s;
    }

    public void b(String s)
    {
        mCustomDescription = s;
    }

    public boolean b()
    {
        return SystemClock.elapsedRealtime() - mTimestamp > 0x124f80L;
    }

    public String c()
    {
        return mStoryId;
    }

    public String d()
    {
        return mDisplayName;
    }

    public Geofence e()
    {
        if (mServerGeofence != null && mGeofence == null)
        {
            mGeofence = new Geofence(mServerGeofence);
        }
        return mGeofence;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof PostToStory))
        {
            return false;
        } else
        {
            PostToStory posttostory = (PostToStory)obj;
            return TextUtils.equals(c(), posttostory.c());
        }
    }

    public String f()
    {
        return mDisplayName;
    }

    public String g()
    {
        return mVenue;
    }

    public String h()
    {
        return mFriendName;
    }

    public int hashCode()
    {
        return 629 + c().hashCode();
    }

    public String i()
    {
        return mStoryGroupDisplayName;
    }

    public boolean j()
    {
        return mIsLocalStory;
    }

    public String k()
    {
        return mCustomTitle;
    }

    public String l()
    {
        return mCustomDescription;
    }
}
