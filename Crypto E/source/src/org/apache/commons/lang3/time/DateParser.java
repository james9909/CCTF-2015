// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public interface DateParser
{

    public abstract Locale getLocale();

    public abstract String getPattern();

    public abstract TimeZone getTimeZone();

    public abstract Date parse(String s);

    public abstract Date parse(String s, ParsePosition parseposition);

    public abstract Object parseObject(String s);

    public abstract Object parseObject(String s, ParsePosition parseposition);
}
