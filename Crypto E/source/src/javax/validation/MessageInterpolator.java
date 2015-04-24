// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;

import java.util.Locale;
import javax.validation.metadata.ConstraintDescriptor;

public interface MessageInterpolator
{
    public static interface Context
    {

        public abstract ConstraintDescriptor getConstraintDescriptor();

        public abstract Object getValidatedValue();

        public abstract Object unwrap(Class class1);
    }


    public abstract String interpolate(String s, Context context);

    public abstract String interpolate(String s, Context context, Locale locale);
}
