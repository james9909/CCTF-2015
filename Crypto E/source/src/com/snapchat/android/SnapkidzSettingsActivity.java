// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.dialog.TwoButtonDialog;
import com.snapchat.android.util.fragment.SnapchatFragment;

// Referenced classes of package com.snapchat.android:
//            SnapchatActivity

public class SnapkidzSettingsActivity extends SnapchatActivity
{
    class ConfirmDeleteSnapKidz extends TwoButtonDialog
    {

        final SnapkidzSettingsActivity a;

        protected void a()
        {
        }

        protected void b()
        {
            int j = SnapkidzSettingsActivity.c(a).getInt("SnapKidzLoginManager_numAccounts", 0);
            for (int k = 0; k < j; k++)
            {
                SnapkidzSettingsActivity.d(a).putString((new StringBuilder()).append("SnapKidzLoginManager_username_").append(k).toString(), "");
            }

            SnapkidzSettingsActivity.d(a).putInt("SnapKidzLoginManager_numAccounts", 0);
            SnapkidzSettingsActivity.d(a).apply();
            SnapkidzSettingsActivity.a(a);
        }

        public ConfirmDeleteSnapKidz()
        {
            a = SnapkidzSettingsActivity.this;
            super(SnapkidzSettingsActivity.b(SnapkidzSettingsActivity.this), getString(0x7f0c009a));
        }
    }


    private final android.view.View.OnClickListener a = new android.view.View.OnClickListener() {

        final SnapkidzSettingsActivity a;

        public void onClick(View view)
        {
            a.finish();
        }

            
            {
                a = SnapkidzSettingsActivity.this;
                super();
            }
    };
    private final android.view.View.OnClickListener b = new android.view.View.OnClickListener() {

        final SnapkidzSettingsActivity a;

        public void onClick(View view)
        {
            (a. new ConfirmDeleteSnapKidz()).show();
        }

            
            {
                a = SnapkidzSettingsActivity.this;
                super();
            }
    };
    private final android.view.View.OnClickListener c = new android.view.View.OnClickListener() {

        final SnapkidzSettingsActivity a;

        public void onClick(View view)
        {
            SnapkidzSettingsActivity.a(a);
        }

            
            {
                a = SnapkidzSettingsActivity.this;
                super();
            }
    };
    private final android.view.View.OnClickListener d = new android.view.View.OnClickListener() {

        final SnapkidzSettingsActivity a;

        public void onClick(View view)
        {
            SnapkidzSettingsActivity.a(a, new WebFragment("https://www.snapchat.com/privacy", a.getString(0x7f0c01dc)), "WebFragment");
        }

            
            {
                a = SnapkidzSettingsActivity.this;
                super();
            }
    };
    private final android.view.View.OnClickListener e = new android.view.View.OnClickListener() {

        final SnapkidzSettingsActivity a;

        public void onClick(View view)
        {
            SnapkidzSettingsActivity.a(a, new WebFragment("https://www.snapchat.com/snapkidz.jsp", a.getString(0x7f0c0229)), "WebFragment");
        }

            
            {
                a = SnapkidzSettingsActivity.this;
                super();
            }
    };
    private final android.view.View.OnClickListener f = new android.view.View.OnClickListener() {

        final SnapkidzSettingsActivity a;

        public void onClick(View view)
        {
            SnapkidzSettingsActivity.a(a, new WebFragment("https://www.snapchat.com/terms", a.getString(0x7f0c01e9)), "WebFragment");
        }

            
            {
                a = SnapkidzSettingsActivity.this;
                super();
            }
    };
    private SnapkidzSettingsActivity g;
    private SharedPreferences h;
    private android.content.SharedPreferences.Editor i;

    public SnapkidzSettingsActivity()
    {
    }

    private void a()
    {
        findViewById(0x7f0a0056).setOnClickListener(a);
        findViewById(0x7f0a02df).setOnClickListener(e);
        findViewById(0x7f0a029b).setOnClickListener(c);
        findViewById(0x7f0a02e0).setOnClickListener(b);
        findViewById(0x7f0a0297).setOnClickListener(d);
        findViewById(0x7f0a0298).setOnClickListener(f);
    }

    static void a(SnapkidzSettingsActivity snapkidzsettingsactivity)
    {
        snapkidzsettingsactivity.b();
    }

    static void a(SnapkidzSettingsActivity snapkidzsettingsactivity, SnapchatFragment snapchatfragment, String s)
    {
        snapkidzsettingsactivity.a(snapchatfragment, s);
    }

    private void a(SnapchatFragment snapchatfragment, String s)
    {
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        fragmenttransaction.add(0x7f0a027d, snapchatfragment, s);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    static SnapkidzSettingsActivity b(SnapkidzSettingsActivity snapkidzsettingsactivity)
    {
        return snapkidzsettingsactivity.g;
    }

    private void b()
    {
        UserPrefs.b(false);
        User.a(getApplicationContext()).F();
        setResult(707);
        finish();
    }

    static SharedPreferences c(SnapkidzSettingsActivity snapkidzsettingsactivity)
    {
        return snapkidzsettingsactivity.h;
    }

    static android.content.SharedPreferences.Editor d(SnapkidzSettingsActivity snapkidzsettingsactivity)
    {
        return snapkidzsettingsactivity.i;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f040086);
        h = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
        i = h.edit();
        a();
        g = this;
    }
}
