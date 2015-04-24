// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;

import java.util.HashMap;

// Referenced classes of package com.snapchat.android.database:
//            SharedPreferenceKey, ClientProperty

public class ClientServerPreferenceKeyMap
{

    public static HashMap a = new HashMap() {

            
            {
                put(SharedPreferenceKey.aP.a(), ClientProperty.a.name());
                put(SharedPreferenceKey.aQ.a(), ClientProperty.b.name());
            }
    };
    public static HashMap b = new HashMap() {

            
            {
                put(ClientProperty.a.name(), SharedPreferenceKey.aP.a());
                put(ClientProperty.b.name(), SharedPreferenceKey.aQ.a());
            }
    };

    public ClientServerPreferenceKeyMap()
    {
    }

}
