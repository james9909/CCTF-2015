// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.threading.ThreadUtils;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        ChatFragment.a(a.a);
    }

    Status(Status status)
    {
        a = status;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatFragment$1

/* anonymous class */
    class ChatFragment._cls1
        implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
    {

        final Friend a;
        final ChatFragment b;

        public void a(ScCashResponsePayload sccashresponsepayload, NetworkResult networkresult)
        {
            if (sccashresponsepayload != null)
            {
                Object aobj1[] = new Object[2];
                aobj1[0] = a.a();
                aobj1[1] = sccashresponsepayload.a().name();
                Timber.b("ChatFragment", "CASH-LOG: Got CASH ELIGIBILITY for %s: %s", aobj1);
                a.a(sccashresponsepayload.a());
                ThreadUtils.a(new ChatFragment._cls1._cls1(this));
                return;
            } else
            {
                Object aobj[] = new Object[2];
                aobj[0] = a.a();
                aobj[1] = Integer.valueOf(networkresult.j());
                Timber.b("ChatFragment", "CASH-LOG: FAILED to get CASH ELIGIBILITY for %s status code %d", aobj);
                return;
            }
        }

        public volatile void a(Object obj, NetworkResult networkresult)
        {
            a((ScCashResponsePayload)obj, networkresult);
        }

            
            {
                b = chatfragment;
                a = friend;
                super();
            }
    }

}
