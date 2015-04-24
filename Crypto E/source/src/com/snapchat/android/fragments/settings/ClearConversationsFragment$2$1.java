// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.chat.ClearFeedTask;
import com.snapchat.android.util.AlertDialogUtils;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            ClearConversationsFragment

class a
    implements android.content.
{

    final a a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        AlertDialogUtils.a(a.a.getString(0x7f0c01b1), a.a.getActivity());
        ClearConversationsFragment.a(a.a).setVisibility(8);
        ClearConversationsFragment.b(a.a).setVisibility(0);
        AnalyticsEvents.J();
        AnalyticsEvents.K();
        ClearConversationsFragment.a(a.a, true);
        (new ClearFeedTask(a.a)).g();
        ClearConversationsFragment.c(a.a).notifyDataSetChanged();
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/ClearConversationsFragment$2

/* anonymous class */
    class ClearConversationsFragment._cls2
        implements android.view.View.OnClickListener
    {

        final ClearConversationsFragment a;

        public void onClick(View view)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getActivity());
            builder.setTitle(a.getString(0x7f0c01aa)).setMessage(a.getString(0x7f0c01ab)).setPositiveButton(a.getString(0x7f0c0142), new ClearConversationsFragment._cls2._cls1(this)).setNegativeButton(a.getString(0x7f0c003d), null);
            builder.create().show();
        }

            
            {
                a = clearconversationsfragment;
                super();
            }
    }

}
