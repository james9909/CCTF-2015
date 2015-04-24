// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ZoneInfoCompiler
{
    static class DateTimeOfYear
    {

        public final int a = 1;
        public final int b = 1;
        public final int c = 0;
        public final boolean d = false;
        public final int e = 0;
        public final char f = 'w';

        public String toString()
        {
            return (new StringBuilder()).append("MonthOfYear: ").append(a).append("\n").append("DayOfMonth: ").append(b).append("\n").append("DayOfWeek: ").append(c).append("\n").append("AdvanceDayOfWeek: ").append(d).append("\n").append("MillisOfDay: ").append(e).append("\n").append("ZoneChar: ").append(f).append("\n").toString();
        }

        DateTimeOfYear()
        {
        }
    }

    static class Rule
    {

        public final String a;
        public final int b;
        public final int c;
        public final String d;
        public final DateTimeOfYear e;
        public final int f;
        public final String g;

        public String toString()
        {
            return (new StringBuilder()).append("[Rule]\nName: ").append(a).append("\n").append("FromYear: ").append(b).append("\n").append("ToYear: ").append(c).append("\n").append("Type: ").append(d).append("\n").append(e).append("SaveMillis: ").append(f).append("\n").append("LetterS: ").append(g).append("\n").toString();
        }
    }

    static class RuleSet
    {
    }

    static class Zone
    {

        public final String a;
        public final int b;
        public final String c;
        public final String d;
        public final int e;
        public final DateTimeOfYear f;
        private Zone g;

        public String toString()
        {
            String s = (new StringBuilder()).append("[Zone]\nName: ").append(a).append("\n").append("OffsetMillis: ").append(b).append("\n").append("Rules: ").append(c).append("\n").append("Format: ").append(d).append("\n").append("UntilYear: ").append(e).append("\n").append(f).toString();
            if (g == null)
            {
                return s;
            } else
            {
                return (new StringBuilder()).append(s).append("...\n").append(g.toString()).toString();
            }
        }
    }


    static ThreadLocal a = new ThreadLocal() {

        protected Boolean a()
        {
            return Boolean.FALSE;
        }

        protected Object initialValue()
        {
            return a();
        }

    };
    private Map b;
    private List c;
    private List d;

    public ZoneInfoCompiler()
    {
        b = new HashMap();
        c = new ArrayList();
        d = new ArrayList();
    }

}
