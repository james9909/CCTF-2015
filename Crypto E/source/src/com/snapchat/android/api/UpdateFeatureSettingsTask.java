// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.google.gson.Gson;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.FeatureSettings;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.GsonUtil;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask, SyncAllTask

public class UpdateFeatureSettingsTask extends RequestTask
{

    private static final String TAG = "UpdateFeatureSettingsTask";
    private static final String TASK_NAME = "UpdateFeatureSettingsTask";

    public UpdateFeatureSettingsTask()
    {
    }

    protected String a()
    {
        return "/bq/update_feature_settings";
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        FeatureSettings featuresettings = new FeatureSettings();
        featuresettings.smart_filters = UserPrefs.L();
        featuresettings.replay_snaps = UserPrefs.K();
        featuresettings.front_facing_flash = UserPrefs.M();
        bundle.putString("settings", GsonUtil.a().toJson(featuresettings));
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        Timber.c("UpdateFeatureSettingsTask", "UpdateFeatureSettingsTask: SUCCESS", new Object[0]);
        SnapchatApplication snapchatapplication = SnapchatApplication.e();
        if (snapchatapplication != null)
        {
            SyncAllTask.b(User.a(snapchatapplication));
        }
    }

    protected String c()
    {
        return "UpdateFeatureSettingsTask";
    }
}
