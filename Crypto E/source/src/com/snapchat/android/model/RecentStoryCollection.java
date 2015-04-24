// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.fragments.stories.StoriesListItem;
import com.snapchat.android.util.FriendUtils;
import java.util.List;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.model:
//            StoryCollection, User, StorySnap, ReceivedSnap

public class RecentStoryCollection extends StoryCollection
    implements StoriesListItem
{

    public RecentStoryCollection(StoryCollection storycollection)
    {
        this(storycollection, User.UNSAFE_USER_PROVIDER);
    }

    protected RecentStoryCollection(StoryCollection storycollection, Provider provider)
    {
        super(storycollection.mStorySnaps, storycollection.mUnviewedStorySnaps, provider);
        mUsername = storycollection.mUsername;
        mUserHasSeenInFeed = storycollection.mUserHasSeenInFeed;
        mIndexOfLastStoryViewed = storycollection.mIndexOfLastStoryViewed;
    }

    public List a(int j, StorySnap storysnap)
    {
        List list = z();
        return list.subList(Math.max(0, list.size() - j), list.size());
    }

    public String b()
    {
        return FriendUtils.d(a(), User.c());
    }

    public boolean d()
    {
        List list = mUnviewedStorySnaps;
        list;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (!mUnviewedStorySnaps.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        list;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof RecentStoryCollection)
        {
            return mUsername.equals(((RecentStoryCollection)obj).a());
        } else
        {
            return false;
        }
    }

    public ReceivedSnap f()
    {
        return r();
    }

    public boolean g()
    {
        return true;
    }

    public com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType h()
    {
        if (N())
        {
            return com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType.c;
        } else
        {
            return com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType.b;
        }
    }

    public int hashCode()
    {
        return 31 * (527 + mUsername.hashCode()) + "recentStoryCollection".hashCode();
    }

    public ReceivedSnap i()
    {
        return q();
    }

    public boolean k()
    {
        Object obj = mStorySnapsMutex;
        obj;
        JVM INSTR monitorenter ;
        if (!mStorySnaps.isEmpty() && ((StorySnap)mStorySnaps.get(0)).e())
        {
            return true;
        }
        obj;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public List l()
    {
        return y();
    }

    public List m()
    {
        return z();
    }

    public boolean n()
    {
        if (super.n())
        {
            return true;
        } else
        {
            return mUnviewedStorySnaps.isEmpty();
        }
    }

    public boolean o()
    {
        return J();
    }

    public boolean p()
    {
        return H();
    }

    public StorySnap q()
    {
        Object obj = mStorySnapsMutex;
        obj;
        JVM INSTR monitorenter ;
        int j = -2 + mUnviewedStorySnaps.size();
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        StorySnap storysnap = (StorySnap)mUnviewedStorySnaps.get(j);
        obj;
        JVM INSTR monitorexit ;
        return storysnap;
        obj;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public StorySnap r()
    {
        return G();
    }

    public boolean r_()
    {
        return FriendUtils.c(a(), User.c());
    }
}
