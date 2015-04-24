// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;

import java.util.HashSet;
import java.util.Set;

// Referenced classes of package javax.validation:
//            ValidationException

public class ConstraintViolationException extends ValidationException
{

    private final Set constraintViolations;

    public ConstraintViolationException(String s, Set set)
    {
        super(s);
        if (set == null)
        {
            constraintViolations = null;
            return;
        } else
        {
            constraintViolations = new HashSet(set);
            return;
        }
    }

    public ConstraintViolationException(Set set)
    {
        this(null, set);
    }

    public Set getConstraintViolations()
    {
        return constraintViolations;
    }
}
