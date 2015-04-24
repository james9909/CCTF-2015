// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;


public final class UrlType extends Enum
{

    public static final UrlType a;
    public static final UrlType b;
    public static final UrlType c;
    private static final UrlType d[];

    private UrlType(String s, int i)
    {
        super(s, i);
    }

    public static UrlType valueOf(String s)
    {
        return (UrlType)Enum.valueOf(com/snapchat/android/util/chat/UrlType, s);
    }

    public static UrlType[] values()
    {
        return (UrlType[])d.clone();
    }

    static 
    {
        a = new UrlType("MAP", 0);
        b = new UrlType("LINK", 1);
        c = new UrlType("TEL", 2);
        UrlType aurltype[] = new UrlType[3];
        aurltype[0] = a;
        aurltype[1] = b;
        aurltype[2] = c;
        d = aurltype;
    }
}
