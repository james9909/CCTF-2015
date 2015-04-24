// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;

import java.lang.annotation.ElementType;

// Referenced classes of package javax.validation:
//            Path

public interface TraversableResolver
{

    public abstract boolean isCascadable(Object obj, Path.Node node, Class class1, Path path, ElementType elementtype);

    public abstract boolean isReachable(Object obj, Path.Node node, Class class1, Path path, ElementType elementtype);
}
