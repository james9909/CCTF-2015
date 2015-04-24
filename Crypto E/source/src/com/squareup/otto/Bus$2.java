// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.otto;


// Referenced classes of package com.squareup.otto:
//            Bus

class nit> extends ThreadLocal
{

    final Bus a;

    protected Boolean a()
    {
        return Boolean.valueOf(false);
    }

    protected Object initialValue()
    {
        return a();
    }

    (Bus bus)
    {
        a = bus;
        super();
    }
}
