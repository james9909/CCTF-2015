// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.List;

public interface Container
{

    public abstract ByteBuffer a(long l, long l1);

    public abstract List a();

    public abstract List a(Class class1);

    public abstract List a(Class class1, boolean flag);

    public abstract void a(List list);
}
