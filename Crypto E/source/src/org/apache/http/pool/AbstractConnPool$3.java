// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.pool;


// Referenced classes of package org.apache.http.pool:
//            PoolEntryCallback, AbstractConnPool, PoolEntry

class val.deadline
    implements PoolEntryCallback
{

    final AbstractConnPool this$0;
    final long val$deadline;

    public void process(PoolEntry poolentry)
    {
        if (poolentry.getUpdated() <= val$deadline)
        {
            poolentry.close();
        }
    }

    ()
    {
        this$0 = final_abstractconnpool;
        val$deadline = J.this;
        super();
    }
}
