// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;


// Referenced classes of package com.snapchat.android.api2.framework:
//            RequestBodyType

public class RequestBodyWrapper
{

    private final Object mBodyObject;
    private final RequestBodyType mType;

    public RequestBodyWrapper(Object obj, RequestBodyType requestbodytype)
    {
        mBodyObject = obj;
        mType = requestbodytype;
    }

    public Object a()
    {
        return mBodyObject;
    }

    public RequestBodyType b()
    {
        return mType;
    }
}
