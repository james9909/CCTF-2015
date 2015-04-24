// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.metadata;


public final class Scope extends Enum
{

    private static final Scope $VALUES[];
    public static final Scope HIERARCHY;
    public static final Scope LOCAL_ELEMENT;

    private Scope(String s, int i)
    {
        super(s, i);
    }

    public static Scope valueOf(String s)
    {
        return (Scope)Enum.valueOf(javax/validation/metadata/Scope, s);
    }

    public static Scope[] values()
    {
        return (Scope[])$VALUES.clone();
    }

    static 
    {
        LOCAL_ELEMENT = new Scope("LOCAL_ELEMENT", 0);
        HIERARCHY = new Scope("HIERARCHY", 1);
        Scope ascope[] = new Scope[2];
        ascope[0] = LOCAL_ELEMENT;
        ascope[1] = HIERARCHY;
        $VALUES = ascope;
    }
}
