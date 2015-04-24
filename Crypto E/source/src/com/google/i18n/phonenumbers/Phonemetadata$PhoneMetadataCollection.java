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

public static class a
    implements Externalizable
{
    public static final class Builder extends Phonemetadata.PhoneMetadataCollection
    {

        public Builder()
        {
        }
    }


    private List a;

    public List a()
    {
        return a;
    }

    public int b()
    {
        return a.size();
    }

    public void readExternal(ObjectInput objectinput)
    {
        int i = objectinput.readInt();
        for (int j = 0; j < i; j++)
        {
            a a1 = new a();
            a1.al(objectinput);
            a.add(a1);
        }

    }

    public void writeExternal(ObjectOutput objectoutput)
    {
        int i = b();
        objectoutput.writeInt(i);
        for (int j = 0; j < i; j++)
        {
            ((b)a.get(j)).nal(objectoutput);
        }

    }

    public Builder()
    {
        a = new ArrayList();
    }
}
