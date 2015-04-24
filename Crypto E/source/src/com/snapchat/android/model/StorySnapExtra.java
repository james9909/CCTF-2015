// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.model:
//            StorySnapNote

public class StorySnapExtra
{

    private int mScreenshotCount;
    private int mViewCount;

    public StorySnapExtra()
    {
        mViewCount = 0;
        mScreenshotCount = 0;
    }

    public StorySnapExtra(List list)
    {
        mViewCount = 0;
        mScreenshotCount = 0;
        if (list != null && !list.isEmpty())
        {
            mViewCount = list.size();
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                if (((StorySnapNote)iterator.next()).a())
                {
                    mScreenshotCount = 1 + mScreenshotCount;
                }
            } while (true);
        }
    }

    public int a()
    {
        return mViewCount;
    }

    public int b()
    {
        return mScreenshotCount;
    }
}
