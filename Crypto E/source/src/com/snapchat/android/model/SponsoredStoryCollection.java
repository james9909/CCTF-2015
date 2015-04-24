// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.analytics.AnalyticsEvents;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.model:
//            RecentStoryCollection, StorySnap, SponsoredStoryMetadata, StoryCollection

public class SponsoredStoryCollection extends RecentStoryCollection
{

    public SponsoredStoryCollection(StoryCollection storycollection)
    {
        super(storycollection);
    }

    public String b()
    {
        Object obj = mStorySnapsMutex;
        obj;
        JVM INSTR monitorenter ;
        String s3;
        if (mUnviewedStorySnaps.isEmpty())
        {
            break MISSING_BLOCK_LABEL_57;
        }
        s3 = ((StorySnap)mUnviewedStorySnaps.get(-1 + mUnviewedStorySnaps.size())).g();
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        obj;
        JVM INSTR monitorexit ;
        return s3;
        String s2;
        if (mStorySnaps.isEmpty())
        {
            break MISSING_BLOCK_LABEL_102;
        }
        s2 = ((StorySnap)mStorySnaps.get(0)).g();
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        obj;
        JVM INSTR monitorexit ;
        return s2;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        String s1 = mUsername;
        obj;
        JVM INSTR monitorexit ;
        return s1;
    }

    public com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType h()
    {
        return com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType.c;
    }

    public void s()
    {
        Object obj = mStorySnapsMutex;
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator = mStorySnaps.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StorySnap storysnap = (StorySnap)iterator.next();
            if (storysnap.al() == Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE)
            {
                mUnviewedStorySnaps.add(storysnap);
                storysnap.av();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_73;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (!mUnviewedStorySnaps.isEmpty())
        {
            AnalyticsEvents.b((StorySnap)mUnviewedStorySnaps.get(0));
        }
        obj;
        JVM INSTR monitorexit ;
    }

    public void t()
    {
        Object obj = mStorySnapsMutex;
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator = mStorySnaps.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StorySnap storysnap = (StorySnap)iterator.next();
            if (storysnap.al() == Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE)
            {
                storysnap.a(Snap.ClientSnapStatus.RECEIVED_AND_VIEWED);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_64;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    public String u()
    {
label0:
        {
            String s1;
            synchronized (mStorySnapsMutex)
            {
                Iterator iterator = mStorySnaps.iterator();
                StorySnap storysnap;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    storysnap = (StorySnap)iterator.next();
                } while (!storysnap.e());
                s1 = storysnap.f().c();
            }
            return s1;
        }
        obj;
        JVM INSTR monitorexit ;
        return null;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
