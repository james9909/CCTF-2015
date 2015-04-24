// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;


// Referenced classes of package javax.validation:
//            ConstraintValidatorContext

public static interface NodeBuilderDefinedContext
{
    public static interface LeafNodeBuilderCustomizableContext
    {

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract LeafNodeContextBuilder inIterable();
    }

    public static interface LeafNodeBuilderDefinedContext
    {

        public abstract ConstraintValidatorContext addConstraintViolation();
    }

    public static interface LeafNodeContextBuilder
    {

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract LeafNodeBuilderDefinedContext atIndex(Integer integer);

        public abstract LeafNodeBuilderDefinedContext atKey(Object obj);
    }

    public static interface NodeBuilderCustomizableContext
    {

        public abstract LeafNodeBuilderCustomizableContext addBeanNode();

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract NodeBuilderCustomizableContext addNode(String s);

        public abstract NodeBuilderCustomizableContext addPropertyNode(String s);

        public abstract NodeContextBuilder inIterable();
    }

    public static interface NodeBuilderDefinedContext
    {

        public abstract LeafNodeBuilderCustomizableContext addBeanNode();

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract NodeBuilderCustomizableContext addNode(String s);

        public abstract NodeBuilderCustomizableContext addPropertyNode(String s);
    }

    public static interface NodeContextBuilder
    {

        public abstract LeafNodeBuilderCustomizableContext addBeanNode();

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract NodeBuilderCustomizableContext addNode(String s);

        public abstract NodeBuilderCustomizableContext addPropertyNode(String s);

        public abstract NodeBuilderDefinedContext atIndex(Integer integer);

        public abstract NodeBuilderDefinedContext atKey(Object obj);
    }


    public abstract LeafNodeBuilderCustomizableContext addBeanNode();

    public abstract ConstraintValidatorContext addConstraintViolation();

    public abstract NodeBuilderDefinedContext addNode(String s);

    public abstract NodeBuilderDefinedContext addParameterNode(int i);

    public abstract NodeBuilderCustomizableContext addPropertyNode(String s);
}
