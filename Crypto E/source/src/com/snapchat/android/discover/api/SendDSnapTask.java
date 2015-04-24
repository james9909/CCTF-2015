// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.api;

import android.content.Context;
import android.os.Bundle;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.api.SyncAllTask;
import com.snapchat.android.api2.framework.BaseRetriableScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.discover.model.DSnapbryo;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.HttpUtils;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.StringUtils;
import com.snapchat.android.util.chat.ChatUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

// Referenced classes of package com.snapchat.android.discover.api:
//            SendDSnapWithMediaTask

public class SendDSnapTask extends BaseRetriableScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public static final class DSnapSendStatus extends Enum
    {

        public static final DSnapSendStatus a;
        public static final DSnapSendStatus b;
        public static final DSnapSendStatus c;
        public static final DSnapSendStatus d;
        public static final DSnapSendStatus e;
        public static final DSnapSendStatus f;
        private static final DSnapSendStatus g[];

        public static DSnapSendStatus valueOf(String s)
        {
            return (DSnapSendStatus)Enum.valueOf(com/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus, s);
        }

        public static DSnapSendStatus[] values()
        {
            return (DSnapSendStatus[])g.clone();
        }

        static 
        {
            a = new DSnapSendStatus("UNSEND", 0);
            b = new DSnapSendStatus("SUCCESS", 1);
            c = new DSnapSendStatus("FAILED_NOT_A_FRIEND", 2);
            d = new DSnapSendStatus("FAILED_TRANSIENT", 3);
            e = new DSnapSendStatus("FAILED_INVALID_SEQUENCE", 4);
            f = new DSnapSendStatus("NO_NETWORK", 5);
            DSnapSendStatus adsnapsendstatus[] = new DSnapSendStatus[6];
            adsnapsendstatus[0] = a;
            adsnapsendstatus[1] = b;
            adsnapsendstatus[2] = c;
            adsnapsendstatus[3] = d;
            adsnapsendstatus[4] = e;
            adsnapsendstatus[5] = f;
            g = adsnapsendstatus;
        }

        private DSnapSendStatus(String s, int i)
        {
            super(s, i);
        }
    }


    private Context a;
    private User b;
    private DSnapbryo c;
    private com.snapchat.android.api.SendSnapTask.SendSnapCallback d;
    private AndroidNotificationManager e;
    private boolean f;

    public SendDSnapTask(DSnapbryo dsnapbryo, com.snapchat.android.api.SendSnapTask.SendSnapCallback sendsnapcallback)
    {
        a = SnapchatApplication.e();
        b = User.c();
        c = dsnapbryo;
        d = sendsnapcallback;
        e = AndroidNotificationManager.a();
        a(java/util/HashMap, this);
    }

    private HashMap a(String as[])
    {
        HashMap hashmap = new HashMap();
        f = false;
        int i = as.length;
        int j = 0;
        while (j < i) 
        {
            String s = as[j];
            ChatConversation chatconversation = ConversationUtils.b(s);
            if (chatconversation != null)
            {
                if (chatconversation.aC())
                {
                    chatconversation.n(false);
                }
                DSnapSendStatus dsnapsendstatus = c.a(s);
                if (dsnapsendstatus == DSnapSendStatus.d || dsnapsendstatus == DSnapSendStatus.e || dsnapsendstatus == DSnapSendStatus.f || mCurrentRetryAttempt > 0)
                {
                    Long long1 = c.d(s);
                    if (long1 != null)
                    {
                        hashmap.put(s, long1);
                    } else
                    {
                        f = true;
                    }
                } else
                {
                    Long long2 = Long.valueOf(chatconversation.n());
                    hashmap.put(s, long2);
                    c.a(s, long2);
                }
            } else
            {
                f = true;
            }
            j++;
        }
        return hashmap;
    }

    private void a(String s, DSnapSendStatus dsnapsendstatus)
    {
        if (dsnapsendstatus == DSnapSendStatus.b || dsnapsendstatus == DSnapSendStatus.c)
        {
            c.b(s);
            c.c(s);
            return;
        } else
        {
            c.a(s, dsnapsendstatus);
            return;
        }
    }

    private void a(HashMap hashmap)
    {
        Iterator iterator = hashmap.keySet().iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            String s2 = (String)iterator.next();
            DSnapSendStatus dsnapsendstatus = (DSnapSendStatus)mGsonWrapper.a((String)hashmap.get(s2), (new TypeToken() {

                final SendDSnapTask a;

            
            {
                a = SendDSnapTask.this;
                super();
            }
            }).getType());
            a(s2, dsnapsendstatus);
            String s;
            String s1;
            boolean flag1;
            if (dsnapsendstatus != DSnapSendStatus.b && dsnapsendstatus != DSnapSendStatus.c)
            {
                flag1 = false;
            } else
            {
                flag1 = flag;
            }
            flag = flag1;
        }
        if (flag)
        {
            d.c(c);
            if (SnapUtils.a(b, c) != null && c.D().size() > 1)
            {
                s = UserPrefs.k();
                if (s != null)
                {
                    s1 = ChatUtils.a(s, c.E());
                    ChatConversationManager.a().c(s1);
                }
            }
            e.a(a, true);
            UserPrefs.u(false);
            return;
        } else
        {
            e();
            return;
        }
    }

    private void e()
    {
        if (UserPrefs.an())
        {
            return;
        } else
        {
            d.d(c);
            e.a(a, false);
            return;
        }
    }

    private void l()
    {
        try
        {
            (new SendDSnapWithMediaTask(c, d)).g();
            return;
        }
        catch (SendDSnapWithMediaTask.SendDSnapException senddsnapexception)
        {
            (new ErrorMetric(senddsnapexception.getMessage())).a(senddsnapexception).c();
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((HashMap)obj, networkresult);
    }

    public void a(HashMap hashmap, NetworkResult networkresult)
    {
        if (f && b != null)
        {
            SyncAllTask.b(b);
        }
        if (networkresult.h() && hashmap != null)
        {
            a(hashmap);
            return;
        }
        if (networkresult.j() == 404)
        {
            l();
            return;
        }
        if (networkresult.j() == 0)
        {
            c.a(DSnapSendStatus.f);
        }
        e();
    }

    protected String d()
    {
        Bundle bundle = new Bundle();
        String as[] = c.f();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("media_id", c.N());
        bundle.putString("recipients", StringUtils.a(Arrays.asList(as), ","));
        bundle.putString("media_type", "DISCOVER_SHARE");
        bundle.putString("media_enc_key", c.g());
        bundle.putString("media_enc_iv", c.h());
        bundle.putString("seq_nums", mGsonWrapper.a(a(as)));
        return HttpUtils.a("/loq/conversation_share_media", bundle);
    }
}
