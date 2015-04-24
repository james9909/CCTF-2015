// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;


public final class ClientProperty extends Enum
{

    public static final ClientProperty a;
    public static final ClientProperty b;
    private static final ClientProperty c[];

    private ClientProperty(String s, int i)
    {
        super(s, i);
    }

    public static ClientProperty valueOf(String s)
    {
        return (ClientProperty)Enum.valueOf(com/snapchat/android/database/ClientProperty, s);
    }

    public static ClientProperty[] values()
    {
        return (ClientProperty[])c.clone();
    }

    static 
    {
        a = new ClientProperty("SQUARE_TOS_ACCEPTED", 0);
        b = new ClientProperty("SNAPCASH_NEW_TOS_ACCEPTED", 1);
        ClientProperty aclientproperty[] = new ClientProperty[2];
        aclientproperty[0] = a;
        aclientproperty[1] = b;
        c = aclientproperty;
    }
}
