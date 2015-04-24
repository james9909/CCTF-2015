// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;


// Referenced classes of package org.joda.time:
//            DurationFieldType

public abstract class DurationField
    implements Comparable
{

    public DurationField()
    {
    }

    public abstract long a(long l, int i);

    public abstract long a(long l, long l1);

    public abstract DurationFieldType a();

    public abstract int b(long l, long l1);

    public abstract boolean b();

    public abstract long c(long l, long l1);

    public abstract boolean c();

    public abstract long d();

    public abstract String toString();
}
