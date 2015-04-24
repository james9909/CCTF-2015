// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.i18n.phonenumbers:
//            Phonemetadata

public static class k
    implements Externalizable
{
    public static final class Builder extends Phonemetadata.NumberFormat
    {

        public Builder()
        {
        }
    }


    private boolean a;
    private String b;
    private boolean c;
    private String d;
    private List e;
    private boolean f;
    private String g;
    private boolean h;
    private boolean i;
    private boolean j;
    private String k;

    public Builder a(String s)
    {
        a = true;
        b = s;
        return this;
    }

    public b a(boolean flag)
    {
        h = true;
        i = flag;
        return this;
    }

    public String a()
    {
        return b;
    }

    public String a(int l)
    {
        return (String)e.get(l);
    }

    public e b(String s)
    {
        c = true;
        d = s;
        return this;
    }

    public String b()
    {
        return d;
    }

    public int c()
    {
        return e.size();
    }

    public e c(String s)
    {
        f = true;
        g = s;
        return this;
    }

    public g d(String s)
    {
        j = true;
        k = s;
        return this;
    }

    public String d()
    {
        return g;
    }

    public boolean e()
    {
        return i;
    }

    public String f()
    {
        return k;
    }

    public void readExternal(ObjectInput objectinput)
    {
        a(objectinput.readUTF());
        b(objectinput.readUTF());
        int l = objectinput.readInt();
        for (int i1 = 0; i1 < l; i1++)
        {
            e.add(objectinput.readUTF());
        }

        if (objectinput.readBoolean())
        {
            c(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            d(objectinput.readUTF());
        }
        a(objectinput.readBoolean());
    }

    public void writeExternal(ObjectOutput objectoutput)
    {
        objectoutput.writeUTF(b);
        objectoutput.writeUTF(d);
        int l = c();
        objectoutput.writeInt(l);
        for (int i1 = 0; i1 < l; i1++)
        {
            objectoutput.writeUTF((String)e.get(i1));
        }

        objectoutput.writeBoolean(f);
        if (f)
        {
            objectoutput.writeUTF(g);
        }
        objectoutput.writeBoolean(j);
        if (j)
        {
            objectoutput.writeUTF(k);
        }
        objectoutput.writeBoolean(i);
    }

    public Builder()
    {
        b = "";
        d = "";
        e = new ArrayList();
        g = "";
        i = false;
        k = "";
    }
}
