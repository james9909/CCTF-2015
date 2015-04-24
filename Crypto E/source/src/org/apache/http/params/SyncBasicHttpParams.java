// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.params;


// Referenced classes of package org.apache.http.params:
//            BasicHttpParams, HttpParams

public class SyncBasicHttpParams extends BasicHttpParams
{

    private static final long serialVersionUID = 0x4ac56f4476f17222L;

    public SyncBasicHttpParams()
    {
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        super.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public Object clone()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = super.clone();
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public Object getParameter(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = super.getParameter(s);
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isParameterSet(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = super.isParameterSet(s);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isParameterSetLocally(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = super.isParameterSetLocally(s);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean removeParameter(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = super.removeParameter(s);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public HttpParams setParameter(String s, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        HttpParams httpparams = super.setParameter(s, obj);
        this;
        JVM INSTR monitorexit ;
        return httpparams;
        Exception exception;
        exception;
        throw exception;
    }

    public void setParameters(String as[], Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        super.setParameters(as, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
