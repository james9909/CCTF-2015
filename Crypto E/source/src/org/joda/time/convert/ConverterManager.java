// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;


// Referenced classes of package org.joda.time.convert:
//            Converter, ReadableInstantConverter, StringConverter, CalendarConverter, 
//            DateConverter, LongConverter, NullConverter, ConverterSet, 
//            ReadablePartialConverter, ReadableDurationConverter, ReadableIntervalConverter, ReadablePeriodConverter, 
//            InstantConverter

public final class ConverterManager
{

    private static ConverterManager a;
    private ConverterSet b;
    private ConverterSet c;
    private ConverterSet d;
    private ConverterSet e;
    private ConverterSet f;

    protected ConverterManager()
    {
        Converter aconverter[] = new Converter[6];
        aconverter[0] = ReadableInstantConverter.a;
        aconverter[1] = StringConverter.a;
        aconverter[2] = CalendarConverter.a;
        aconverter[3] = DateConverter.a;
        aconverter[4] = LongConverter.a;
        aconverter[5] = NullConverter.a;
        b = new ConverterSet(aconverter);
        Converter aconverter1[] = new Converter[7];
        aconverter1[0] = ReadablePartialConverter.a;
        aconverter1[1] = ReadableInstantConverter.a;
        aconverter1[2] = StringConverter.a;
        aconverter1[3] = CalendarConverter.a;
        aconverter1[4] = DateConverter.a;
        aconverter1[5] = LongConverter.a;
        aconverter1[6] = NullConverter.a;
        c = new ConverterSet(aconverter1);
        Converter aconverter2[] = new Converter[5];
        aconverter2[0] = ReadableDurationConverter.a;
        aconverter2[1] = ReadableIntervalConverter.a;
        aconverter2[2] = StringConverter.a;
        aconverter2[3] = LongConverter.a;
        aconverter2[4] = NullConverter.a;
        d = new ConverterSet(aconverter2);
        Converter aconverter3[] = new Converter[5];
        aconverter3[0] = ReadableDurationConverter.a;
        aconverter3[1] = ReadablePeriodConverter.a;
        aconverter3[2] = ReadableIntervalConverter.a;
        aconverter3[3] = StringConverter.a;
        aconverter3[4] = NullConverter.a;
        e = new ConverterSet(aconverter3);
        Converter aconverter4[] = new Converter[3];
        aconverter4[0] = ReadableIntervalConverter.a;
        aconverter4[1] = StringConverter.a;
        aconverter4[2] = NullConverter.a;
        f = new ConverterSet(aconverter4);
    }

    public static ConverterManager a()
    {
        if (a == null)
        {
            a = new ConverterManager();
        }
        return a;
    }

    public InstantConverter a(Object obj)
    {
        ConverterSet converterset = b;
        Class class1;
        InstantConverter instantconverter;
        if (obj == null)
        {
            class1 = null;
        } else
        {
            class1 = obj.getClass();
        }
        instantconverter = (InstantConverter)converterset.a(class1);
        if (instantconverter != null)
        {
            return instantconverter;
        }
        StringBuilder stringbuilder = (new StringBuilder()).append("No instant converter found for type: ");
        String s;
        if (obj == null)
        {
            s = "null";
        } else
        {
            s = obj.getClass().getName();
        }
        throw new IllegalArgumentException(stringbuilder.append(s).toString());
    }

    public String toString()
    {
        return (new StringBuilder()).append("ConverterManager[").append(b.a()).append(" instant,").append(c.a()).append(" partial,").append(d.a()).append(" duration,").append(e.a()).append(" period,").append(f.a()).append(" interval]").toString();
    }
}
