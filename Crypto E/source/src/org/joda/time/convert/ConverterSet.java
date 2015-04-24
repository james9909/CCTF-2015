// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;


// Referenced classes of package org.joda.time.convert:
//            Converter

class ConverterSet
{
    static class Entry
    {

        final Class a;
        final Converter b;

        Entry(Class class1, Converter converter)
        {
            a = class1;
            b = converter;
        }
    }


    private final Converter a[];
    private Entry b[];

    ConverterSet(Converter aconverter[])
    {
        a = aconverter;
        b = new Entry[16];
    }

    private static Converter a(ConverterSet converterset, Class class1)
    {
        Converter aconverter[];
        int i;
        int j;
        ConverterSet converterset1;
        aconverter = converterset.a;
        i = aconverter.length;
        j = i;
        converterset1 = converterset;
_L9:
        int k = j - 1;
        if (k < 0) goto _L2; else goto _L1
_L1:
        Converter converter2;
        Class class4;
        converter2 = aconverter[k];
        class4 = converter2.a();
        if (class4 != class1) goto _L4; else goto _L3
_L3:
        Converter converter = converter2;
_L6:
        return converter;
_L4:
        if (class4 == null || class1 != null && !class4.isAssignableFrom(class1))
        {
            converterset1 = converterset1.a(k, ((Converter []) (null)));
            aconverter = converterset1.a;
            i = aconverter.length;
        }
        j = k;
        continue; /* Loop/switch isn't completed */
_L2:
        converter = null;
        if (class1 == null) goto _L6; else goto _L5
_L5:
        converter = null;
        if (i == 0) goto _L6; else goto _L7
_L7:
        if (i == 1)
        {
            return aconverter[0];
        }
        Converter aconverter1[] = aconverter;
        ConverterSet converterset2 = converterset1;
        int l = i;
        do
        {
            int i1 = i - 1;
            if (i1 < 0)
            {
                break;
            }
            Class class3 = aconverter1[i1].a();
            ConverterSet converterset3 = converterset2;
            int k1 = i1;
            int l1 = l;
            do
            {
                if (--l1 < 0)
                {
                    break;
                }
                if (l1 != k1 && aconverter1[l1].a().isAssignableFrom(class3))
                {
                    converterset3 = converterset3.a(l1, ((Converter []) (null)));
                    aconverter1 = converterset3.a;
                    l = aconverter1.length;
                    k1 = l - 1;
                }
            } while (true);
            i = k1;
            converterset2 = converterset3;
        } while (true);
        if (l == 1)
        {
            return aconverter1[0];
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Unable to find best converter for type \"");
        stringbuilder.append(class1.getName());
        stringbuilder.append("\" from remaining set: ");
        int j1 = 0;
        while (j1 < l) 
        {
            Converter converter1 = aconverter1[j1];
            Class class2 = converter1.a();
            stringbuilder.append(converter1.getClass().getName());
            stringbuilder.append('[');
            String s;
            if (class2 == null)
            {
                s = null;
            } else
            {
                s = class2.getName();
            }
            stringbuilder.append(s);
            stringbuilder.append("], ");
            j1++;
        }
        throw new IllegalStateException(stringbuilder.toString());
        if (true) goto _L9; else goto _L8
_L8:
    }

    int a()
    {
        return a.length;
    }

    Converter a(Class class1)
    {
        Entry aentry[];
        int i;
        int k;
        aentry = b;
        i = aentry.length;
        int j;
        Entry entry;
        if (class1 == null)
        {
            j = 0;
        } else
        {
            j = class1.hashCode() & i - 1;
        }
        k = j;
_L3:
        entry = aentry[k];
        if (entry == null) goto _L2; else goto _L1
_L1:
        if (entry.a == class1)
        {
            return entry.b;
        }
        int l1 = k + 1;
        Converter converter;
        Entry entry1;
        Entry aentry1[];
        int l;
        int i1;
        Entry aentry2[];
        int j1;
        Entry entry2;
        Class class2;
        int k1;
        if (l1 >= i)
        {
            k = 0;
        } else
        {
            k = l1;
        }
        if (true) goto _L3; else goto _L2
_L2:
        converter = a(this, class1);
        entry1 = new Entry(class1, converter);
        aentry1 = (Entry[])(Entry[])aentry.clone();
        aentry1[k] = entry1;
        for (l = 0; l < i; l++)
        {
            if (aentry1[l] == null)
            {
                b = aentry1;
                return converter;
            }
        }

        i1 = i << 1;
        aentry2 = new Entry[i1];
        for (j1 = 0; j1 < i; j1++)
        {
            entry2 = aentry1[j1];
            class2 = entry2.a;
            if (class2 == null)
            {
                k1 = 0;
            } else
            {
                k1 = class2.hashCode() & i1 - 1;
            }
            do
            {
                if (aentry2[k1] == null)
                {
                    break;
                }
                if (++k1 >= i1)
                {
                    k1 = 0;
                }
            } while (true);
            aentry2[k1] = entry2;
        }

        b = aentry2;
        return converter;
    }

    ConverterSet a(int i, Converter aconverter[])
    {
        Converter aconverter1[] = a;
        int j = aconverter1.length;
        if (i >= j)
        {
            throw new IndexOutOfBoundsException();
        }
        if (aconverter != null)
        {
            aconverter[0] = aconverter1[i];
        }
        Converter aconverter2[] = new Converter[j - 1];
        int k = 0;
        int l = 0;
        while (k < j) 
        {
            int i1;
            if (k != i)
            {
                i1 = l + 1;
                aconverter2[l] = aconverter1[k];
            } else
            {
                i1 = l;
            }
            k++;
            l = i1;
        }
        return new ConverterSet(aconverter2);
    }
}
