// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.TextView;
import com.addlive.platform.ADL;
import com.addlive.service.AddLiveService;
import com.snapchat.android.HttpMetricsActivity;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.ResetAccountTask;
import com.snapchat.android.cash.CashAuthManager;
import com.snapchat.android.cash.CashCardManager;
import com.snapchat.android.chat.ChatConnectionMonitor;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.dev.DbBrowserActivity;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.EditTextDialog;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.PreferenceUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.chat.SecureChatService;
import com.snapchat.android.util.debug.DevUtils;
import com.snapchat.android.util.debug.DeveloperSettings;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.network.EndpointManager;
import java.util.ArrayList;

public class DeveloperSettingsFragment extends SnapchatFragment
{
    class BulbasaurException extends ArithmeticException
    {

        final DeveloperSettingsFragment a;

        public BulbasaurException(String s)
        {
            a = DeveloperSettingsFragment.this;
            super(s);
        }
    }

    class IvysaurException extends IllegalArgumentException
    {

        final DeveloperSettingsFragment a;

        public IvysaurException(String s, BulbasaurException bulbasaurexception)
        {
            a = DeveloperSettingsFragment.this;
            super(s, bulbasaurexception);
        }
    }

    class VenusaurException extends RuntimeException
    {

        final DeveloperSettingsFragment a;

        public VenusaurException(String s, Exception exception)
        {
            a = DeveloperSettingsFragment.this;
            super(s, exception);
        }
    }


    protected CashAuthManager a;
    protected CashCardManager b;
    private final DeveloperSettings c;
    private final DiscoverEndpointManager d;
    private final ChatConnectionMonitor e;

    public DeveloperSettingsFragment()
    {
        this(DeveloperSettings.a(), DiscoverEndpointManager.a(), ChatConnectionMonitor.a());
    }

    private DeveloperSettingsFragment(DeveloperSettings developersettings, DiscoverEndpointManager discoverendpointmanager, ChatConnectionMonitor chatconnectionmonitor)
    {
        SnapchatApplication.e().a(this);
        c = developersettings;
        d = discoverendpointmanager;
        e = chatconnectionmonitor;
    }

    static ChatConnectionMonitor a(DeveloperSettingsFragment developersettingsfragment)
    {
        return developersettingsfragment.e;
    }

    static Object a(DeveloperSettingsFragment developersettingsfragment, String s)
    {
        return developersettingsfragment.b(s);
    }

    static DeveloperSettings b(DeveloperSettingsFragment developersettingsfragment)
    {
        return developersettingsfragment.c;
    }

    private void b()
    {
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(getActivity());
        SecureChatService securechatservice = LandingPageActivity.t();
        d(0x7f0a0056).setOnClickListener(new android.view.View.OnClickListener() {

            final DeveloperSettingsFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        TextView textview = (TextView)d(0x7f0a0176);
        String s = DevUtils.a(sharedpreferences);
        if (s == null)
        {
            s = EndpointManager.a().b();
        }
        textview.setText(s);
        textview.setOnClickListener(new android.view.View.OnClickListener(s, textview) {

            final String a;
            final TextView b;
            final DeveloperSettingsFragment c;

            public void onClick(View view)
            {
                (new EditTextDialog(this, c.getActivity(), "Change Endpoint", a, null, 1) {

                    final _cls2 a;

                    protected void a(String s)
                    {
                        DevUtils.a(PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()), s);
                        a.b.setText(s);
                    }

            
            {
                a = _pcls2;
                super(context, s, s1, textwatcher, j);
            }
                }).show();
            }

            
            {
                c = DeveloperSettingsFragment.this;
                a = s;
                b = textview;
                super();
            }
        });
        h();
        CheckBox checkbox = (CheckBox)d(0x7f0a0178);
        checkbox.setChecked(DevUtils.a());
        checkbox.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener(sharedpreferences, textview) {

            final SharedPreferences a;
            final TextView b;
            final DeveloperSettingsFragment c;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (compoundbutton.getTag() != null)
                {
                    compoundbutton.setTag(null);
                    return;
                }
                if (flag)
                {
                    AlertDialogUtils.a(c.getActivity(), null, "This will also change the Snapchat endpoint to https://cash-dot-feelinsonice-hrd.appspot.com. Proceed?", new com.snapchat.android.util.AlertDialogUtils.YesNoAlertListener(this, compoundbutton) {

                        final CompoundButton a;
                        final _cls3 b;

                        public void a(com.snapchat.android.util.AlertDialogUtils.YesNoOption yesnooption)
                        {
                            if (yesnooption == com.snapchat.android.util.AlertDialogUtils.YesNoOption.a)
                            {
                                DevUtils.a(true);
                                DevUtils.a(b.a, "https://cash-dot-feelinsonice-hrd.appspot.com");
                                b.b.setText("https://cash-dot-feelinsonice-hrd.appspot.com");
                                UserPrefs.S();
                                b.c.a.a(null);
                                b.c.b.b();
                                return;
                            } else
                            {
                                a.setTag(Boolean.valueOf(true));
                                a.setChecked(false);
                                return;
                            }
                        }

            
            {
                b = _pcls3;
                a = compoundbutton;
                super();
            }
                    });
                    return;
                } else
                {
                    DevUtils.a(false);
                    DevUtils.a(a, null);
                    b.setText(EndpointManager.a().b());
                    UserPrefs.S();
                    c.a.a(null);
                    c.b.b();
                    AlertDialogUtils.a(c.getActivity(), "The Snapchat endpoint has also been reset to default.");
                    return;
                }
            }

            
            {
                c = DeveloperSettingsFragment.this;
                a = sharedpreferences;
                b = textview;
                super();
            }
        });
        d(0x7f0a0177).setOnClickListener(new android.view.View.OnClickListener(checkbox) {

            final CheckBox a;
            final DeveloperSettingsFragment b;

            public void onClick(View view)
            {
                CheckBox checkbox6 = a;
                boolean flag;
                if (!a.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox6.setChecked(flag);
            }

            
            {
                b = DeveloperSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
        i();
        CheckBox checkbox1 = (CheckBox)d(0x7f0a0182);
        checkbox1.setChecked(sharedpreferences.getBoolean(SharedPreferenceKey.ao.a(), false));
        checkbox1.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener(sharedpreferences) {

            final SharedPreferences a;
            final DeveloperSettingsFragment b;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                android.content.SharedPreferences.Editor editor;
                if (flag)
                {
                    if (DeveloperSettingsFragment.a(b).f())
                    {
                        ((NotificationManager)b.getActivity().getSystemService("notification")).notify(1337, (new android.support.v4.app.NotificationCompat.Builder(b.getActivity())).setSmallIcon(0x7f02015a).setContentTitle("Snapchat Chat").setContentText("TCP connection established").setOngoing(true).build());
                    }
                } else
                {
                    ((NotificationManager)DeveloperSettingsFragment.a(b, "notification")).cancel(1337);
                }
                editor = a.edit();
                editor.putBoolean(SharedPreferenceKey.ao.a(), flag);
                editor.apply();
            }

            
            {
                b = DeveloperSettingsFragment.this;
                a = sharedpreferences;
                super();
            }
        });
        d(0x7f0a0181).setOnClickListener(new android.view.View.OnClickListener(checkbox1) {

            final CheckBox a;
            final DeveloperSettingsFragment b;

            public void onClick(View view)
            {
                CheckBox checkbox6 = a;
                boolean flag;
                if (!a.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox6.setChecked(flag);
            }

            
            {
                b = DeveloperSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
        CheckBox checkbox2 = (CheckBox)d(0x7f0a017e);
        checkbox2.setChecked(PreferenceUtils.a(SharedPreferenceKey.ak.a(), false));
        checkbox2.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final DeveloperSettingsFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                PreferenceUtils.b(SharedPreferenceKey.ak.a(), flag);
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a017d).setOnClickListener(new android.view.View.OnClickListener(checkbox2) {

            final CheckBox a;
            final DeveloperSettingsFragment b;

            public void onClick(View view)
            {
                CheckBox checkbox6 = a;
                boolean flag;
                if (!a.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox6.setChecked(flag);
            }

            
            {
                b = DeveloperSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
        CheckBox checkbox3 = (CheckBox)d(0x7f0a0180);
        checkbox3.setChecked(sharedpreferences.getBoolean(SharedPreferenceKey.an.a(), false));
        checkbox3.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener(sharedpreferences, securechatservice) {

            final SharedPreferences a;
            final SecureChatService b;
            final DeveloperSettingsFragment c;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
label0:
                {
                    android.content.SharedPreferences.Editor editor = a.edit();
                    editor.putBoolean(SharedPreferenceKey.an.a(), flag);
                    editor.apply();
                    if (b != null)
                    {
                        if (!flag)
                        {
                            break label0;
                        }
                        b.c();
                    }
                    return;
                }
                b.b();
            }

            
            {
                c = DeveloperSettingsFragment.this;
                a = sharedpreferences;
                b = securechatservice;
                super();
            }
        });
        d(0x7f0a017f).setOnClickListener(new android.view.View.OnClickListener(checkbox3) {

            final CheckBox a;
            final DeveloperSettingsFragment b;

            public void onClick(View view)
            {
                CheckBox checkbox6 = a;
                boolean flag;
                if (!a.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox6.setChecked(flag);
            }

            
            {
                b = DeveloperSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
        TextView textview1 = (TextView)d(0x7f0a0184);
        SeekBar seekbar = (SeekBar)d(0x7f0a0185);
        seekbar.setOnSeekBarChangeListener(new android.widget.SeekBar.OnSeekBarChangeListener(textview1, sharedpreferences) {

            final TextView a;
            final SharedPreferences b;
            final DeveloperSettingsFragment c;

            public void onProgressChanged(SeekBar seekbar1, int j, boolean flag)
            {
                int k = j * 100;
                a.setText((new StringBuilder()).append(k).append("ms").toString());
                android.content.SharedPreferences.Editor editor = b.edit();
                editor.putInt(SharedPreferenceKey.as.a(), k);
                editor.apply();
            }

            public void onStartTrackingTouch(SeekBar seekbar1)
            {
            }

            public void onStopTrackingTouch(SeekBar seekbar1)
            {
            }

            
            {
                c = DeveloperSettingsFragment.this;
                a = textview;
                b = sharedpreferences;
                super();
            }
        });
        seekbar.setProgress(sharedpreferences.getInt(SharedPreferenceKey.as.a(), 600) / 100);
        d(0x7f0a0187).setOnClickListener(new android.view.View.OnClickListener() {

            final DeveloperSettingsFragment a;

            public void onClick(View view)
            {
                throw new RuntimeException("You asked for this.");
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a0186).setOnClickListener(new android.view.View.OnClickListener() {

            final DeveloperSettingsFragment a;

            public void onClick(View view)
            {
                UserPrefs.S();
                a.a.a(null);
                a.b.b();
                (new ResetAccountTask()).g();
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a0188).setOnClickListener(new android.view.View.OnClickListener() {

            final DeveloperSettingsFragment a;

            public void onClick(View view)
            {
                try
                {
                    throw a. new BulbasaurException("bulba");
                }
                catch (BulbasaurException bulbasaurexception)
                {
                    try
                    {
                        throw a. new IvysaurException("ivy ivy", bulbasaurexception);
                    }
                    catch (Exception exception)
                    {
                        throw a. new VenusaurException("venusaur...", exception);
                    }
                }
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a0189).setOnClickListener(new android.view.View.OnClickListener() {

            final DeveloperSettingsFragment a;

            public void onClick(View view)
            {
                (new Runnable(this) {

                    final _cls15 a;

                    public void run()
                    {
                        run();
                    }

            
            {
                a = _pcls15;
                super();
            }
                }).run();
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a018a).setOnClickListener(new android.view.View.OnClickListener() {

            final DeveloperSettingsFragment a;

            public void onClick(View view)
            {
                ADL.getService().setProperty(ADL.r(), "global.die", "");
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a018b).setOnClickListener(new android.view.View.OnClickListener() {

            final DeveloperSettingsFragment a;

            public void onClick(View view)
            {
                do
                {
                    Timber.d("DeveloperSettingsFragment", "I eat CPU cycles for breakfast.", new Object[0]);
                } while (true);
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a018c).setOnClickListener(new android.view.View.OnClickListener() {

            final DeveloperSettingsFragment a;

            public void onClick(View view)
            {
                Intent intent = new Intent(a.getActivity(), com/snapchat/android/HttpMetricsActivity);
                intent.addFlags(0x4000000);
                a.startActivity(intent);
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a018d).setOnClickListener(new android.view.View.OnClickListener() {

            final DeveloperSettingsFragment a;

            public void onClick(View view)
            {
                Intent intent = new Intent(a.getActivity(), com/snapchat/android/dev/DbBrowserActivity);
                intent.addFlags(0x4000000);
                a.startActivity(intent);
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        CheckBox checkbox4 = (CheckBox)d(0x7f0a018f);
        checkbox4.setChecked(DevUtils.b());
        checkbox4.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final DeveloperSettingsFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                DevUtils.b(flag);
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a018e).setOnClickListener(new android.view.View.OnClickListener(checkbox4) {

            final CheckBox a;
            final DeveloperSettingsFragment b;

            public void onClick(View view)
            {
                CheckBox checkbox6 = a;
                boolean flag;
                if (!a.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox6.setChecked(flag);
            }

            
            {
                b = DeveloperSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
        CheckBox checkbox5 = (CheckBox)d(0x7f0a017b);
        checkbox5.setChecked(c.c());
        checkbox5.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final DeveloperSettingsFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                DeveloperSettingsFragment.b(a).a(flag);
            }

            
            {
                a = DeveloperSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a017a).setOnClickListener(new android.view.View.OnClickListener(checkbox5) {

            final CheckBox a;
            final DeveloperSettingsFragment b;

            public void onClick(View view)
            {
                CheckBox checkbox6 = a;
                boolean flag;
                if (!a.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox6.setChecked(flag);
            }

            
            {
                b = DeveloperSettingsFragment.this;
                a = checkbox;
                super();
            }
        });
    }

    private void h()
    {
        TextView textview = (TextView)d(0x7f0a017c);
        String s = c.b();
        if (s == null)
        {
            s = d.b();
        }
        if (s == null)
        {
            s = "";
        }
        textview.setText(s);
        textview.setOnClickListener(new android.view.View.OnClickListener(s, textview) {

            final String a;
            final TextView b;
            final DeveloperSettingsFragment c;

            public void onClick(View view)
            {
                (new EditTextDialog(this, c.getActivity(), "Change Discover Endpoint", a, null, 1) {

                    final _cls24 a;

                    protected void a(String s)
                    {
                        DeveloperSettingsFragment.b(a.c).a(s);
                        a.b.setText(s);
                    }

            
            {
                a = _pcls24;
                super(context, s, s1, textwatcher, j);
            }
                }).show();
            }

            
            {
                c = DeveloperSettingsFragment.this;
                a = s;
                b = textview;
                super();
            }
        });
    }

    private void i()
    {
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e());
        ArrayList arraylist = new ArrayList();
        arraylist.add("Default (phone, no captcha)");
        arraylist.add("Only captcha");
        arraylist.add("Phone and captcha");
        arraylist.add("Neither phone nor captcha");
        ArrayAdapter arrayadapter = new ArrayAdapter(getActivity(), 0x7f040088, arraylist);
        arrayadapter.setDropDownViewResource(0x7f040088);
        Spinner spinner = (Spinner)d(0x7f0a0179);
        spinner.setAdapter(arrayadapter);
        spinner.setSelection(sharedpreferences.getInt(SharedPreferenceKey.au.a(), 0));
        spinner.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener(sharedpreferences) {

            final SharedPreferences a;
            final DeveloperSettingsFragment b;

            public void onItemSelected(AdapterView adapterview, View view, int j, long l)
            {
                android.content.SharedPreferences.Editor editor = a.edit();
                editor.putInt(SharedPreferenceKey.au.a(), j);
                editor.apply();
            }

            public void onNothingSelected(AdapterView adapterview)
            {
            }

            
            {
                b = DeveloperSettingsFragment.this;
                a = sharedpreferences;
                super();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04003f, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        b();
        return x;
    }
}
