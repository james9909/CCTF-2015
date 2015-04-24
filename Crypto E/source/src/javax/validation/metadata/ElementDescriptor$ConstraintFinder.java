// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.metadata;

import java.lang.annotation.ElementType;
import java.util.Set;

// Referenced classes of package javax.validation.metadata:
//            ElementDescriptor, Scope

public static interface 
{

    public transient abstract  declaredOn(ElementType aelementtype[]);

    public abstract Set getConstraintDescriptors();

    public abstract boolean hasConstraints();

    public abstract  lookingAt(Scope scope);

    public transient abstract  unorderedAndMatchingGroups(Class aclass[]);
}
