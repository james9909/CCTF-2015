// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import android.os.Bundle;
import com.google.android.gms.common.api.Releasable;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.common.data:
//            DataHolder, c, h

public abstract class DataBuffer
    implements Releasable, Iterable
{

    public final DataHolder Rb;

    public DataBuffer(DataHolder dataholder)
    {
        Rb = dataholder;
        if (Rb != null)
        {
            Rb.h(this);
        }
    }

    public final void close()
    {
        release();
    }

    public int describeContents()
    {
        return 0;
    }

    public abstract Object get(int i);

    public int getCount()
    {
        if (Rb == null)
        {
            return 0;
        } else
        {
            return Rb.getCount();
        }
    }

    public boolean isClosed()
    {
        if (Rb == null)
        {
            return true;
        } else
        {
            return Rb.isClosed();
        }
    }

    public Iterator iterator()
    {
        return new c(this);
    }

    public Bundle jk()
    {
        return Rb.jk();
    }

    public void release()
    {
        if (Rb != null)
        {
            Rb.close();
        }
    }

    public Iterator singleRefIterator()
    {
        return new h(this);
    }
}
