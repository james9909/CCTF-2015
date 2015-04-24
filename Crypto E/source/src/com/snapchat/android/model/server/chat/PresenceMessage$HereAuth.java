// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            PresenceMessage

public static class 
{

    public long expires;
    public String salt;
    public String scope_id;
    public String signature;
    public long user_id;

    public String toString()
    {
        return (new StringBuilder()).append("HereAuth{scope_id='").append(scope_id).append('\'').append(", user_id=").append(user_id).append(", salt='").append(salt).append('\'').append(", expires=").append(expires).append(", signature='").append(signature).append('\'').append('}').toString();
    }

    public ()
    {
    }
}
