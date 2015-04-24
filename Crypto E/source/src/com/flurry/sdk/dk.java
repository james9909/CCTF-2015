// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.flurry.sdk:
//            el, dh, fb

public class dk
{

    private static final String a = com/flurry/sdk/dk.getSimpleName();
    private boolean b;
    private List c;
    private long d;

    public dk()
    {
        d = -1L;
    }

    private static String a(String s)
    {
        if (s != null && s.length() > 4)
        {
            StringBuilder stringbuilder = new StringBuilder();
            for (int i = 0; i < -4 + s.length(); i++)
            {
                stringbuilder.append('*');
            }

            stringbuilder.append(s.substring(-4 + s.length()));
            s = stringbuilder.toString();
        }
        return s;
    }

    private boolean a(String s, DataInputStream datainputstream)
    {
        int i = datainputstream.readUnsignedShort();
        el.a(3, a, (new StringBuilder()).append("File version: ").append(i).toString());
        if (i > 2)
        {
            el.a(6, a, (new StringBuilder()).append("Unknown agent file version: ").append(i).toString());
            throw new IOException((new StringBuilder()).append("Unknown agent file version: ").append(i).toString());
        }
        if (i >= 2)
        {
            String s1 = datainputstream.readUTF();
            el.a(3, a, (new StringBuilder()).append("Loading API key: ").append(a(s)).toString());
            if (s1.equals(s))
            {
                ArrayList arraylist = new ArrayList();
                datainputstream.readUTF();
                boolean flag = datainputstream.readBoolean();
                long l = datainputstream.readLong();
                el.a(3, a, "Loading session reports");
                int j = 0;
                do
                {
                    int k = datainputstream.readUnsignedShort();
                    if (k == 0)
                    {
                        el.a(3, a, "Persistent file loaded");
                        a(flag);
                        a(l);
                        a(((List) (arraylist)));
                        return true;
                    }
                    byte abyte0[] = new byte[k];
                    datainputstream.readFully(abyte0);
                    arraylist.add(0, new dh(abyte0));
                    String s2 = a;
                    StringBuilder stringbuilder = (new StringBuilder()).append("Session report added: ");
                    j++;
                    el.a(3, s2, stringbuilder.append(j).toString());
                } while (true);
            } else
            {
                el.a(3, a, (new StringBuilder()).append("Api keys do not match, old: ").append(a(s)).append(", new: ").append(a(s1)).toString());
                return false;
            }
        } else
        {
            el.a(5, a, (new StringBuilder()).append("Deleting old file version: ").append(i).toString());
            return false;
        }
    }

    public void a(long l)
    {
        d = l;
    }

    public void a(DataOutputStream dataoutputstream, String s, String s1)
    {
        int i;
        dataoutputstream.writeShort(46586);
        dataoutputstream.writeShort(2);
        dataoutputstream.writeUTF(s);
        dataoutputstream.writeUTF(s1);
        dataoutputstream.writeBoolean(b);
        dataoutputstream.writeLong(d);
        i = -1 + c.size();
_L2:
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        byte abyte0[];
        int j;
        abyte0 = ((dh)c.get(i)).a();
        j = abyte0.length;
        if (j + 2 + dataoutputstream.size() <= 50000)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        el.a(6, a, (new StringBuilder()).append("discarded sessions: ").append(i).toString());
        dataoutputstream.writeShort(0);
        fb.a(dataoutputstream);
        return;
        dataoutputstream.writeShort(j);
        dataoutputstream.write(abyte0);
        i--;
        if (true) goto _L2; else goto _L1
_L1:
        Throwable throwable;
        throwable;
        el.a(6, a, "", throwable);
        throw new IOException(throwable.getMessage());
        Exception exception;
        exception;
        fb.a(dataoutputstream);
        throw exception;
    }

    public void a(List list)
    {
        c = list;
    }

    public void a(boolean flag)
    {
        b = flag;
    }

    public boolean a()
    {
        return b;
    }

    public boolean a(DataInputStream datainputstream, String s)
    {
        int i;
        i = datainputstream.readUnsignedShort();
        el.a(4, a, (new StringBuilder()).append("Magic: ").append(i).toString());
        if (i != 46586) goto _L2; else goto _L1
_L1:
        boolean flag = a(s, datainputstream);
        boolean flag1 = flag;
_L4:
        fb.a(datainputstream);
        return flag1;
_L2:
        el.a(3, a, "Unexpected file type");
        flag1 = false;
        if (true) goto _L4; else goto _L3
_L3:
        Throwable throwable;
        throwable;
        el.a(6, a, "Error when loading persistent file", throwable);
        throw new IOException(throwable.getMessage());
        Exception exception;
        exception;
        fb.a(datainputstream);
        throw exception;
    }

    public List b()
    {
        return c;
    }

    public long c()
    {
        return d;
    }

}
