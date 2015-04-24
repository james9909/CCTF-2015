// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.BuildConfig;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.api.SettingsTask;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.snapchat.LocalSQAcceptTermsBlocker;
import com.snapchat.android.api2.cash.blockers.snapchat.PhoneNumberBlocker;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.cash.CashSettingsFragment;
import com.snapchat.android.fragments.settings.email.EmailSettingsFragment;
import com.snapchat.android.fragments.settings.email.EmailVerificationSentFragment;
import com.snapchat.android.fragments.verification.SettingsPhoneVerificationFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.ui.EditTextDialog;
import com.snapchat.android.ui.dialog.TwoButtonDialog;
import com.snapchat.android.util.ActivityLauncher;
import com.snapchat.android.util.CashUtils;
import com.snapchat.android.util.IdentityUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.ScApplicationInfo;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.PhoneNumberVerifiedEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            WebFragment, AdditionalServicesFragment, DeveloperSettingsFragment, CustomStoryPrivacyFragment, 
//            ClearConversationsFragment, BlockedUsersFragment, NotificationSettingsFragment, BetaSettingsFragment

public class SettingsFragment extends SnapchatFragment
    implements android.content.SharedPreferences.OnSharedPreferenceChangeListener
{
    class ConfirmLogoutDialog extends TwoButtonDialog
    {

        final SettingsFragment a;

        protected void a()
        {
            AnalyticsEvents.c(false);
        }

        protected void b()
        {
            AnalyticsEvents.c(true);
            SettingsFragment.d(a);
        }

        public ConfirmLogoutDialog(Context context)
        {
            a = SettingsFragment.this;
            super(context, getString(0x7f0c01b4));
        }
    }

    class EditEmailDialog extends EditTextDialog
    {

        final SettingsFragment a;

        protected void a(String s1)
        {
            (new SettingsTask(this, "updateEmail", new String[] {
                s1
            }) {

                final EditEmailDialog a;

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
                a = editemaildialog;
                super(s1, as);
            }
            }).executeOnExecutor(ScExecutors.b, new String[0]);
            if (s1 != null)
            {
                SettingsFragment.e(a).setText(s1);
            }
        }
    }

    public static final class PrivacyOptions extends Enum
    {

        public static final PrivacyOptions a;
        public static final PrivacyOptions b;
        public static final PrivacyOptions c;
        private static final PrivacyOptions d[];

        public static PrivacyOptions valueOf(String s1)
        {
            return (PrivacyOptions)Enum.valueOf(com/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions, s1);
        }

        public static PrivacyOptions[] values()
        {
            return (PrivacyOptions[])d.clone();
        }

        static 
        {
            a = new PrivacyOptions("EVERYONE", 0);
            b = new PrivacyOptions("FRIENDS", 1);
            c = new PrivacyOptions("CUSTOM", 2);
            PrivacyOptions aprivacyoptions[] = new PrivacyOptions[3];
            aprivacyoptions[0] = a;
            aprivacyoptions[1] = b;
            aprivacyoptions[2] = c;
            d = aprivacyoptions;
        }

        private PrivacyOptions(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private final SnapchatServiceManager a;
    private final UserPrefs b;
    private DictionaryEasyMetric c;
    private IdentityUtils d;
    private TextView e;
    private TextView f;
    private ImageView g;
    private TextView h;
    private TextView i;
    private ImageView j;
    private int k;
    private int l;
    private int m;
    private android.view.View.OnClickListener n = new android.view.View.OnClickListener() {

        final SettingsFragment a;

        public void onClick(View view)
        {
            if (TextUtils.isEmpty(SettingsFragment.a(a).aL()))
            {
                BusProvider.a().a(new StartFragmentEvent(new EmailSettingsFragment(), com/snapchat/android/fragments/settings/email/EmailSettingsFragment.getSimpleName(), null));
                return;
            } else
            {
                BusProvider.a().a(new StartFragmentEvent(new EmailVerificationSentFragment()));
                return;
            }
        }

            
            {
                a = SettingsFragment.this;
                super();
            }
    };
    private android.view.View.OnClickListener o = new android.view.View.OnClickListener() {

        final SettingsFragment a;

        public void onClick(View view)
        {
            FragmentActivity fragmentactivity = a.getActivity();
            (a. new ConfirmLogoutDialog(fragmentactivity)).show();
        }

            
            {
                a = SettingsFragment.this;
                super();
            }
    };
    private android.view.View.OnClickListener p = new android.view.View.OnClickListener() {

        final SettingsFragment a;

        public void onClick(View view)
        {
            BusProvider.a().a(new StartFragmentEvent(new SettingsPhoneVerificationFragment()));
        }

            
            {
                a = SettingsFragment.this;
                super();
            }
    };
    private TextView q;
    private android.view.View.OnClickListener r = new android.view.View.OnClickListener() {

        final SettingsFragment a;

        public void onClick(View view)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getActivity());
            builder.setSingleChoiceItems(0x7f07000c, UserPrefs.h(), new android.content.DialogInterface.OnClickListener(this) {

                final _cls17 a;

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    AnalyticsEvents.a(PrivacyOptions.values()[UserPrefs.h()].toString(), PrivacyOptions.values()[i1].toString());
                    UserPrefs.c(i1);
                    SettingsFragment.b(a.a).setText(a.a.getResources().getStringArray(0x7f07000c)[i1]);
                    String as[] = new String[1];
                    as[0] = Integer.toString(i1);
                    (new SettingsTask("updatePrivacy", as)).executeOnExecutor(ScExecutors.b, new String[0]);
                    dialoginterface.dismiss();
                }

            
            {
                a = _pcls17;
                super();
            }
            });
            builder.show();
        }

            
            {
                a = SettingsFragment.this;
                super();
            }
    };
    private TextView s;
    private android.view.View.OnClickListener t = new android.view.View.OnClickListener() {

        final SettingsFragment a;

        public void onClick(View view)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getActivity());
            builder.setSingleChoiceItems(0x7f07000d, UserPrefs.i(), new android.content.DialogInterface.OnClickListener(this) {

                final _cls18 a;

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    AnalyticsEvents.a(PrivacyOptions.values()[UserPrefs.i()].toString(), PrivacyOptions.values()[i1].toString());
                    UserPrefs.d(i1);
                    SettingsFragment.c(a.a).setText(a.a.getResources().getStringArray(0x7f07000d)[i1]);
                    String s1 = PrivacyOptions.values()[i1].toString();
                    if (s1.equals("CUSTOM"))
                    {
                        BusProvider.a().a(new StartFragmentEvent(new CustomStoryPrivacyFragment()));
                    } else
                    {
                        (new SettingsTask("updateStoryPrivacy", new String[] {
                            s1
                        })).executeOnExecutor(ScExecutors.b, new String[0]);
                    }
                    dialoginterface.dismiss();
                }

            
            {
                a = _pcls18;
                super();
            }
            });
            builder.show();
        }

            
            {
                a = SettingsFragment.this;
                super();
            }
    };

    public SettingsFragment()
    {
        this(SnapchatServiceManager.a(), UserPrefs.a());
    }

    SettingsFragment(SnapchatServiceManager snapchatservicemanager, UserPrefs userprefs)
    {
        d = new IdentityUtils();
        a = snapchatservicemanager;
        b = userprefs;
    }

    static UserPrefs a(SettingsFragment settingsfragment)
    {
        return settingsfragment.b;
    }

    static TextView b(SettingsFragment settingsfragment)
    {
        return settingsfragment.q;
    }

    private void b()
    {
        boolean flag;
        k = getResources().getColor(0x7f080061);
        l = getResources().getColor(0x7f080060);
        m = getResources().getColor(0x7f080045);
        d(0x7f0a0056).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = SettingsFragment.this;
                super();
            }
        });
        d(0x7f0a029b).setOnClickListener(o);
        d(0x7f0a0299).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsFragment a;

            public void onClick(View view)
            {
                AnalyticsEvents.f();
                BusProvider.a().a(new StartFragmentEvent(new ClearConversationsFragment()));
            }

            
            {
                a = SettingsFragment.this;
                super();
            }
        });
        d(0x7f0a029a).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsFragment a;

            public void onClick(View view)
            {
                BusProvider.a().a(new StartFragmentEvent(new BlockedUsersFragment()));
            }

            
            {
                a = SettingsFragment.this;
                super();
            }
        });
        String s1 = UserPrefs.k();
        if (s1 != null)
        {
            ((TextView)d(0x7f0a0039)).setText(s1);
        }
        e = (TextView)d(0x7f0a0281);
        f = (TextView)d(0x7f0a0282);
        g = (ImageView)d(0x7f0a0283);
        l();
        d(0x7f0a027f).setOnClickListener(p);
        h = (TextView)d(0x7f0a0286);
        i = (TextView)d(0x7f0a0287);
        j = (ImageView)d(0x7f0a0288);
        k();
        d(0x7f0a0284).setOnClickListener(n);
        d(0x7f0a0291).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsFragment a;

            public void onClick(View view)
            {
                BusProvider.a().a(new StartFragmentEvent(new NotificationSettingsFragment()));
            }

            
            {
                a = SettingsFragment.this;
                super();
            }
        });
        TextView textview;
        String s2;
        String s3;
        long l1;
        int i1;
        if (ReleaseManager.g())
        {
            d(0x7f0a0292).setOnClickListener(new android.view.View.OnClickListener() {

                final SettingsFragment a;

                public void onClick(View view)
                {
                    BusProvider.a().a(new StartFragmentEvent(new BetaSettingsFragment()));
                }

            
            {
                a = SettingsFragment.this;
                super();
            }
            });
        } else
        {
            ((TextView)d(0x7f0a0293)).setText(getString(0x7f0c01ce));
            d(0x7f0a0292).setOnClickListener(new android.view.View.OnClickListener() {

                final SettingsFragment a;

                public void onClick(View view)
                {
                    AlertDialog alertdialog = new AlertDialog(this, a.getActivity()) {

                        final _cls6 a;

            
            {
                a = _pcls6;
                super(context);
            }
                    };
                    alertdialog.setTitle(0x7f0c01e6);
                    alertdialog.setMessage(a.getString(0x7f0c01b6));
                    alertdialog.setButton(-1, a.getString(0x7f0c00af), new android.content.DialogInterface.OnClickListener(this) {

                        final _cls6 a;

                        public void onClick(DialogInterface dialoginterface, int i1)
                        {
                            AnalyticsEvents.f(true);
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.snapchat.com/beta"));
                            a.a.startActivity(intent);
                        }

            
            {
                a = _pcls6;
                super();
            }
                    });
                    alertdialog.setButton(-2, a.getString(0x7f0c0136), new android.content.DialogInterface.OnClickListener(this) {

                        final _cls6 a;

                        public void onClick(DialogInterface dialoginterface, int i1)
                        {
                            AnalyticsEvents.f(false);
                        }

            
            {
                a = _pcls6;
                super();
            }
                    });
                    alertdialog.show();
                }

            
            {
                a = SettingsFragment.this;
                super();
            }
            });
        }
        l1 = ScApplicationInfo.d(getActivity()).lastUpdateTime;
        if (TimeUnit.MILLISECONDS.toDays(System.currentTimeMillis() - l1) < 7L)
        {
            break MISSING_BLOCK_LABEL_738;
        }
        i1 = UserPrefs.e();
        if (i1 < 1000)
        {
            break MISSING_BLOCK_LABEL_738;
        }
        flag = true;
_L1:
        if (flag)
        {
            d(0x7f0a0294).setVisibility(0);
            d(0x7f0a0295).setVisibility(0);
            d(0x7f0a0295).setOnClickListener(new android.view.View.OnClickListener() {

                final SettingsFragment a;

                public void onClick(View view)
                {
                    AlertDialog alertdialog = new AlertDialog(this, a.getActivity()) {

                        final _cls7 a;

            
            {
                a = _pcls7;
                super(context);
            }
                    };
                    alertdialog.setTitle(0x7f0c01dd);
                    alertdialog.setMessage(a.getString(0x7f0c01de));
                    alertdialog.setButton(-1, a.getString(0x7f0c0142), new android.content.DialogInterface.OnClickListener(this) {

                        final _cls7 a;

                        public void onClick(DialogInterface dialoginterface, int i1)
                        {
                            AnalyticsEvents.g(true);
                            ActivityLauncher.a(a.a.getActivity());
                        }

            
            {
                a = _pcls7;
                super();
            }
                    });
                    alertdialog.setButton(-2, a.getString(0x7f0c0136), new android.content.DialogInterface.OnClickListener(this) {

                        final _cls7 a;

                        public void onClick(DialogInterface dialoginterface, int i1)
                        {
                            AnalyticsEvents.g(false);
                        }

            
            {
                a = _pcls7;
                super();
            }
                    });
                    alertdialog.show();
                }

            
            {
                a = SettingsFragment.this;
                super();
            }
            });
        }
        d(0x7f0a0296).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsFragment a;

            public void onClick(View view)
            {
                BusProvider.a().a(new StartFragmentEvent(new WebFragment("https://accounts.snapchat.com", a.getString(0x7f0c01e7), true, null)));
            }

            
            {
                a = SettingsFragment.this;
                super();
            }
        });
        d(0x7f0a0297).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsFragment a;

            public void onClick(View view)
            {
                BusProvider.a().a(new StartFragmentEvent(new WebFragment("https://www.snapchat.com/privacy", a.getString(0x7f0c01dc))));
            }

            
            {
                a = SettingsFragment.this;
                super();
            }
        });
        d(0x7f0a0298).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsFragment a;

            public void onClick(View view)
            {
                BusProvider.a().a(new StartFragmentEvent(new WebFragment("https://www.snapchat.com/terms", a.getString(0x7f0c01e9))));
            }

            
            {
                a = SettingsFragment.this;
                super();
            }
        });
        d(0x7f0a028c).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsFragment a;

            public void onClick(View view)
            {
                AnalyticsEvents.e();
                BusProvider.a().a(new StartFragmentEvent(new AdditionalServicesFragment()));
            }

            
            {
                a = SettingsFragment.this;
                super();
            }
        });
        d(0x7f0a0289).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsFragment a;

            public void onClick(View view)
            {
                LocalSQAcceptTermsBlocker localsqaccepttermsblocker = new LocalSQAcceptTermsBlocker();
                PhoneNumberBlocker phonenumberblocker = new PhoneNumberBlocker();
                localsqaccepttermsblocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener(this, phonenumberblocker) {

                    final Blocker a;
                    final _cls12 b;

                    public void a(Blocker blocker)
                    {
                    }

                    public void a(Blocker blocker, List list, boolean flag)
                    {
                        a.a(null);
                    }

                    public void b(Blocker blocker)
                    {
                    }

                    public void b(Blocker blocker, List list, boolean flag)
                    {
                    }

            
            {
                b = _pcls12;
                a = blocker;
                super();
            }
                });
                phonenumberblocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener(this) {

                    final _cls12 a;

                    public void a(Blocker blocker)
                    {
                    }

                    public void a(Blocker blocker, List list, boolean flag)
                    {
                        BusProvider.a().a(new StartFragmentEvent(new CashSettingsFragment()));
                    }

                    public void b(Blocker blocker)
                    {
                    }

                    public void b(Blocker blocker, List list, boolean flag)
                    {
                    }

            
            {
                a = _pcls12;
                super();
            }
                });
                localsqaccepttermsblocker.a(null);
            }

            
            {
                a = SettingsFragment.this;
                super();
            }
        });
        Exception exception;
        try
        {
            s3 = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 0).versionName;
            ((TextView)d(0x7f0a029c)).setText(getResources().getString(0x7f0c0222, new Object[] {
                s3
            }));
        }
        catch (Exception exception1)
        {
            Timber.c("SettingsFragment", "getPackageName failed. Continuing.", new Object[0]);
        }
        if (ReleaseManager.f())
        {
            textview = (TextView)d(0x7f0a029d);
            textview.setVisibility(0);
            s2 = "";
            if (!TextUtils.isEmpty(""))
            {
                s2 = "\nGit Commit: ";
            }
            textview.setText((new StringBuilder()).append("Compiled with love on ").append(BuildConfig.a).append(s2).toString());
            textview.setOnClickListener(new android.view.View.OnClickListener() {

                final SettingsFragment a;

                public void onClick(View view)
                {
                    BusProvider.a().a(new StartFragmentEvent(new DeveloperSettingsFragment()));
                }

            
            {
                a = SettingsFragment.this;
                super();
            }
            });
        }
        q = (TextView)d(0x7f0a028e);
        q.setText(getResources().getStringArray(0x7f07000c)[UserPrefs.h()]);
        d(0x7f0a028d).setOnClickListener(r);
        s = (TextView)d(0x7f0a0290);
        s.setText(getResources().getStringArray(0x7f07000d)[UserPrefs.i()]);
        d(0x7f0a028f).setOnClickListener(t);
        return;
        exception;
        Timber.a("SettingsFragment", exception);
        flag = false;
          goto _L1
    }

    static TextView c(SettingsFragment settingsfragment)
    {
        return settingsfragment.s;
    }

    static void d(SettingsFragment settingsfragment)
    {
        settingsfragment.h();
    }

    static TextView e(SettingsFragment settingsfragment)
    {
        return settingsfragment.i;
    }

    private void h()
    {
        AnalyticsEvents.a(com.snapchat.android.analytics.AnalyticsEvents.LogoutReason.USER_INITIATED);
        a.d();
        FragmentActivity fragmentactivity = getActivity();
        ActivityLauncher.a(fragmentactivity);
        fragmentactivity.finish();
    }

    private void i()
    {
        k();
        l();
    }

    private void k()
    {
        if (!d.c())
        {
            j.setVisibility(8);
            UserPrefs _tmp = b;
            if (!TextUtils.isEmpty(UserPrefs.v()))
            {
                TextView textview1 = i;
                UserPrefs _tmp1 = b;
                textview1.setText(UserPrefs.v());
            }
            i.setTextColor(m);
            h.setTextColor(l);
            return;
        }
        j.setVisibility(0);
        h.setTextColor(k);
        UserPrefs _tmp2 = b;
        if (TextUtils.isEmpty(UserPrefs.v()) && TextUtils.isEmpty(b.aL()))
        {
            i.setVisibility(8);
            return;
        }
        i.setVisibility(0);
        i.setTextColor(k);
        if (TextUtils.isEmpty(b.aL()))
        {
            TextView textview = i;
            UserPrefs _tmp3 = b;
            textview.setText(UserPrefs.v());
            return;
        } else
        {
            i.setText(b.aL());
            return;
        }
    }

    private void l()
    {
        if (!d.b())
        {
            e.setTextColor(l);
            g.setVisibility(8);
            f.setVisibility(0);
            if (!TextUtils.isEmpty(UserPrefs.f()))
            {
                f.setText(PhoneNumberUtils.formatNumber(UserPrefs.f()));
            }
            f.setTextColor(m);
            return;
        }
        e.setTextColor(k);
        g.setVisibility(0);
        if (TextUtils.isEmpty(UserPrefs.f()))
        {
            f.setVisibility(8);
            return;
        } else
        {
            f.setVisibility(0);
            f.setTextColor(k);
            f.setText(PhoneNumberUtils.formatNumber(UserPrefs.f()));
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        c = DictionaryEasyMetric.a();
        x = layoutinflater.inflate(0x7f040078, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        b();
        return x;
    }

    public void onPhoneNumberVerifiedEvent(PhoneNumberVerifiedEvent phonenumberverifiedevent)
    {
        l();
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s1)
    {
        if (TextUtils.equals(SharedPreferenceKey.f.a(), s1) || TextUtils.equals(SharedPreferenceKey.bm.a(), s1) || TextUtils.equals(SharedPreferenceKey.bn.a(), s1) || TextUtils.equals(SharedPreferenceKey.g.a(), s1) || TextUtils.equals(SharedPreferenceKey.bo.a(), s1))
        {
            i();
        }
    }

    public void onStart()
    {
        super.onStart();
        UserPrefs.a(this);
    }

    public void onStop()
    {
        super.onStop();
        UserPrefs.b(this);
    }

    protected void s_()
    {
        c.b("FIRST_MEDIA_OPENED");
        super.s_();
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity != null)
        {
            ViewUtils.a(G(), x, fragmentactivity);
        }
        if (CashUtils.a(UserPrefs.Z()))
        {
            d(0x7f0a0289).setVisibility(0);
        } else
        {
            d(0x7f0a0289).setVisibility(8);
        }
        AnalyticsEvents.b();
    }
}
