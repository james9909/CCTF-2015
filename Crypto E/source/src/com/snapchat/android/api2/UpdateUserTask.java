// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.google.gson.Gson;
import com.snapchat.android.api2.framework.BaseRetriableScRequestTask;
import com.snapchat.android.database.ClientProperty;
import com.snapchat.android.database.OnboardingTooltip;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.EnumUtils;
import com.snapchat.android.util.GsonUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload

public class UpdateUserTask extends BaseRetriableScRequestTask
{
    public class RequestPayload extends AuthPayload
    {

        String clientProperties;
        String seenTooltips;
        final UpdateUserTask this$0;
        String username;

        public RequestPayload()
        {
            this$0 = UpdateUserTask.this;
            super();
            username = UserPrefs.k();
            seenTooltips = GsonUtil.a().toJson(UpdateUserTask.a(UpdateUserTask.this));
            clientProperties = GsonUtil.a().toJson(UpdateUserTask.b(UpdateUserTask.this));
        }
    }


    private Map mClientProperties;
    private List mSeenTooltips;

    public UpdateUserTask()
    {
        mSeenTooltips = new ArrayList(1);
        mClientProperties = new HashMap();
    }

    public UpdateUserTask(OnboardingTooltip onboardingtooltip)
    {
        mSeenTooltips = new ArrayList(1);
        mClientProperties = new HashMap();
        mSeenTooltips.add(EnumUtils.a(onboardingtooltip));
    }

    static List a(UpdateUserTask updateusertask)
    {
        return updateusertask.mSeenTooltips;
    }

    static Map b(UpdateUserTask updateusertask)
    {
        return updateusertask.mClientProperties;
    }

    public UpdateUserTask a(ClientProperty clientproperty, String s)
    {
        mClientProperties.put(EnumUtils.a(clientproperty), s);
        return this;
    }

    public Object b()
    {
        return e();
    }

    protected String d()
    {
        return "/loq/update_user";
    }

    public RequestPayload e()
    {
        return new RequestPayload();
    }
}
