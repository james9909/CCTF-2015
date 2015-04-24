// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.widget.TextView;
import com.snapchat.android.api.SettingsTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.ui.EditTextDialog;
import com.snapchat.android.util.ScExecutors;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment

class _cls1.a extends EditTextDialog
{

    final SettingsFragment a;

    protected void a(String s)
    {
        (new SettingsTask("updateEmail", new String[] {
            s
        }) {

            final SettingsFragment.EditEmailDialog a;

            protected void a(ServerResponse serverresponse)
            {
                super.a(serverresponse);
                SettingsFragment.e(a.a).setText(UserPrefs.v());
            }

            protected void onPostExecute(Object obj)
            {
                a((ServerResponse)obj);
            }

            transient 
            {
                a = SettingsFragment.EditEmailDialog.this;
                super(s, as);
            }
        }).executeOnExecutor(ScExecutors.b, new String[0]);
        if (s != null)
        {
            SettingsFragment.e(a).setText(s);
        }
    }
}
