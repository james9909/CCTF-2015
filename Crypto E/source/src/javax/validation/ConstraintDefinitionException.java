// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;


// Referenced classes of package javax.validation:
//            ValidationException

public class ConstraintDefinitionException extends ValidationException
{

    public ConstraintDefinitionException()
    {
    }

    public ConstraintDefinitionException(String s)
    {
        super(s);
    }

    public ConstraintDefinitionException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public ConstraintDefinitionException(Throwable throwable)
    {
        super(throwable);
    }
}
