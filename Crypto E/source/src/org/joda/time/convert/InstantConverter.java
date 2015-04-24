// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;

import org.joda.time.Chronology;

// Referenced classes of package org.joda.time.convert:
//            Converter

public interface InstantConverter
    extends Converter
{

    public abstract long a(Object obj, Chronology chronology);

    public abstract Chronology b(Object obj, Chronology chronology);
}
