// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.api.SetNumBestFriendsTask;
import com.snapchat.android.api.UpdateFeatureSettingsTask;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.location.GeofilterManager;
import com.snapchat.android.location.LocationPermissionsAccessor;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import net.simonvt.numberpicker.NumberPicker;

public class AdditionalServicesFragment extends SnapchatFragment
{

    private boolean a;
    private CheckBox b;

    public AdditionalServicesFragment()
    {
    }

    static CheckBox a(AdditionalServicesFragment additionalservicesfragment)
    {
        return additionalservicesfragment.b;
    }

    static boolean a(AdditionalServicesFragment additionalservicesfragment, boolean flag)
    {
        additionalservicesfragment.a = flag;
        return flag;
    }

    private void h()
    {
        d(0x7f0a0056).setOnClickListener(new android.view.View.OnClickListener() {

            final AdditionalServicesFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = AdditionalServicesFragment.this;
                super();
            }
        });
        i();
    }

    private void i()
    {
        b = (CheckBox)d(0x7f0a005a);
        CheckBox checkbox = (CheckBox)d(0x7f0a0060);
        CheckBox checkbox1 = (CheckBox)d(0x7f0a0062);
        b.setChecked(UserPrefs.L());
        checkbox.setChecked(UserPrefs.M());
        checkbox1.setChecked(UserPrefs.K());
        d(0x7f0a0059).setOnClickListener(new android.view.View.OnClickListener() {

            final AdditionalServicesFragment a;

            public void onClick(View view)
            {
                CheckBox checkbox2 = AdditionalServicesFragment.a(a);
                boolean flag;
                if (!AdditionalServicesFragment.a(a).isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox2.setChecked(flag);
                a.b();
            }

            
            {
                a = AdditionalServicesFragment.this;
                super();
            }
        });
        d(0x7f0a005f).setOnClickListener(new android.view.View.OnClickListener(checkbox) {

            final CheckBox a;
            final AdditionalServicesFragment b;

            public void onClick(View view)
            {
                CheckBox checkbox2 = a;
                boolean flag;
                if (!a.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox2.setChecked(flag);
            }

            
            {
                b = AdditionalServicesFragment.this;
                a = checkbox;
                super();
            }
        });
        d(0x7f0a0061).setOnClickListener(new android.view.View.OnClickListener(checkbox1) {

            final CheckBox a;
            final AdditionalServicesFragment b;

            public void onClick(View view)
            {
                CheckBox checkbox2 = a;
                boolean flag;
                if (!a.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox2.setChecked(flag);
            }

            
            {
                b = AdditionalServicesFragment.this;
                a = checkbox;
                super();
            }
        });
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final AdditionalServicesFragment a;

            public void onClick(View view)
            {
                a.b();
            }

            
            {
                a = AdditionalServicesFragment.this;
                super();
            }
        });
        checkbox.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final AdditionalServicesFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                AdditionalServicesFragment.a(a, true);
                UserPrefs.n(flag);
                AnalyticsEvents.a("TOGGLE_SETTING_FLASH", flag);
            }

            
            {
                a = AdditionalServicesFragment.this;
                super();
            }
        });
        checkbox1.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final AdditionalServicesFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                AdditionalServicesFragment.a(a, true);
                UserPrefs.l(flag);
                AnalyticsEvents.a("TOGGLE_SETTING_REPLAY", flag);
            }

            
            {
                a = AdditionalServicesFragment.this;
                super();
            }
        });
        TextView textview = (TextView)d(0x7f0a0064);
        textview.setText(Integer.toString(UserPrefs.O()));
        d(0x7f0a0063).setOnClickListener(new android.view.View.OnClickListener(textview) {

            final TextView a;
            final AdditionalServicesFragment b;

            public void onClick(View view)
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(b.getActivity());
                View view1 = LayoutInflater.from(b.getActivity()).inflate(0x7f040069, null);
                builder.setInverseBackgroundForced(true);
                NumberPicker numberpicker = (NumberPicker)view1.findViewById(0x7f0a0246);
                String as[] = b.getResources().getStringArray(0x7f07000b);
                numberpicker.setMinValue(0);
                numberpicker.setMaxValue(-1 + as.length);
                numberpicker.setDisplayedValues(as);
                numberpicker.setValue(Arrays.binarySearch(as, String.valueOf(UserPrefs.O())));
                numberpicker.setFocusable(true);
                numberpicker.setFocusableInTouchMode(true);
                builder.setView(view1).setCancelable(true).setTitle(0x7f0c01d6).setPositiveButton(0x7f0c0142, new android.content.DialogInterface.OnClickListener(this, as, numberpicker) {

                    final String a[];
                    final NumberPicker b;
                    final _cls8 c;

                    public void onClick(DialogInterface dialoginterface, int j)
                    {
                        int k = UserPrefs.O();
                        int l = Integer.parseInt(a[b.getValue()]);
                        if (l != k)
                        {
                            UserPrefs.f(l);
                            c.a.setText(Integer.toString(l));
                            (new SetNumBestFriendsTask(this, k) {

                                final int a;
                                final _cls2 b;

                                public void a(String s, int j)
                                {
                                    UserPrefs.f(a);
                                    ((TextView)b.c.b.d(0x7f0a0064)).setText(Integer.toString(UserPrefs.O()));
                                    AlertDialogUtils.a(0x7f0c01d7, b.c.b.getActivity());
                                }

            
            {
                b = _pcls2;
                a = j;
                super();
            }
                            }).executeOnExecutor(ScExecutors.b, new String[0]);
                        }
                        HashMap hashmap = new HashMap(2);
                        hashmap.put("prev_num_best_friends", Integer.toString(k));
                        hashmap.put("num_best_friends", Integer.toString(l));
                        (new EasyMetric("CHANGE_BEST_FRIENDS_COUNT")).a(hashmap).c();
                        dialoginterface.dismiss();
                    }

            
            {
                c = _pcls8;
                a = as;
                b = numberpicker;
                super();
            }
                }).setNegativeButton(0x7f0c003d, new android.content.DialogInterface.OnClickListener(this) {

                    final _cls8 a;

                    public void onClick(DialogInterface dialoginterface, int j)
                    {
                        dialoginterface.cancel();
                    }

            
            {
                a = _pcls8;
                super();
            }
                });
                builder.show();
            }

            
            {
                b = AdditionalServicesFragment.this;
                a = textview;
                super();
            }
        });
        TextView textview1 = (TextView)d(0x7f0a005c);
        textview1.setText(LocalizationUtils.a(0x7f0c01ec, new Object[] {
            LocalizationUtils.a(0x7f0c0228, new Object[0])
        }));
        if (!(new LocationPermissionsAccessor()).b())
        {
            textview1.setVisibility(8);
            d(0x7f0a005d).setVisibility(0);
            return;
        } else
        {
            textview1.setVisibility(0);
            d(0x7f0a005d).setVisibility(8);
            return;
        }
    }

    public void b()
    {
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(getActivity());
        LocationPermissionsAccessor locationpermissionsaccessor = new LocationPermissionsAccessor();
        if (b.isChecked())
        {
            if (!sharedpreferences.getBoolean(SharedPreferenceKey.z.a(), false) || !locationpermissionsaccessor.b())
            {
                locationpermissionsaccessor.a(getActivity(), new com.snapchat.android.location.LocationPermissionsAccessor.LocationPermissionsDialogListener() {

                    final AdditionalServicesFragment a;

                    public void a(boolean flag)
                    {
                        if (!flag)
                        {
                            AdditionalServicesFragment.a(a).setChecked(false);
                            return;
                        } else
                        {
                            AnalyticsEvents.a("TOGGLE_SETTING_FILTERS", true);
                            AdditionalServicesFragment.a(a, true);
                            return;
                        }
                    }

            
            {
                a = AdditionalServicesFragment.this;
                super();
            }
                });
                return;
            } else
            {
                UserPrefs.g(false);
                locationpermissionsaccessor.a(true);
                AnalyticsEvents.a("TOGGLE_SETTING_FILTERS", true);
                a = true;
                return;
            }
        } else
        {
            locationpermissionsaccessor.a(false);
            AnalyticsEvents.a("TOGGLE_SETTING_FILTERS", false);
            a = true;
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040004, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        h();
        return x;
    }

    public void onPause()
    {
        super.onPause();
        if (a)
        {
            (new UpdateFeatureSettingsTask()).executeOnExecutor(ScExecutors.b, new String[0]);
            if (!UserPrefs.L())
            {
                GeofilterManager.a().f();
            }
        }
    }
}
