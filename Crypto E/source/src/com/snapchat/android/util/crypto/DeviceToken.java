// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;


public class DeviceToken
{

    private final String a;
    private final String b;

    public DeviceToken(String s, String s1)
    {
        a = s;
        b = s1;
    }

    public String a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public String toString()
    {
        return (new StringBuilder()).append("DeviceToken{id=").append(a).append(" ").append("value=").append(b).append("}").toString();
    }
}
