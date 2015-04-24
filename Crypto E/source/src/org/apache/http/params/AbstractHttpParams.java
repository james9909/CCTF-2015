// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.params;

import java.util.Set;

// Referenced classes of package org.apache.http.params:
//            HttpParams, HttpParamsNames

public abstract class AbstractHttpParams
    implements HttpParams, HttpParamsNames
{

    protected AbstractHttpParams()
    {
    }

    public boolean getBooleanParameter(String s, boolean flag)
    {
        Object obj = getParameter(s);
        if (obj == null)
        {
            return flag;
        } else
        {
            return ((Boolean)obj).booleanValue();
        }
    }

    public double getDoubleParameter(String s, double d)
    {
        Object obj = getParameter(s);
        if (obj == null)
        {
            return d;
        } else
        {
            return ((Double)obj).doubleValue();
        }
    }

    public int getIntParameter(String s, int i)
    {
        Object obj = getParameter(s);
        if (obj == null)
        {
            return i;
        } else
        {
            return ((Integer)obj).intValue();
        }
    }

    public long getLongParameter(String s, long l)
    {
        Object obj = getParameter(s);
        if (obj == null)
        {
            return l;
        } else
        {
            return ((Long)obj).longValue();
        }
    }

    public Set getNames()
    {
        throw new UnsupportedOperationException();
    }

    public boolean isParameterFalse(String s)
    {
        boolean flag = getBooleanParameter(s, false);
        boolean flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    public boolean isParameterTrue(String s)
    {
        return getBooleanParameter(s, false);
    }

    public HttpParams setBooleanParameter(String s, boolean flag)
    {
        Boolean boolean1;
        if (flag)
        {
            boolean1 = Boolean.TRUE;
        } else
        {
            boolean1 = Boolean.FALSE;
        }
        setParameter(s, boolean1);
        return this;
    }

    public HttpParams setDoubleParameter(String s, double d)
    {
        setParameter(s, Double.valueOf(d));
        return this;
    }

    public HttpParams setIntParameter(String s, int i)
    {
        setParameter(s, Integer.valueOf(i));
        return this;
    }

    public HttpParams setLongParameter(String s, long l)
    {
        setParameter(s, Long.valueOf(l));
        return this;
    }
}
