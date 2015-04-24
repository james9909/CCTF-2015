// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.util.Log;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.common.internal:
//            h

public abstract class Ug
{

    final h Uf;
    private boolean Ug;
    private Object mListener;

    public abstract void j(Object obj);

    public abstract void jH();

    public void jI()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        obj = mListener;
        if (Ug)
        {
            Log.w("GmsClient", (new StringBuilder()).append("Callback proxy ").append(this).append(" being reused. This is not safe.").toString());
        }
        this;
        JVM INSTR monitorexit ;
        Exception exception;
        if (obj != null)
        {
            try
            {
                j(obj);
            }
            catch (RuntimeException runtimeexception)
            {
                jH();
                throw runtimeexception;
            }
        } else
        {
            jH();
        }
        this;
        JVM INSTR monitorenter ;
        Ug = true;
        this;
        JVM INSTR monitorexit ;
        unregister();
        return;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void jJ()
    {
        this;
        JVM INSTR monitorenter ;
        mListener = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void unregister()
    {
        jJ();
        synchronized (h.b(Uf))
        {
            h.b(Uf).remove(this);
        }
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public (h h1, Object obj)
    {
        Uf = h1;
        super();
        mListener = obj;
        Ug = false;
    }
}
