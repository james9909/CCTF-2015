// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.PrimitiveUtils;

// Referenced classes of package com.snapchat.android.api2.framework:
//            AbstractFieldMapper

class FormEncodedJsonFieldMapper extends AbstractFieldMapper
{

    private final GsonWrapper mGson;

    protected FormEncodedJsonFieldMapper(GsonWrapper gsonwrapper)
    {
        super(java/lang/Object);
        mGson = gsonwrapper;
    }

    protected Object b(Object obj)
    {
        return c(obj);
    }

    protected String c(Object obj)
    {
        if (obj instanceof String)
        {
            return (String)obj;
        }
        if (PrimitiveUtils.a(obj.getClass()))
        {
            return obj.toString();
        }
        String s;
        try
        {
            s = mGson.a(obj);
        }
        catch (Exception exception)
        {
            throw new RuntimeException((new StringBuilder()).append("Trouble serializing: Class=").append(obj.getClass().getName()).append(", with toString()=").append(obj.toString()).toString(), exception);
        }
        return s;
    }
}
