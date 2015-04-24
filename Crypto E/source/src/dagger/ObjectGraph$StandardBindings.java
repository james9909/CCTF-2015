// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger;

import dagger.internal.BindingsGroup;
import dagger.internal.SetBinding;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package dagger:
//            ObjectGraph

static final class a extends BindingsGroup
{

    private final List a;

    static List a(a a1)
    {
        return a1.a;
    }

    public ()
    {
        a = new ArrayList();
    }

    public a(List list)
    {
        a = new ArrayList(list.size());
        SetBinding setbinding;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a(setbinding.provideKey, setbinding))
        {
            setbinding = new SetBinding((SetBinding)iterator.next());
            a.add(setbinding);
        }

    }
}
