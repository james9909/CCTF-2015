// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;


// Referenced classes of package javax.validation:
//            ConstraintValidatorContext

public static interface ext
{

    public abstract ext addBeanNode();

    public abstract ConstraintValidatorContext addConstraintViolation();

    public abstract ext addNode(String s);

    public abstract ext addPropertyNode(String s);

    public abstract ext inIterable();
}
