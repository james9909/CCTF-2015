// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;

// Referenced classes of package android.support.v4.app:
//            ActivityOptionsCompat, ActivityOptionsCompat21

static class mImpl extends ActivityOptionsCompat
{

    private final ActivityOptionsCompat21 mImpl;

    public Bundle toBundle()
    {
        return mImpl.toBundle();
    }

    public void update(ActivityOptionsCompat activityoptionscompat)
    {
        if (activityoptionscompat instanceof mImpl)
        {
            mImpl mimpl = (mImpl)activityoptionscompat;
            mImpl.update(mimpl.mImpl);
        }
    }

    (ActivityOptionsCompat21 activityoptionscompat21)
    {
        mImpl = activityoptionscompat21;
    }
}
