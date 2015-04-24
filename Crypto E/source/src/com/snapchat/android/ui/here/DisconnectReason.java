// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;


public final class DisconnectReason extends Enum
{

    public static final DisconnectReason a;
    public static final DisconnectReason b;
    public static final DisconnectReason c;
    public static final DisconnectReason d;
    public static final DisconnectReason e;
    public static final DisconnectReason f;
    public static final DisconnectReason g;
    private static final DisconnectReason h[];

    private DisconnectReason(String s, int i)
    {
        super(s, i);
    }

    public static DisconnectReason valueOf(String s)
    {
        return (DisconnectReason)Enum.valueOf(com/snapchat/android/ui/here/DisconnectReason, s);
    }

    public static DisconnectReason[] values()
    {
        return (DisconnectReason[])h.clone();
    }

    static 
    {
        a = new DisconnectReason("HERE_BTN_RELEASED", 0);
        b = new DisconnectReason("L2S_SWIPE_OUT", 1);
        c = new DisconnectReason("REMOTE_PEER_LEFT", 2);
        d = new DisconnectReason("SWIPE_CASH", 3);
        e = new DisconnectReason("CONNECTION_LOST", 4);
        f = new DisconnectReason("ALREADY_CONNECTED_TO_DIFFERENT_SCOPE", 5);
        g = new DisconnectReason("ADL_RELEASE", 6);
        DisconnectReason adisconnectreason[] = new DisconnectReason[7];
        adisconnectreason[0] = a;
        adisconnectreason[1] = b;
        adisconnectreason[2] = c;
        adisconnectreason[3] = d;
        adisconnectreason[4] = e;
        adisconnectreason[5] = f;
        adisconnectreason[6] = g;
        h = adisconnectreason;
    }
}
