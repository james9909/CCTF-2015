// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


public class SignedPayload
{

    private final String mac;
    private final String payload;

    public SignedPayload(String s, String s1)
    {
        mac = s;
        payload = s1;
    }

    public String toString()
    {
        return (new StringBuilder()).append("SignedPayload{mac='").append(mac).append('\'').append(", payload='").append(payload).append('\'').append('}').toString();
    }
}
