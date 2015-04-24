// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.util.Locale;

// Referenced classes of package org.joda.time:
//            ReadablePartial, DateTimeFieldType, DurationField

public abstract class DateTimeField
{

    public DateTimeField()
    {
    }

    public abstract int a(long l);

    public abstract int a(Locale locale);

    public abstract int a(ReadablePartial readablepartial);

    public abstract int a(ReadablePartial readablepartial, int ai[]);

    public abstract long a(long l, int k);

    public abstract long a(long l, long l1);

    public abstract long a(long l, String s, Locale locale);

    public abstract String a(int k, Locale locale);

    public abstract String a(long l, Locale locale);

    public abstract String a(ReadablePartial readablepartial, Locale locale);

    public abstract DateTimeFieldType a();

    public abstract int b(long l, long l1);

    public abstract int b(ReadablePartial readablepartial);

    public abstract int b(ReadablePartial readablepartial, int ai[]);

    public abstract long b(long l, int k);

    public abstract String b();

    public abstract String b(int k, Locale locale);

    public abstract String b(long l, Locale locale);

    public abstract String b(ReadablePartial readablepartial, Locale locale);

    public abstract boolean b(long l);

    public abstract int c(long l);

    public abstract long c(long l, long l1);

    public abstract boolean c();

    public abstract int d(long l);

    public abstract boolean d();

    public abstract long e(long l);

    public abstract DurationField e();

    public abstract long f(long l);

    public abstract DurationField f();

    public abstract long g(long l);

    public abstract DurationField g();

    public abstract int h();

    public abstract long h(long l);

    public abstract int i();

    public abstract long i(long l);

    public abstract long j(long l);
}
