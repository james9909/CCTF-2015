// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

// Referenced classes of package com.google.android.gms.internal:
//            ar, ao, hf, aq, 
//            as

public class ap
{

    private final int od = 6;
    private final int oe;
    private final ao of = new ar();
    private Base64OutputStream og;
    private ByteArrayOutputStream oh;

    public ap(int i)
    {
        oe = i;
    }

    private String m(String s)
    {
        String as1[] = s.split("\n");
        if (as1 == null || as1.length == 0)
        {
            return "";
        }
        oh = new ByteArrayOutputStream();
        og = new Base64OutputStream(oh, 10);
        Arrays.sort(as1, new Comparator() {

            final ap oi;

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((String)obj, (String)obj1);
            }

            public int compare(String s2, String s3)
            {
                return s3.length() - s2.length();
            }

            
            {
                oi = ap.this;
                super();
            }
        });
        int i = 0;
        while (i < as1.length && i < oe) 
        {
            if (as1[i].trim().length() != 0)
            {
                try
                {
                    og.write(of.l(as1[i]));
                }
                catch (IOException ioexception1)
                {
                    hf.b("Error while writing hash to byteStream", ioexception1);
                }
            }
            i++;
        }
        String s1;
        try
        {
            og.flush();
            og.close();
            s1 = oh.toString();
        }
        catch (IOException ioexception)
        {
            hf.b("HashManager: Unable to convert to base 64", ioexception);
            return "";
        }
        return s1;
    }

    public String a(ArrayList arraylist)
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); stringbuffer.append('\n'))
        {
            stringbuffer.append(((String)iterator.next()).toLowerCase(Locale.US));
        }

        switch (0)
        {
        default:
            return "";

        case 0: // '\0'
            return n(stringbuffer.toString());

        case 1: // '\001'
            return m(stringbuffer.toString());
        }
    }

    String n(String s)
    {
        String as1[] = s.split("\n");
        if (as1 == null || as1.length == 0)
        {
            return "";
        }
        oh = new ByteArrayOutputStream();
        og = new Base64OutputStream(oh, 10);
        PriorityQueue priorityqueue = new PriorityQueue(oe, new Comparator() {

            final ap oi;

            public int a(as.a a2, as.a a3)
            {
                return (int)(a2.value - a3.value);
            }

            public int compare(Object obj, Object obj1)
            {
                return a((as.a)obj, (as.a)obj1);
            }

            
            {
                oi = ap.this;
                super();
            }
        });
        int i = 0;
        while (i < as1.length) 
        {
            String as2[] = aq.p(as1[i]);
            if (as2.length >= od)
            {
                as.a(as2, oe, od, priorityqueue);
            }
            i++;
        }
        for (Iterator iterator = priorityqueue.iterator(); iterator.hasNext();)
        {
            as.a a1 = (as.a)iterator.next();
            try
            {
                og.write(of.l(a1.ok));
            }
            catch (IOException ioexception1)
            {
                hf.b("Error while writing hash to byteStream", ioexception1);
            }
        }

        String s1;
        try
        {
            og.flush();
            og.close();
            s1 = oh.toString();
        }
        catch (IOException ioexception)
        {
            hf.b("HashManager: unable to convert to base 64", ioexception);
            return "";
        }
        return s1;
    }
}
