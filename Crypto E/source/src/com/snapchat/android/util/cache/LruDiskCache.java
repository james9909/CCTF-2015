// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.text.TextUtils;
import java.io.File;
import java.util.Collections;
import java.util.LinkedHashMap;

// Referenced classes of package com.snapchat.android.util.cache:
//            Cache, CacheType

public class LruDiskCache extends Cache
{

    public LruDiskCache(CacheType cachetype, int i)
    {
        super(cachetype, 0x7fffffffffffffffL);
        if (i <= 0)
        {
            throw new IllegalArgumentException();
        } else
        {
            a = Collections.synchronizedMap(new LinkedHashMap(i, 0.75F, true, i) {

                final int a;
                final LruDiskCache b;

                public String a(Object obj)
                {
                    String s = (String)get(obj);
                    if (!TextUtils.isEmpty(s))
                    {
                        (new File(s)).delete();
                    }
                    return (String)super.remove(obj);
                }

                public Object remove(Object obj)
                {
                    return a(obj);
                }

                protected boolean removeEldestEntry(java.util.Map.Entry entry)
                {
                    return size() > a;
                }

            
            {
                b = LruDiskCache.this;
                a = j;
                super(i, f, flag);
            }
            });
            return;
        }
    }

    public void d()
    {
    }
}
