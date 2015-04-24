// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class NotificationSettingsFragment extends SnapchatFragment
{

    private SharedPreferences a;
    private android.content.SharedPreferences.Editor b;

    public NotificationSettingsFragment()
    {
    }

    static android.content.SharedPreferences.Editor a(NotificationSettingsFragment notificationsettingsfragment)
    {
        return notificationsettingsfragment.b;
    }

    private void b()
    {
        d(0x7f0a0056).setOnClickListener(new android.view.View.OnClickListener() {

            final NotificationSettingsFragment a;

            public void onClick(View view8)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = NotificationSettingsFragment.this;
                super();
            }
        });
        CheckBox checkbox = (CheckBox)d(0x7f0a0238);
        CheckBox checkbox1 = (CheckBox)d(0x7f0a023b);
        CheckBox checkbox2 = (CheckBox)d(0x7f0a023e);
        CheckBox checkbox3 = (CheckBox)d(0x7f0a0241);
        CheckBox checkbox4 = (CheckBox)d(0x7f0a0244);
        d(0x7f0a0237).setOnClickListener(new android.view.View.OnClickListener(checkbox) {

            final CheckBox a;
            final NotificationSettingsFragment b;

            public void onClick(View view8)
            {
                CheckBox checkbox5 = a;
                boolean flag6;
                if (!a.isChecked())
                {
                    flag6 = true;
                } else
                {
                    flag6 = false;
                }
                checkbox5.setChecked(flag6);
            }

            
            {
                b = NotificationSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
        View view = d(0x7f0a0239);
        view.setOnClickListener(new android.view.View.OnClickListener(checkbox1) {

            final CheckBox a;
            final NotificationSettingsFragment b;

            public void onClick(View view8)
            {
                CheckBox checkbox5 = a;
                boolean flag6;
                if (!a.isChecked())
                {
                    flag6 = true;
                } else
                {
                    flag6 = false;
                }
                checkbox5.setChecked(flag6);
            }

            
            {
                b = NotificationSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
        View view1 = d(0x7f0a023f);
        view1.setOnClickListener(new android.view.View.OnClickListener(checkbox3) {

            final CheckBox a;
            final NotificationSettingsFragment b;

            public void onClick(View view8)
            {
                CheckBox checkbox5 = a;
                boolean flag6;
                if (!a.isChecked())
                {
                    flag6 = true;
                } else
                {
                    flag6 = false;
                }
                checkbox5.setChecked(flag6);
            }

            
            {
                b = NotificationSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
        View view2 = d(0x7f0a023c);
        view2.setOnClickListener(new android.view.View.OnClickListener(checkbox2) {

            final CheckBox a;
            final NotificationSettingsFragment b;

            public void onClick(View view8)
            {
                CheckBox checkbox5 = a;
                boolean flag6;
                if (!a.isChecked())
                {
                    flag6 = true;
                } else
                {
                    flag6 = false;
                }
                checkbox5.setChecked(flag6);
            }

            
            {
                b = NotificationSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
        View view3 = d(0x7f0a0242);
        view3.setOnClickListener(new android.view.View.OnClickListener(checkbox4) {

            final CheckBox a;
            final NotificationSettingsFragment b;

            public void onClick(View view8)
            {
                CheckBox checkbox5 = a;
                boolean flag6;
                if (!a.isChecked())
                {
                    flag6 = true;
                } else
                {
                    flag6 = false;
                }
                checkbox5.setChecked(flag6);
            }

            
            {
                b = NotificationSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
        View view4 = d(0x7f0a023a);
        View view5 = d(0x7f0a0240);
        View view6 = d(0x7f0a023d);
        View view7 = d(0x7f0a0243);
        boolean flag = a.getBoolean(SharedPreferenceKey.aw.a(), true);
        boolean flag1 = a.getBoolean(SharedPreferenceKey.ax.a(), false);
        boolean flag2 = a.getBoolean(SharedPreferenceKey.ay.a(), flag1);
        boolean flag3 = a.getBoolean(SharedPreferenceKey.az.a(), flag1);
        boolean flag4 = a.getBoolean(SharedPreferenceKey.aA.a(), true);
        boolean flag5 = a.getBoolean(SharedPreferenceKey.aB.a(), true);
        checkbox.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener(checkbox3, checkbox4, checkbox2, checkbox1, view1, view3, view2, view, view5, view7, view6, view4) {

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

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag6)
            {
                NotificationSettingsFragment.a(m).putBoolean(SharedPreferenceKey.aw.a(), flag6);
                NotificationSettingsFragment.a(m).apply();
                a.setEnabled(flag6);
                b.setEnabled(flag6);
                c.setEnabled(flag6);
                d.setEnabled(flag6);
                e.setEnabled(flag6);
                f.setEnabled(flag6);
                g.setEnabled(flag6);
                h.setEnabled(flag6);
                i.setEnabled(flag6);
                j.setEnabled(flag6);
                k.setEnabled(flag6);
                l.setEnabled(flag6);
                StringBuilder stringbuilder = (new StringBuilder()).append("NOTIFICATIONS_");
                String s;
                if (flag6)
                {
                    s = "ENABLED";
                } else
                {
                    s = "DISABLED";
                }
                (new EasyMetric(stringbuilder.append(s).toString())).c();
            }

            
            {
                m = NotificationSettingsFragment.this;
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
        });
        checkbox.setChecked(flag);
        checkbox3.setChecked(flag2);
        checkbox4.setChecked(flag3);
        checkbox1.setChecked(flag5);
        checkbox2.setChecked(flag4);
        checkbox3.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final NotificationSettingsFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag6)
            {
                NotificationSettingsFragment.a(a).putBoolean(SharedPreferenceKey.ay.a(), flag6);
                NotificationSettingsFragment.a(a).apply();
            }

            
            {
                a = NotificationSettingsFragment.this;
                super();
            }
        });
        checkbox4.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final NotificationSettingsFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag6)
            {
                NotificationSettingsFragment.a(a).putBoolean(SharedPreferenceKey.az.a(), flag6);
                NotificationSettingsFragment.a(a).apply();
            }

            
            {
                a = NotificationSettingsFragment.this;
                super();
            }
        });
        checkbox2.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final NotificationSettingsFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag6)
            {
                NotificationSettingsFragment.a(a).putBoolean(SharedPreferenceKey.aA.a(), flag6);
                NotificationSettingsFragment.a(a).apply();
            }

            
            {
                a = NotificationSettingsFragment.this;
                super();
            }
        });
        checkbox1.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final NotificationSettingsFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag6)
            {
                NotificationSettingsFragment.a(a).putBoolean(SharedPreferenceKey.aB.a(), flag6);
                NotificationSettingsFragment.a(a).apply();
            }

            
            {
                a = NotificationSettingsFragment.this;
                super();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040067, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        a = PreferenceManager.getDefaultSharedPreferences(getActivity());
        b = a.edit();
        b();
        return x;
    }
}
