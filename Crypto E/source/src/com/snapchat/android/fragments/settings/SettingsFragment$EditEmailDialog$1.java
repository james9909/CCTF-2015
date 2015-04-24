// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.widget.TextView;
import com.snapchat.android.api.SettingsTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment

class a extends SettingsTask
{

    final a a;

    protected void a(ServerResponse serverresponse)
    {
        super.a(serverresponse);
        SettingsFragment.e(a.a).setText(UserPrefs.v());
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }

    transient ( , String s, String as[])
    {
        a = ;
        super(s, as);
    }
}
