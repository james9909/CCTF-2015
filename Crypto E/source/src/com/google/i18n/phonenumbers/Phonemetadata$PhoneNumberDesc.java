// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;

// Referenced classes of package com.google.i18n.phonenumbers:
//            Phonemetadata

public static class f
    implements Externalizable
{
    public static final class Builder extends Phonemetadata.PhoneNumberDesc
    {

        public Builder()
        {
        }
    }


    private boolean a;
    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;

    public Builder a(String s)
    {
        a = true;
        b = s;
        return this;
    }

    public String a()
    {
        return b;
    }

    public b b(String s)
    {
        c = true;
        d = s;
        return this;
    }

    public String b()
    {
        return d;
    }

    public d c(String s)
    {
        e = true;
        f = s;
        return this;
    }

    public void readExternal(ObjectInput objectinput)
    {
        if (objectinput.readBoolean())
        {
            a(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            b(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            c(objectinput.readUTF());
        }
    }

    public void writeExternal(ObjectOutput objectoutput)
    {
        objectoutput.writeBoolean(a);
        if (a)
        {
            objectoutput.writeUTF(b);
        }
        objectoutput.writeBoolean(c);
        if (c)
        {
            objectoutput.writeUTF(d);
        }
        objectoutput.writeBoolean(e);
        if (e)
        {
            objectoutput.writeUTF(f);
        }
    }

    public Builder()
    {
        b = "";
        d = "";
        f = "";
    }
}
