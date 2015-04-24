// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.Context;
import android.text.TextWatcher;
import android.view.View;
import android.widget.TextView;
import com.snapchat.android.ui.EditTextDialog;
import com.snapchat.android.util.debug.DeveloperSettings;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            DeveloperSettingsFragment

class a extends EditTextDialog
{

    final a a;

    protected void a(String s)
    {
        DeveloperSettingsFragment.b(a.a).a(s);
        a.a.setText(s);
    }

    ( , Context context, String s, String s1, TextWatcher textwatcher, int i)
    {
        a = ;
        super(context, s, s1, textwatcher, i);
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/DeveloperSettingsFragment$24

/* anonymous class */
    class DeveloperSettingsFragment._cls24
        implements android.view.View.OnClickListener
    {

        final String a;
        final TextView b;
        final DeveloperSettingsFragment c;

        public void onClick(View view)
        {
            (new DeveloperSettingsFragment._cls24._cls1(this, c.getActivity(), "Change Discover Endpoint", a, null, 1)).show();
        }

            
            {
                c = developersettingsfragment;
                a = s;
                b = textview;
                super();
            }
    }

}
