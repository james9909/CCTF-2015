// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;


// Referenced classes of package com.snapchat.android.api2.framework:
//            AbstractFieldMapper, HttpContent

class MultipartEncodedFieldMapper extends AbstractFieldMapper
{

    public MultipartEncodedFieldMapper()
    {
        super(java/lang/Object);
    }

    protected Object b(Object obj)
    {
        return c(obj);
    }

    protected HttpContent c(Object obj)
    {
        if (obj instanceof HttpContent)
        {
            return (HttpContent)obj;
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = obj.getClass().getSimpleName();
            throw new IllegalArgumentException(String.format("Object is the wrong type. Expected HttpContent but got %s", aobj));
        }
    }
}
