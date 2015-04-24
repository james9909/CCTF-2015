// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;


public final class ElementKind extends Enum
{

    private static final ElementKind $VALUES[];
    public static final ElementKind BEAN;
    public static final ElementKind CONSTRUCTOR;
    public static final ElementKind CROSS_PARAMETER;
    public static final ElementKind METHOD;
    public static final ElementKind PARAMETER;
    public static final ElementKind PROPERTY;
    public static final ElementKind RETURN_VALUE;

    private ElementKind(String s, int i)
    {
        super(s, i);
    }

    public static ElementKind valueOf(String s)
    {
        return (ElementKind)Enum.valueOf(javax/validation/ElementKind, s);
    }

    public static ElementKind[] values()
    {
        return (ElementKind[])$VALUES.clone();
    }

    static 
    {
        BEAN = new ElementKind("BEAN", 0);
        PROPERTY = new ElementKind("PROPERTY", 1);
        METHOD = new ElementKind("METHOD", 2);
        CONSTRUCTOR = new ElementKind("CONSTRUCTOR", 3);
        PARAMETER = new ElementKind("PARAMETER", 4);
        CROSS_PARAMETER = new ElementKind("CROSS_PARAMETER", 5);
        RETURN_VALUE = new ElementKind("RETURN_VALUE", 6);
        ElementKind aelementkind[] = new ElementKind[7];
        aelementkind[0] = BEAN;
        aelementkind[1] = PROPERTY;
        aelementkind[2] = METHOD;
        aelementkind[3] = CONSTRUCTOR;
        aelementkind[4] = PARAMETER;
        aelementkind[5] = CROSS_PARAMETER;
        aelementkind[6] = RETURN_VALUE;
        $VALUES = aelementkind;
    }
}
