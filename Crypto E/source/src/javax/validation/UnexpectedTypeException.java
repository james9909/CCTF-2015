// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;


// Referenced classes of package javax.validation:
//            ConstraintDeclarationException

public class UnexpectedTypeException extends ConstraintDeclarationException
{

    public UnexpectedTypeException()
    {
    }

    public UnexpectedTypeException(String s)
    {
        super(s);
    }

    public UnexpectedTypeException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public UnexpectedTypeException(Throwable throwable)
    {
        super(throwable);
    }
}
