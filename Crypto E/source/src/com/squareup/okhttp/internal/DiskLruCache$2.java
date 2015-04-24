// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.squareup.okhttp.internal:
//            DiskLruCache

class apshot
    implements Iterator
{

    final Iterator a;
    apshot b;
    apshot c;
    final DiskLruCache d;

    public apshot a()
    {
        if (!hasNext())
        {
            throw new NoSuchElementException();
        } else
        {
            c = b;
            b = null;
            return c;
        }
    }

    public boolean hasNext()
    {
label0:
        {
            if (b != null)
            {
                return true;
            }
            synchronized (d)
            {
                if (!d.a())
                {
                    break label0;
                }
            }
            return false;
        }
        apshot apshot;
        do
        {
            if (!a.hasNext())
            {
                break MISSING_BLOCK_LABEL_71;
            }
            apshot = ((try)a.next()).a();
        } while (apshot == null);
        b = apshot;
        disklrucache;
        JVM INSTR monitorexit ;
        return true;
        disklrucache;
        JVM INSTR monitorexit ;
        return false;
        exception;
        disklrucache;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Object next()
    {
        return a();
    }

    public void remove()
    {
        Exception exception;
        if (c == null)
        {
            throw new IllegalStateException("remove() before next()");
        }
        try
        {
            d.c(apshot.a(c));
        }
        catch (IOException ioexception)
        {
            c = null;
            return;
        }
        finally
        {
            c = null;
        }
        c = null;
        return;
        throw exception;
    }
}
