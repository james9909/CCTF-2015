// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import java.lang.ref.SoftReference;

// Referenced classes of package org.aspectj.runtime.reflect:
//            SignatureImpl

static final class b
    implements b
{

    private SoftReference a;

    private String[] a()
    {
        return (String[])(String[])a.get();
    }

    private String[] b()
    {
        String as[] = new String[3];
        a = new SoftReference(as);
        return as;
    }

    public String a(int i)
    {
        String as[] = a();
        if (as == null)
        {
            return null;
        } else
        {
            return as[i];
        }
    }

    public void a(int i, String s)
    {
        String as[] = a();
        if (as == null)
        {
            as = b();
        }
        as[i] = s;
    }

    public _cls9()
    {
        b();
    }
}
