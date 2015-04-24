// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;


// Referenced classes of package dagger.internal:
//            Binding

public abstract class ProvidesBinding extends Binding
{

    protected final String a;
    protected final String b;

    public ProvidesBinding(String s, boolean flag, String s1, String s2)
    {
        super(s, null, flag, (new StringBuilder()).append(s1).append(".").append(s2).append("()").toString());
        a = s1;
        b = s2;
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getName()).append("[key=").append(provideKey).append(" method=").append(a).append(".").append(b).append("()").append("]").toString();
    }
}
