// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.constraints;

import java.lang.annotation.Annotation;

public interface Max
    extends Annotation
{
    public static interface List
        extends Annotation
    {

        public abstract Max[] value();
    }


    public abstract Class[] groups();

    public abstract String message();

    public abstract Class[] payload();

    public abstract long value();
}
