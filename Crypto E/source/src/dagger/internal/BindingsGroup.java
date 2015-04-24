// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

// Referenced classes of package dagger.internal:
//            Binding, ProvidesBinding

public abstract class BindingsGroup
{

    private final Map a = new LinkedHashMap();

    public BindingsGroup()
    {
    }

    public Binding a(String s, Binding binding)
    {
        Binding binding1 = (Binding)a.put(s, binding);
        if (binding1 != null)
        {
            a.put(s, binding1);
            throw new IllegalArgumentException((new StringBuilder()).append("Duplicate:\n    ").append(binding1).append("\n    ").append(binding).toString());
        } else
        {
            return null;
        }
    }

    public Binding a(String s, ProvidesBinding providesbinding)
    {
        return a(s, ((Binding) (providesbinding)));
    }

    public final Set a()
    {
        return a.entrySet();
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getSimpleName()).append(a.toString()).toString();
    }
}
