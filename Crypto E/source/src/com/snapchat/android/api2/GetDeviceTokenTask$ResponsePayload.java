// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;


// Referenced classes of package com.snapchat.android.api2:
//            GetDeviceTokenTask

public static class 
{

    String mTokenId;
    String mTokenValue;

    public String toString()
    {
        return (new StringBuilder()).append("GetDeviceTokenTask ResponsePayload {dtoken1i=").append(mTokenId).append(", dtoken1v=").append(mTokenValue).append("}").toString();
    }

    public ()
    {
    }
}
