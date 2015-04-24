// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.database.SharedPreferenceKey;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            NotificationSettingsFragment

class l
    implements android.widget.istener
{

    final CheckBox a;
    final CheckBox b;
    final CheckBox c;
    final CheckBox d;
    final View e;
    final View f;
    final View g;
    final View h;
    final View i;
    final View j;
    final View k;
    final View l;
    final NotificationSettingsFragment m;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        NotificationSettingsFragment.a(m).lean(SharedPreferenceKey.aw.a(), flag);
        NotificationSettingsFragment.a(m).m();
        a.setEnabled(flag);
        b.setEnabled(flag);
        c.setEnabled(flag);
        d.setEnabled(flag);
        e.setEnabled(flag);
        f.setEnabled(flag);
        g.setEnabled(flag);
        h.setEnabled(flag);
        i.setEnabled(flag);
        j.setEnabled(flag);
        k.setEnabled(flag);
        l.setEnabled(flag);
        StringBuilder stringbuilder = (new StringBuilder()).append("NOTIFICATIONS_");
        String s;
        if (flag)
        {
            s = "ENABLED";
        } else
        {
            s = "DISABLED";
        }
        (new EasyMetric(stringbuilder.append(s).toString())).c();
    }

    (NotificationSettingsFragment notificationsettingsfragment, CheckBox checkbox, CheckBox checkbox1, CheckBox checkbox2, CheckBox checkbox3, View view, View view1, 
            View view2, View view3, View view4, View view5, View view6, View view7)
    {
        m = notificationsettingsfragment;
        a = checkbox;
        b = checkbox1;
        c = checkbox2;
        d = checkbox3;
        e = view;
        f = view1;
        g = view2;
        h = view3;
        i = view4;
        j = view5;
        k = view6;
        l = view7;
        super();
    }
}
