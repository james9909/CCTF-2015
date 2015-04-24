// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers;

import com.snapchat.android.Timber;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.blockers:
//            BlockerOrder

public abstract class Blocker
    implements Comparable
{
    public static interface ResolutionListener
    {

        public abstract void a(Blocker blocker);

        public abstract void a(Blocker blocker, List list, boolean flag);

        public abstract void b(Blocker blocker);

        public abstract void b(Blocker blocker, List list, boolean flag);
    }


    private static final String TAG = "Blocker";
    private ResolutionListener mListener;

    public Blocker()
    {
    }

    public int a(Blocker blocker)
    {
        return blocker.c().ordinal() - c().ordinal();
    }

    public void a()
    {
        Object aobj[] = new Object[1];
        aobj[0] = getClass().getSimpleName();
        Timber.b("Blocker", "CASH-LOG: %s DISMISSED", aobj);
        if (mListener != null)
        {
            mListener.a(this);
        }
    }

    public void a(ResolutionListener resolutionlistener)
    {
        mListener = resolutionlistener;
    }

    public abstract void a(CashTransaction cashtransaction);

    public void a(List list, boolean flag)
    {
        Object aobj[] = new Object[3];
        aobj[0] = getClass().getSimpleName();
        aobj[1] = list;
        aobj[2] = String.valueOf(flag);
        Timber.b("Blocker", "CASH-LOG: %s RESOLVED newBlockers[%s] shouldContinueResolution[%s]", aobj);
        if (mListener != null)
        {
            mListener.a(this, list, flag);
        }
    }

    public void b()
    {
        Object aobj[] = new Object[1];
        aobj[0] = getClass().getSimpleName();
        Timber.b("Blocker", "CASH-LOG: %s HARD FAILED", aobj);
        if (mListener != null)
        {
            mListener.b(this);
        }
    }

    public void b(List list, boolean flag)
    {
        Object aobj[] = new Object[3];
        aobj[0] = getClass().getSimpleName();
        aobj[1] = list;
        aobj[2] = String.valueOf(flag);
        Timber.b("Blocker", "CASH-LOG: %s FAILED additionalBlockers[%s] shouldContinueResolution[%s]", aobj);
        if (mListener != null)
        {
            mListener.b(this, list, flag);
        }
    }

    public abstract BlockerOrder c();

    public int compareTo(Object obj)
    {
        return a((Blocker)obj);
    }

    public boolean d()
    {
        return false;
    }

    public boolean equals(Object obj)
    {
        return this == obj || obj != null && getClass() == obj.getClass();
    }

    public int hashCode()
    {
        return getClass().getCanonicalName().hashCode();
    }
}
