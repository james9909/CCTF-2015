// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.spi;

import javax.validation.Configuration;
import javax.validation.ValidatorFactory;

// Referenced classes of package javax.validation.spi:
//            ConfigurationState, BootstrapState

public interface ValidationProvider
{

    public abstract ValidatorFactory buildValidatorFactory(ConfigurationState configurationstate);

    public abstract Configuration createGenericConfiguration(BootstrapState bootstrapstate);

    public abstract Configuration createSpecializedConfiguration(BootstrapState bootstrapstate);
}
