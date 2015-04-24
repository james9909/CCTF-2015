// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;


// Referenced classes of package org.joda.time:
//            DateTimeFieldType, Chronology, DateTimeField

public interface ReadablePartial
    extends Comparable
{

    public abstract int a();

    public abstract int a(int i);

    public abstract int a(DateTimeFieldType datetimefieldtype);

    public abstract DateTimeFieldType b(int i);

    public abstract boolean b(DateTimeFieldType datetimefieldtype);

    public abstract Chronology c();

    public abstract DateTimeField c(int i);
}
