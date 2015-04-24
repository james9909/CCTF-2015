// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.snapchat.android.Timber;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class IntentPool
{

    private final List a;

    public IntentPool()
    {
        this(8);
    }

    public IntentPool(int i)
    {
        a = new ArrayList(i);
    }

    public static boolean b(Intent intent)
    {
        boolean flag = false;
        if (intent != null)
        {
            boolean flag1 = intent.getBooleanExtra("from_pool", false);
            flag = false;
            if (flag1)
            {
                flag = true;
            }
        }
        return flag;
    }

    public Intent a(Context context, Class class1)
    {
        this;
        JVM INSTR monitorenter ;
        Intent intent;
        if (!a.isEmpty())
        {
            break MISSING_BLOCK_LABEL_63;
        }
        Timber.c("IntentPool", "Running out of Intents in the pool. Create one more!", new Object[0]);
        intent = new Intent();
_L1:
        intent.setComponent(new ComponentName(context, class1));
        intent.putExtra("from_pool", true);
        this;
        JVM INSTR monitorexit ;
        return intent;
        Timber.c("IntentPool", "Retrieve an Intent from the pool!", new Object[0]);
        intent = (Intent)a.remove(0);
        Iterator iterator = intent.getExtras().keySet().iterator();
        while (iterator.hasNext()) 
        {
            intent.removeExtra((String)iterator.next());
        }
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public void a(Intent intent)
    {
        this;
        JVM INSTR monitorenter ;
        Timber.c("IntentPool", "Puts the intent back into the pool", new Object[0]);
        a.add(intent);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
