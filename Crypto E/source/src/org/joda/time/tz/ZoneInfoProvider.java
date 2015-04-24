// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import org.joda.time.DateTimeZone;

// Referenced classes of package org.joda.time.tz:
//            Provider, DateTimeZoneBuilder

public class ZoneInfoProvider
    implements Provider
{

    private final File a;
    private final String b;
    private final ClassLoader c;
    private final Map d;

    public ZoneInfoProvider(String s)
    {
        this(s, null, false);
    }

    private ZoneInfoProvider(String s, ClassLoader classloader, boolean flag)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("No resource path provided");
        }
        if (!s.endsWith("/"))
        {
            s = (new StringBuilder()).append(s).append('/').toString();
        }
        a = null;
        b = s;
        if (classloader == null && !flag)
        {
            classloader = getClass().getClassLoader();
        }
        c = classloader;
        d = a(b("ZoneInfoMap"));
    }

    private static Map a(InputStream inputstream)
    {
        ConcurrentHashMap concurrenthashmap;
        DataInputStream datainputstream;
        concurrenthashmap = new ConcurrentHashMap();
        datainputstream = new DataInputStream(inputstream);
        a(datainputstream, ((Map) (concurrenthashmap)));
        Exception exception;
        try
        {
            datainputstream.close();
        }
        catch (IOException ioexception1) { }
        concurrenthashmap.put("UTC", new SoftReference(DateTimeZone.a));
        return concurrenthashmap;
        exception;
        try
        {
            datainputstream.close();
        }
        catch (IOException ioexception) { }
        throw exception;
    }

    private static void a(DataInputStream datainputstream, Map map)
    {
        int i = 0;
        int j = datainputstream.readUnsignedShort();
        String as[] = new String[j];
        for (int k = 0; k < j; k++)
        {
            as[k] = datainputstream.readUTF().intern();
        }

        int l = datainputstream.readUnsignedShort();
        while (i < l) 
        {
            try
            {
                map.put(as[datainputstream.readUnsignedShort()], as[datainputstream.readUnsignedShort()]);
            }
            catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception)
            {
                throw new IOException("Corrupt zone info map");
            }
            i++;
        }
    }

    private InputStream b(String s)
    {
        Object obj;
        if (a != null)
        {
            obj = new FileInputStream(new File(a, s));
        } else
        {
            String s1 = b.concat(s);
            if (c != null)
            {
                obj = c.getResourceAsStream(s1);
            } else
            {
                obj = ClassLoader.getSystemResourceAsStream(s1);
            }
            if (obj == null)
            {
                StringBuilder stringbuilder = (new StringBuilder(40)).append("Resource not found: \"").append(s1).append("\" ClassLoader: ");
                String s2;
                if (c != null)
                {
                    s2 = c.toString();
                } else
                {
                    s2 = "system";
                }
                throw new IOException(stringbuilder.append(s2).toString());
            }
        }
        return ((InputStream) (obj));
    }

    private DateTimeZone c(String s)
    {
        InputStream inputstream1 = b(s);
        InputStream inputstream = inputstream1;
        DateTimeZone datetimezone;
        datetimezone = DateTimeZoneBuilder.a(inputstream, s);
        d.put(s, new SoftReference(datetimezone));
        Exception exception;
        IOException ioexception1;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception3)
            {
                return datetimezone;
            }
        }
        return datetimezone;
        ioexception1;
        inputstream = null;
_L4:
        a(ioexception1);
        d.remove(s);
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception2) { }
        }
        return null;
        exception;
        inputstream = null;
_L2:
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Set a()
    {
        return new TreeSet(d.keySet());
    }

    public DateTimeZone a(String s)
    {
        DateTimeZone datetimezone;
        if (s == null)
        {
            datetimezone = null;
        } else
        {
            Object obj = d.get(s);
            if (obj == null)
            {
                return null;
            }
            if (s.equals(obj))
            {
                return c(s);
            }
            if (obj instanceof SoftReference)
            {
                datetimezone = (DateTimeZone)((SoftReference)obj).get();
                if (datetimezone == null)
                {
                    return c(s);
                }
            } else
            {
                return a((String)obj);
            }
        }
        return datetimezone;
    }

    protected void a(Exception exception)
    {
        Thread thread = Thread.currentThread();
        thread.getThreadGroup().uncaughtException(thread, exception);
    }
}
