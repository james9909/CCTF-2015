// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.sdk:
//            el, fb

public final class db
{

    private int a;
    private String b;
    private Map c;
    private long d;
    private boolean e;
    private boolean f;
    private long g;

    public db(int i, String s, Map map, long l, boolean flag)
    {
        a = i;
        b = s;
        c = map;
        d = l;
        e = flag;
        if (e)
        {
            f = false;
            return;
        } else
        {
            f = true;
            return;
        }
    }

    public void a(long l)
    {
        f = true;
        g = l - d;
        el.a(3, "FlurryAgent", (new StringBuilder()).append("Ended event '").append(b).append("' (").append(d).append(") after ").append(g).append("ms").toString());
    }

    public void a(Map map)
    {
        if (c == null || c.size() == 0)
        {
            c = map;
        } else
        {
            Iterator iterator = map.entrySet().iterator();
            while (iterator.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (c.containsKey(entry.getKey()))
                {
                    c.remove(entry.getKey());
                    c.put(entry.getKey(), entry.getValue());
                } else
                {
                    c.put(entry.getKey(), entry.getValue());
                }
            }
        }
    }

    public boolean a()
    {
        return e;
    }

    public boolean a(String s)
    {
        return e && g == 0L && b.equals(s);
    }

    public void b(Map map)
    {
        c = map;
    }

    public boolean b()
    {
        return f;
    }

    public Map c()
    {
        return c;
    }

    public int d()
    {
        return e().length;
    }

    public byte[] e()
    {
        ByteArrayOutputStream bytearrayoutputstream;
        Object obj;
        bytearrayoutputstream = new ByteArrayOutputStream();
        obj = new DataOutputStream(bytearrayoutputstream);
        ((DataOutputStream) (obj)).writeShort(a);
        ((DataOutputStream) (obj)).writeUTF(b);
        if (c != null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        ((DataOutputStream) (obj)).writeShort(0);
_L1:
        byte abyte1[];
        ((DataOutputStream) (obj)).writeLong(d);
        ((DataOutputStream) (obj)).writeLong(g);
        ((DataOutputStream) (obj)).flush();
        abyte1 = bytearrayoutputstream.toByteArray();
        fb.a(((java.io.Closeable) (obj)));
        return abyte1;
        ((DataOutputStream) (obj)).writeShort(c.size());
        Iterator iterator = c.entrySet().iterator();
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            ((DataOutputStream) (obj)).writeUTF(fb.a((String)entry.getKey()));
            ((DataOutputStream) (obj)).writeUTF(fb.a((String)entry.getValue()));
        }
          goto _L1
        IOException ioexception;
        ioexception;
        Object obj1 = obj;
_L5:
        byte abyte0[] = new byte[0];
        fb.a(((java.io.Closeable) (obj1)));
        return abyte0;
        Exception exception1;
        exception1;
        Exception exception;
        obj = null;
        exception = exception1;
_L3:
        fb.a(((java.io.Closeable) (obj)));
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        obj = obj1;
        if (true) goto _L3; else goto _L2
_L2:
        IOException ioexception1;
        ioexception1;
        obj1 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
