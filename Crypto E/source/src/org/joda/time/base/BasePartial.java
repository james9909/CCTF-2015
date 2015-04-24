// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import java.io.Serializable;
import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.base:
//            AbstractPartial

public abstract class BasePartial extends AbstractPartial
    implements Serializable, ReadablePartial
{

    private final Chronology a;
    private final int b[];

    public BasePartial()
    {
        this(DateTimeUtils.a(), null);
    }

    protected BasePartial(long l, Chronology chronology)
    {
        Chronology chronology1 = DateTimeUtils.a(chronology);
        a = chronology1.b();
        b = chronology1.a(this, l);
    }

    public BasePartial(int ai[], Chronology chronology)
    {
        Chronology chronology1 = DateTimeUtils.a(chronology);
        a = chronology1.b();
        chronology1.a(this, ai);
        b = ai;
    }

    public int a(int i)
    {
        return b[i];
    }

    public Chronology c()
    {
        return a;
    }
}
