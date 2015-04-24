// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

// Referenced classes of package dagger.internal:
//            Binding, Linker

public final class SetBinding extends Binding
{

    private final SetBinding a;
    private final List b = new ArrayList();

    public SetBinding(SetBinding setbinding)
    {
        super(setbinding.provideKey, null, false, setbinding.requiredBy);
        a = setbinding;
        c(setbinding.g());
        d(setbinding.h());
    }

    public Set a()
    {
        ArrayList arraylist = new ArrayList();
        for (SetBinding setbinding = this; setbinding != null; setbinding = setbinding.a)
        {
            int i = setbinding.b.size();
            int j = 0;
            while (j < i) 
            {
                Binding binding = (Binding)setbinding.b.get(j);
                Object obj = binding.get();
                if (binding.provideKey.equals(provideKey))
                {
                    arraylist.addAll((Set)obj);
                } else
                {
                    arraylist.add(obj);
                }
                j++;
            }
        }

        return Collections.unmodifiableSet(new LinkedHashSet(arraylist));
    }

    public void a(Linker linker)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((Binding)iterator.next()).a(linker)) { }
    }

    public volatile void a(Object obj)
    {
        a((Set)obj);
    }

    public void a(Set set)
    {
        throw new UnsupportedOperationException("Cannot inject members on a contributed Set<T>.");
    }

    public void a(Set set, Set set1)
    {
        for (; this != null; this = a)
        {
            set.addAll(b);
        }

    }

    public Object get()
    {
        return a();
    }

    public String toString()
    {
        boolean flag = true;
        StringBuilder stringbuilder = new StringBuilder("SetBinding[");
        while (this != null) 
        {
            int i = b.size();
            boolean flag1 = flag;
            for (int j = 0; j < i;)
            {
                if (!flag1)
                {
                    stringbuilder.append(",");
                }
                stringbuilder.append(b.get(j));
                j++;
                flag1 = false;
            }

            this = a;
            flag = flag1;
        }
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
