// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.LinkedHashMap;

// Referenced classes of package org.joda.time.format:
//            DateTimeFormat

static class  extends LinkedHashMap
{

    protected boolean removeEldestEntry(java.util.meFormat._cls1 _pcls1)
    {
        return size() > 500;
    }

    (int i)
    {
        super(i);
    }
}
