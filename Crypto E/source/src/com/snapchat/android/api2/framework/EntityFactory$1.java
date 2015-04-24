// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;


// Referenced classes of package com.snapchat.android.api2.framework:
//            EntityFactory, RequestBodyType

static class _cls9
{

    static final int $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[];

    static 
    {
        $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType = new int[RequestBodyType.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.JSON_ENCODED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.FORM_ENCODED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.MULTI_PART_ENCODED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.BYTE_ARRAY.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.FILE.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.UNKNOWN.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror5)
        {
            return;
        }
    }
}
