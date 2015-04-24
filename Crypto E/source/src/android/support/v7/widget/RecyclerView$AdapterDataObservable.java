// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.database.Observable;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

static class  extends Observable
{

    public void a()
    {
        for (int i = -1 + mObservers.size(); i >= 0; i--)
        {
            ((mObservers)mObservers.get(i)).mObservers();
        }

    }

    public void a(int i, int j)
    {
        for (int k = -1 + mObservers.size(); k >= 0; k--)
        {
            ((mObservers)mObservers.get(k)).mObservers(i, j);
        }

    }

    ()
    {
    }
}
