// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings.email;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.snapchat.android.fragments.settings.SettingsFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.operation.Operation;
import com.snapchat.android.operation.identity.SettingsOperation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.settings.email:
//            EmailSettingsFragment

public class EmailVerificationSentFragment extends SnapchatFragment
{

    private View a;
    private View b;
    private TextView c;
    private TextView d;
    private UserPrefs e;
    private final Set f;
    private SnapchatServiceListener g = new SnapchatServiceListener() {

        final EmailVerificationSentFragment a;

        public void a(Operation operation)
        {
            com.snapchat.android.operation.identity.SettingsOperation.SettingsOperationsResult settingsoperationsresult;
label0:
            {
                int i = SnapchatServiceManager.a(operation);
                if (EmailVerificationSentFragment.a(a).contains(Integer.valueOf(i)) && (operation instanceof SettingsOperation))
                {
                    EmailVerificationSentFragment.a(a).remove(Integer.valueOf(i));
                    settingsoperationsresult = ((SettingsOperation)operation).g();
                    EmailVerificationSentFragment.b(a).setVisibility(8);
                    EmailVerificationSentFragment.c(a).setVisibility(0);
                    if (!settingsoperationsresult.a)
                    {
                        break label0;
                    }
                    com.snapchat.android.util.eventbus.ShowDialogEvent.Builder builder = (new com.snapchat.android.util.eventbus.ShowDialogEvent.Builder(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.b)).b(0x7f0c00e3);
                    Object aobj[] = new Object[1];
                    aobj[0] = EmailVerificationSentFragment.d(a).aL();
                    ShowDialogEvent showdialogevent = builder.a(LocalizationUtils.a(0x7f0c00e2, aobj)).a();
                    BusProvider.a().a(showdialogevent);
                }
                return;
            }
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, settingsoperationsresult.d));
        }

            
            {
                a = EmailVerificationSentFragment.this;
                super();
            }
    };

    public EmailVerificationSentFragment()
    {
        this(UserPrefs.a());
    }

    protected EmailVerificationSentFragment(UserPrefs userprefs)
    {
        f = new HashSet();
        e = userprefs;
    }

    static Set a(EmailVerificationSentFragment emailverificationsentfragment)
    {
        return emailverificationsentfragment.f;
    }

    static View b(EmailVerificationSentFragment emailverificationsentfragment)
    {
        return emailverificationsentfragment.a;
    }

    private void b()
    {
        b = d(0x7f0a02a4);
        a = d(0x7f0a02a5);
        d(0x7f0a029e).setOnClickListener(new android.view.View.OnClickListener() {

            final EmailVerificationSentFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = EmailVerificationSentFragment.this;
                super();
            }
        });
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final EmailVerificationSentFragment a;

            public void onClick(View view)
            {
                EmailVerificationSentFragment.a(a).add(Integer.valueOf(SnapchatServiceManager.a().a(a.getActivity(), "verifyEmail", EmailVerificationSentFragment.d(a).aL(), null)));
                EmailVerificationSentFragment.b(a).setVisibility(0);
                EmailVerificationSentFragment.c(a).setVisibility(8);
            }

            
            {
                a = EmailVerificationSentFragment.this;
                super();
            }
        });
        c.setOnTouchListener(new android.view.View.OnTouchListener() {

            final EmailVerificationSentFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0)
                {
                    BusProvider.a().a(new StartFragmentEvent(new EmailSettingsFragment(), com/snapchat/android/fragments/settings/email/EmailSettingsFragment.getSimpleName(), com/snapchat/android/fragments/settings/SettingsFragment.getSimpleName()));
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                a = EmailVerificationSentFragment.this;
                super();
            }
        });
    }

    static View c(EmailVerificationSentFragment emailverificationsentfragment)
    {
        return emailverificationsentfragment.b;
    }

    static UserPrefs d(EmailVerificationSentFragment emailverificationsentfragment)
    {
        return emailverificationsentfragment.e;
    }

    public boolean e()
    {
        if (c(com/snapchat/android/fragments/settings/SettingsFragment.getSimpleName()))
        {
            return true;
        } else
        {
            return super.e();
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040079, viewgroup, false);
        c = (TextView)d(0x7f0a02a2);
        c.setText(e.aL());
        d = (TextView)d(0x7f0a02a3);
        if (e.aJ())
        {
            TextView textview = d;
            Object aobj[] = new Object[1];
            UserPrefs _tmp = e;
            aobj[0] = UserPrefs.v();
            textview.setText(LocalizationUtils.a(0x7f0c00e5, aobj));
            d.setVisibility(0);
        } else
        {
            d.setVisibility(8);
        }
        ViewUtils.a(G(), x, getActivity());
        b();
        return x;
    }

    public void onPause()
    {
        super.onPause();
        SnapchatServiceManager.a().b(1012, g);
        f.clear();
    }

    public void onResume()
    {
        super.onResume();
        SnapchatServiceManager.a().a(1012, g);
    }
}
