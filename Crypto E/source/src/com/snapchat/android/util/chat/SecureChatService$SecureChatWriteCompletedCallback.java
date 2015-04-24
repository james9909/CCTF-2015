// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;


// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatService

public static interface Status
{
    public static final class Status extends Enum
    {

        public static final Status a;
        public static final Status b;
        public static final Status c;
        public static final Status d;
        public static final Status e;
        public static final Status f;
        public static final Status g;
        public static final Status h;
        public static final Status i;
        public static final Status j;
        public static final Status k;
        public static final Status l;
        public static final Status m;
        private static final Status n[];

        public static Status valueOf(String s)
        {
            return (Status)Enum.valueOf(com/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status, s);
        }

        public static Status[] values()
        {
            return (Status[])n.clone();
        }

        static 
        {
            a = new Status("SUCCESS", 0);
            b = new Status("NO_CONNECTION", 1);
            c = new Status("NOT_FRIENDS", 2);
            d = new Status("SUPERSEDED_MESSAGE", 3);
            e = new Status("CONVERSATION_BATCH_IN_FLIGHT", 4);
            f = new Status("CANNOT_SEND_OVER_HTTP", 5);
            g = new Status("INTERNAL_SERVER_ERROR", 6);
            h = new Status("TCP_ERROR", 7);
            i = new Status("UNKNOWN_ERROR", 8);
            j = new Status("TCP_CONNECTION_ENDED", 9);
            k = new Status("TCP_TIMEOUT_ERROR", 10);
            l = new Status("TCP_NACK", 11);
            m = new Status("TCP_MESSAGE_QUEUE_FULL", 12);
            Status astatus[] = new Status[13];
            astatus[0] = a;
            astatus[1] = b;
            astatus[2] = c;
            astatus[3] = d;
            astatus[4] = e;
            astatus[5] = f;
            astatus[6] = g;
            astatus[7] = h;
            astatus[8] = i;
            astatus[9] = j;
            astatus[10] = k;
            astatus[11] = l;
            astatus[12] = m;
            n = astatus;
        }

        private Status(String s, int i1)
        {
            super(s, i1);
        }
    }


    public abstract void a(boolean flag, Status status, Status status1, String s);
}
