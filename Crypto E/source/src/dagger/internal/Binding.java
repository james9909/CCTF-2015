// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import dagger.MembersInjector;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package dagger.internal:
//            Keys, Linker

public abstract class Binding
    implements MembersInjector, Provider
{
    public static class InvalidBindingException extends RuntimeException
    {

        public final String a;

        public InvalidBindingException(String s, String s1)
        {
            super(s1);
            a = s;
        }
    }


    private static final int CYCLE_FREE = 8;
    private static final int DEPENDED_ON = 16;
    protected static final boolean IS_SINGLETON = true;
    private static final int LIBRARY = 32;
    private static final int LINKED = 2;
    protected static final boolean NOT_SINGLETON = false;
    private static final int SINGLETON = 1;
    public static final Binding UNRESOLVED = new Binding(null, null, false, null) {

        public void a(Object obj)
        {
            throw new AssertionError("Unresolved binding should never be called to inject.");
        }

        public Object get()
        {
            throw new AssertionError("Unresolved binding should never be called to inject.");
        }

    };
    private static final int VISITING = 4;
    private int bits;
    public final String membersKey;
    public final String provideKey;
    public final Object requiredBy;

    public Binding(String s, String s1, boolean flag, Object obj)
    {
        if (flag && s == null)
        {
            throw new InvalidBindingException(Keys.d(s1), "is exclusively members injected and therefore cannot be scoped");
        }
        provideKey = s;
        membersKey = s1;
        requiredBy = obj;
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        bits = i;
    }

    public void a(Linker linker)
    {
    }

    public void a(Object obj)
    {
    }

    public void a(Set set, Set set1)
    {
    }

    public void a(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 4 | bits;
        } else
        {
            i = -5 & bits;
        }
        bits = i;
    }

    void b()
    {
        bits = 2 | bits;
    }

    public void b(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 8 | bits;
        } else
        {
            i = -9 & bits;
        }
        bits = i;
    }

    public void c(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 0x20 | bits;
        } else
        {
            i = 0xffffffdf & bits;
        }
        bits = i;
    }

    public boolean c()
    {
        return (2 & bits) != 0;
    }

    public void d(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 0x10 | bits;
        } else
        {
            i = 0xffffffef & bits;
        }
        bits = i;
    }

    boolean d()
    {
        return (1 & bits) != 0;
    }

    public boolean e()
    {
        return (4 & bits) != 0;
    }

    public boolean f()
    {
        return (8 & bits) != 0;
    }

    public boolean g()
    {
        return (0x20 & bits) != 0;
    }

    public Object get()
    {
        throw new UnsupportedOperationException((new StringBuilder()).append("No injectable constructor on ").append(getClass().getName()).toString());
    }

    public boolean h()
    {
        return (0x10 & bits) != 0;
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getSimpleName()).append("[provideKey=\"").append(provideKey).append("\", memberskey=\"").append(membersKey).append("\"]").toString();
    }

}
