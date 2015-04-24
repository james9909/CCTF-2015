// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;


public interface ConstraintValidatorContext
{
    public static interface ConstraintViolationBuilder
    {

        public abstract LeafNodeBuilderCustomizableContext addBeanNode();

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract NodeBuilderDefinedContext addNode(String s);

        public abstract NodeBuilderDefinedContext addParameterNode(int i);

        public abstract NodeBuilderCustomizableContext addPropertyNode(String s);
    }

    public static interface ConstraintViolationBuilder.LeafNodeBuilderCustomizableContext
    {

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract ConstraintViolationBuilder.LeafNodeContextBuilder inIterable();
    }

    public static interface ConstraintViolationBuilder.LeafNodeBuilderDefinedContext
    {

        public abstract ConstraintValidatorContext addConstraintViolation();
    }

    public static interface ConstraintViolationBuilder.LeafNodeContextBuilder
    {

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract ConstraintViolationBuilder.LeafNodeBuilderDefinedContext atIndex(Integer integer);

        public abstract ConstraintViolationBuilder.LeafNodeBuilderDefinedContext atKey(Object obj);
    }

    public static interface ConstraintViolationBuilder.NodeBuilderCustomizableContext
    {

        public abstract ConstraintViolationBuilder.LeafNodeBuilderCustomizableContext addBeanNode();

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract ConstraintViolationBuilder.NodeBuilderCustomizableContext addNode(String s);

        public abstract ConstraintViolationBuilder.NodeBuilderCustomizableContext addPropertyNode(String s);

        public abstract ConstraintViolationBuilder.NodeContextBuilder inIterable();
    }

    public static interface ConstraintViolationBuilder.NodeBuilderDefinedContext
    {

        public abstract ConstraintViolationBuilder.LeafNodeBuilderCustomizableContext addBeanNode();

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract ConstraintViolationBuilder.NodeBuilderCustomizableContext addNode(String s);

        public abstract ConstraintViolationBuilder.NodeBuilderCustomizableContext addPropertyNode(String s);
    }

    public static interface ConstraintViolationBuilder.NodeContextBuilder
    {

        public abstract ConstraintViolationBuilder.LeafNodeBuilderCustomizableContext addBeanNode();

        public abstract ConstraintValidatorContext addConstraintViolation();

        public abstract ConstraintViolationBuilder.NodeBuilderCustomizableContext addNode(String s);

        public abstract ConstraintViolationBuilder.NodeBuilderCustomizableContext addPropertyNode(String s);

        public abstract ConstraintViolationBuilder.NodeBuilderDefinedContext atIndex(Integer integer);

        public abstract ConstraintViolationBuilder.NodeBuilderDefinedContext atKey(Object obj);
    }


    public abstract ConstraintViolationBuilder buildConstraintViolationWithTemplate(String s);

    public abstract void disableDefaultConstraintViolation();

    public abstract String getDefaultConstraintMessageTemplate();

    public abstract Object unwrap(Class class1);
}
