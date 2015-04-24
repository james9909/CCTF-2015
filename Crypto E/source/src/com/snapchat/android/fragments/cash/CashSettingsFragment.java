// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.cash.CashProviderManager;
import com.snapchat.android.api2.cash.ICashProvider;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.square.SQAccessTokenBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQCardFormBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQUnlinkCardBlocker;
import com.snapchat.android.api2.cash.square.SquareRequestTask;
import com.snapchat.android.api2.cash.square.UpdateSquareSettingsTask;
import com.snapchat.android.api2.cash.square.data.CardBrand;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CustomerProfileUpdatedEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            SecurityCodeFragment

public class CashSettingsFragment extends SnapchatFragment
{

    protected CashProviderManager a;
    protected AlertDialog b;
    private ImageView c;
    private TextView d;
    private RelativeLayout e;
    private ImageView f;
    private ProgressBar g;
    private RelativeLayout h;
    private CheckBox i;
    private TextView j;
    private TextView k;
    private ProgressBar l;
    private View m;

    public CashSettingsFragment()
    {
        SnapchatApplication.e().a(this);
    }

    static ProgressBar a(CashSettingsFragment cashsettingsfragment)
    {
        return cashsettingsfragment.g;
    }

    private void a(CompoundButton compoundbutton, View view, ProgressBar progressbar, boolean flag, String s)
    {
        ThreadUtils.a(new Runnable(flag, compoundbutton, progressbar, view, s) {

            final boolean a;
            final CompoundButton b;
            final ProgressBar c;
            final View d;
            final String e;
            final CashSettingsFragment f;

            public void run()
            {
                if (a != b.isChecked())
                {
                    b.setTag(Boolean.valueOf(true));
                }
                b.setChecked(a);
                b.setVisibility(0);
                c.setVisibility(8);
                d.setEnabled(true);
                if (e != null)
                {
                    BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, e));
                }
            }

            
            {
                f = CashSettingsFragment.this;
                a = flag;
                b = compoundbutton;
                c = progressbar;
                d = view;
                e = s;
                super();
            }
        });
    }

    static void a(CashSettingsFragment cashsettingsfragment, CompoundButton compoundbutton, View view, ProgressBar progressbar, boolean flag, String s)
    {
        cashsettingsfragment.a(compoundbutton, view, progressbar, flag, s);
    }

    static void a(CashSettingsFragment cashsettingsfragment, Integer integer)
    {
        cashsettingsfragment.a(integer);
    }

    private void a(Integer integer)
    {
        ThreadUtils.a(new Runnable(integer) {

            final Integer a;
            final CashSettingsFragment b;

            public void run()
            {
                CashSettingsFragment.a(b).setVisibility(8);
                if (UserPrefs.aa())
                {
                    CashSettingsFragment.f(b);
                } else
                {
                    CashSettingsFragment.g(b);
                }
                CashSettingsFragment.h(b);
                if (a != null)
                {
                    BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, a.intValue()));
                }
            }

            
            {
                b = CashSettingsFragment.this;
                a = integer;
                super();
            }
        });
    }

    static ImageView b(CashSettingsFragment cashsettingsfragment)
    {
        return cashsettingsfragment.f;
    }

    static CheckBox c(CashSettingsFragment cashsettingsfragment)
    {
        return cashsettingsfragment.i;
    }

    static RelativeLayout d(CashSettingsFragment cashsettingsfragment)
    {
        return cashsettingsfragment.h;
    }

    static ProgressBar e(CashSettingsFragment cashsettingsfragment)
    {
        return cashsettingsfragment.l;
    }

    static void f(CashSettingsFragment cashsettingsfragment)
    {
        cashsettingsfragment.k();
    }

    static void g(CashSettingsFragment cashsettingsfragment)
    {
        cashsettingsfragment.l();
    }

    static void h(CashSettingsFragment cashsettingsfragment)
    {
        cashsettingsfragment.n();
    }

    private void i()
    {
        c = (ImageView)d(0x7f0a00db);
        d = (TextView)d(0x7f0a00dc);
        e = (RelativeLayout)d(0x7f0a00da);
        f = (ImageView)d(0x7f0a00dd);
        g = (ProgressBar)d(0x7f0a00de);
        h = (RelativeLayout)d(0x7f0a00df);
        i = (CheckBox)d(0x7f0a00e0);
        j = (TextView)d(0x7f0a00e1);
        k = (TextView)d(0x7f0a00e2);
        l = (ProgressBar)d(0x7f0a00e3);
        m = d(0x7f0a00e5);
        d(0x7f0a0056).setOnClickListener(new android.view.View.OnClickListener() {

            final CashSettingsFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = CashSettingsFragment.this;
                super();
            }
        });
        i.setChecked(UserPrefs.af());
        e.setOnClickListener(new android.view.View.OnClickListener() {

            final CashSettingsFragment a;

            public void onClick(View view)
            {
                SQCardFormBlocker sqcardformblocker = new SQCardFormBlocker(true);
                sqcardformblocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener(this) {

                    final _cls2 a;

                    public void a(Blocker blocker)
                    {
                    }

                    public void a(Blocker blocker, List list, boolean flag)
                    {
                        if (list != null)
                        {
                            Iterator iterator = list.iterator();
                            do
                            {
                                if (!iterator.hasNext())
                                {
                                    break;
                                }
                                Blocker blocker1 = (Blocker)iterator.next();
                                if (blocker1.d())
                                {
                                    blocker1.a(null);
                                }
                            } while (true);
                        }
                        CashSettingsFragment.a(a.a, null);
                    }

                    public void b(Blocker blocker)
                    {
                    }

                    public void b(Blocker blocker, List list, boolean flag)
                    {
                        CashSettingsFragment.a(a.a, Integer.valueOf(0x7f0c0104));
                    }

            
            {
                a = _pcls2;
                super();
            }
                });
                sqcardformblocker.a(null);
            }

            
            {
                a = CashSettingsFragment.this;
                super();
            }
        });
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final CashSettingsFragment a;

            public void onClick(View view)
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getActivity());
                builder.setTitle(0x7f0c021a);
                builder.setMessage(0x7f0c0219);
                builder.setCancelable(true);
                builder.setPositiveButton(0x7f0c022a, new android.content.DialogInterface.OnClickListener(this) {

                    final _cls3 a;

                    public void onClick(DialogInterface dialoginterface, int i1)
                    {
                        CashSettingsFragment.a(a.a).setVisibility(0);
                        CashSettingsFragment.b(a.a).setVisibility(8);
                        SQUnlinkCardBlocker squnlinkcardblocker = a.a.d();
                        squnlinkcardblocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener(this) {

                            final _cls1 a;

                            public void a(Blocker blocker)
                            {
                            }

                            public void a(Blocker blocker, List list, boolean flag)
                            {
                                CashSettingsFragment.a(a.a.a, null);
                            }

                            public void b(Blocker blocker)
                            {
                                CashSettingsFragment.a(a.a.a, Integer.valueOf(0x7f0c003f));
                            }

                            public void b(Blocker blocker, List list, boolean flag)
                            {
                                CashSettingsFragment.a(a.a.a, Integer.valueOf(0x7f0c003f));
                            }

            
            {
                a = _pcls1;
                super();
            }
                        });
                        squnlinkcardblocker.a(null);
                    }

            
            {
                a = _pcls3;
                super();
            }
                });
                builder.setNegativeButton(0x7f0c0130, null);
                a.b = builder.create();
                a.b.show();
            }

            
            {
                a = CashSettingsFragment.this;
                super();
            }
        });
        h.setOnClickListener(new android.view.View.OnClickListener() {

            final CashSettingsFragment a;

            public void onClick(View view)
            {
                CheckBox checkbox = CashSettingsFragment.c(a);
                boolean flag;
                if (!CashSettingsFragment.c(a).isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox.setChecked(flag);
            }

            
            {
                a = CashSettingsFragment.this;
                super();
            }
        });
        i.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final CashSettingsFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (compoundbutton.getTag() != null)
                {
                    compoundbutton.setTag(null);
                    return;
                } else
                {
                    CashSettingsFragment.d(a).setEnabled(false);
                    CashSettingsFragment.c(a).setVisibility(8);
                    CashSettingsFragment.e(a).setVisibility(0);
                    Blocker blocker = a.b();
                    blocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener(this, flag) {

                        final boolean a;
                        final _cls5 b;

                        public void a(Blocker blocker)
                        {
                        }

                        public void a(Blocker blocker, List list, boolean flag)
                        {
                            boolean flag1 = true;
                            if (list == null || list.isEmpty())
                            {
                                if (!a)
                                {
                                    SecurityCodeFragment securitycodefragment = b.a.h();
                                    securitycodefragment.a(b.a.a(securitycodefragment, CashSettingsFragment.c(b.a), false));
                                    BusProvider.a().a(new StartFragmentEvent(securitycodefragment));
                                    return;
                                } else
                                {
                                    b.a.a(b.a.b(null, CashSettingsFragment.c(b.a), flag1)).g();
                                    return;
                                }
                            }
                            String s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
                            CashSettingsFragment cashsettingsfragment = b.a;
                            CheckBox checkbox = CashSettingsFragment.c(b.a);
                            RelativeLayout relativelayout = CashSettingsFragment.d(b.a);
                            ProgressBar progressbar = CashSettingsFragment.e(b.a);
                            if (a)
                            {
                                flag1 = false;
                            }
                            CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag1, s);
                        }

                        public void b(Blocker blocker)
                        {
                        }

                        public void b(Blocker blocker, List list, boolean flag)
                        {
                            String s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
                            CashSettingsFragment cashsettingsfragment = b.a;
                            CheckBox checkbox = CashSettingsFragment.c(b.a);
                            RelativeLayout relativelayout = CashSettingsFragment.d(b.a);
                            ProgressBar progressbar = CashSettingsFragment.e(b.a);
                            boolean flag1 = a;
                            boolean flag2 = false;
                            if (!flag1)
                            {
                                flag2 = true;
                            }
                            CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag2, s);
                        }

            
            {
                b = _pcls5;
                a = flag;
                super();
            }
                    });
                    blocker.a(null);
                    return;
                }
            }

            
            {
                a = CashSettingsFragment.this;
                super();
            }
        });
        m.setOnClickListener(new android.view.View.OnClickListener() {

            final CashSettingsFragment a;

            public void onClick(View view)
            {
                if (a.a.b("SQUARE"))
                {
                    a.a.a("SQUARE").a(a.getActivity(), a.getString(0x7f0c01c2));
                    return;
                } else
                {
                    CashProviderManager.a();
                    return;
                }
            }

            
            {
                a = CashSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a00e6).setOnClickListener(new android.view.View.OnClickListener() {

            final CashSettingsFragment a;

            public void onClick(View view)
            {
                BusProvider.a().a(new StartFragmentEvent(new WebFragment("https://accounts.snapchat.com", a.getString(0x7f0c01c1), true, "/ca/snapcash")));
            }

            
            {
                a = CashSettingsFragment.this;
                super();
            }
        });
        if (UserPrefs.aa() && a.b(UserPrefs.X()))
        {
            k();
        } else
        {
            l();
        }
        n();
    }

    private void k()
    {
        String s = UserPrefs.ac();
        if (s != null)
        {
            d.setText(s);
        }
        String s1 = UserPrefs.ab();
        if (s1 != null)
        {
            c.setImageResource(CardBrand.getDrawable(CardBrand.valueOf(s1)));
        }
        c.setVisibility(0);
        f.setVisibility(0);
        e.setEnabled(false);
        h.setEnabled(true);
        i.setEnabled(true);
        i.setAlpha(1.0F);
        j.setTextColor(0xff000000);
        k.setTextColor(0xff000000);
    }

    private void l()
    {
        d.setText(0x7f0c01bb);
        c.setVisibility(8);
        f.setVisibility(8);
        e.setEnabled(true);
        h.setEnabled(false);
        i.setEnabled(false);
        i.setAlpha(0.4F);
        j.setTextColor(0xff888888);
        k.setTextColor(0xff888888);
    }

    private void n()
    {
        if (!UserPrefs.ae())
        {
            m.setEnabled(false);
            m.setAlpha(0.4F);
            return;
        } else
        {
            m.setEnabled(true);
            m.setAlpha(1.0F);
            return;
        }
    }

    protected SquareRequestTask a(com.snapchat.android.api2.cash.square.UpdateSquareSettingsTask.UpdateSuccessListener updatesuccesslistener)
    {
        return new UpdateSquareSettingsTask(true, updatesuccesslistener);
    }

    protected SquareRequestTask a(String s, com.snapchat.android.api2.cash.square.UpdateSquareSettingsTask.UpdateSuccessListener updatesuccesslistener)
    {
        return new UpdateSquareSettingsTask(false, s, updatesuccesslistener);
    }

    protected SecurityCodeFragment.SecurityCodeCallback a(SecurityCodeFragment securitycodefragment, CompoundButton compoundbutton, boolean flag)
    {
        return new SecurityCodeFragment.SecurityCodeCallback(securitycodefragment, compoundbutton, flag) {

            final SecurityCodeFragment a;
            final CompoundButton b;
            final boolean c;
            final CashSettingsFragment d;

            public void a()
            {
                CashSettingsFragment cashsettingsfragment = d;
                CheckBox checkbox = CashSettingsFragment.c(d);
                RelativeLayout relativelayout = CashSettingsFragment.d(d);
                ProgressBar progressbar = CashSettingsFragment.e(d);
                boolean flag1;
                if (!c)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag1, null);
            }

            public void a(String s)
            {
                d.a(s, d.b(a, b, c)).g();
            }

            public void b()
            {
                CashSettingsFragment cashsettingsfragment = d;
                CheckBox checkbox = CashSettingsFragment.c(d);
                RelativeLayout relativelayout = CashSettingsFragment.d(d);
                ProgressBar progressbar = CashSettingsFragment.e(d);
                boolean flag1;
                if (!c)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag1, null);
            }

            
            {
                d = CashSettingsFragment.this;
                a = securitycodefragment;
                b = compoundbutton;
                c = flag;
                super();
            }
        };
    }

    protected Blocker b()
    {
        return new SQAccessTokenBlocker();
    }

    protected com.snapchat.android.api2.cash.square.UpdateSquareSettingsTask.UpdateSuccessListener b(SecurityCodeFragment securitycodefragment, CompoundButton compoundbutton, boolean flag)
    {
        return new com.snapchat.android.api2.cash.square.UpdateSquareSettingsTask.UpdateSuccessListener(flag, securitycodefragment) {

            final boolean a;
            final SecurityCodeFragment b;
            final CashSettingsFragment c;

            public void a()
            {
                ThreadUtils.a(new Runnable(this) {

                    final _cls9 a;

                    public void run()
                    {
                        CashSettingsFragment.d(a.c).setEnabled(true);
                        CashSettingsFragment.c(a.c).setVisibility(0);
                        CashSettingsFragment.e(a.c).setVisibility(8);
                    }

            
            {
                a = _pcls9;
                super();
            }
                });
                UserPrefs.q(a);
                if (b != null)
                {
                    b.d();
                }
            }

            public void a(int i1)
            {
                String s;
                ErrorType errortype;
                s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
                errortype = ErrorType.UNKNOWN;
                i1;
                JVM INSTR lookupswitch 2: default 72
            //                           400: 157
            //                           429: 205;
                   goto _L1 _L2 _L3
_L1:
                ErrorType errortype1 = errortype;
_L5:
                CashSettingsFragment cashsettingsfragment = c;
                CheckBox checkbox = CashSettingsFragment.c(c);
                RelativeLayout relativelayout = CashSettingsFragment.d(c);
                ProgressBar progressbar = CashSettingsFragment.e(c);
                boolean flag1 = a;
                boolean flag2 = false;
                if (!flag1)
                {
                    flag2 = true;
                }
                CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag2, s);
                if (b != null)
                {
                    b.a(errortype1, i1);
                }
                return;
_L2:
                s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c010d, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
                errortype1 = ErrorType.INVALID_PASSCODE;
                continue; /* Loop/switch isn't completed */
_L3:
                s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c0210, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0165, new Object[0])).toString();
                errortype1 = ErrorType.TOO_MANY_ATTEMPTS;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                c = CashSettingsFragment.this;
                a = flag;
                b = securitycodefragment;
                super();
            }
        };
    }

    protected SQUnlinkCardBlocker d()
    {
        return new SQUnlinkCardBlocker();
    }

    protected SecurityCodeFragment h()
    {
        return new SecurityCodeFragment();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04001e, viewgroup, false);
        i();
        return x;
    }

    public void s_()
    {
        super.s_();
        ViewUtils.a(G(), x, getActivity());
    }

    public void updateCardDetailsViewOnDetailsProvided(CustomerProfileUpdatedEvent customerprofileupdatedevent)
    {
        a(((Integer) (null)));
    }
}
