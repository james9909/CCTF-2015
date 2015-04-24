// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;


// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatService

public static final class  extends Enum
{

    public static final n a;
    public static final n b;
    public static final n c;
    public static final n d;
    public static final n e;
    public static final n f;
    public static final n g;
    public static final n h;
    public static final n i;
    public static final n j;
    public static final n k;
    public static final n l;
    public static final n m;
    private static final n n[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status, s);
    }

    public static [] values()
    {
        return ([])n.clone();
    }

    static 
    {
        a = new <init>("SUCCESS", 0);
        b = new <init>("NO_CONNECTION", 1);
        c = new <init>("NOT_FRIENDS", 2);
        d = new <init>("SUPERSEDED_MESSAGE", 3);
        e = new <init>("CONVERSATION_BATCH_IN_FLIGHT", 4);
        f = new <init>("CANNOT_SEND_OVER_HTTP", 5);
        g = new <init>("INTERNAL_SERVER_ERROR", 6);
        h = new <init>("TCP_ERROR", 7);
        i = new <init>("UNKNOWN_ERROR", 8);
        j = new <init>("TCP_CONNECTION_ENDED", 9);
        k = new <init>("TCP_TIMEOUT_ERROR", 10);
        l = new <init>("TCP_NACK", 11);
        m = new <init>("TCP_MESSAGE_QUEUE_FULL", 12);
        s_3B_.clone aclone[] = new <init>[13];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        aclone[5] = f;
        aclone[6] = g;
        aclone[7] = h;
        aclone[8] = i;
        aclone[9] = j;
        aclone[10] = k;
        aclone[11] = l;
        aclone[12] = m;
        n = aclone;
    }

    private (String s, int i1)
    {
        super(s, i1);
    }
}
