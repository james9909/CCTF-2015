// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;


// Referenced classes of package org.joda.time:
//            Chronology, Instant

public interface ReadableInstant
    extends Comparable
{

    public abstract boolean a(ReadableInstant readableinstant);

    public abstract Chronology d();

    public abstract long x_();

    public abstract Instant y_();
}
