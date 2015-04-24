// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Locale;
import org.joda.time.ReadablePeriod;

public interface PeriodPrinter
{

    public abstract int a(ReadablePeriod readableperiod, int i, Locale locale);

    public abstract int a(ReadablePeriod readableperiod, Locale locale);

    public abstract void a(StringBuffer stringbuffer, ReadablePeriod readableperiod, Locale locale);
}
