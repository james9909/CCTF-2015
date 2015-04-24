// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings.email;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.snapchat.android.fragments.settings.SettingsFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.operation.Operation;
import com.snapchat.android.operation.identity.ChangeEmailOperation;
import com.snapchat.android.operation.identity.SettingsOperation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.EmojiUtils;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.PrimitiveUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.data.gson.identity.SettingOperationResponse;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.settings.email:
//            EmailPasswordValidationFragment, EmailVerificationSentFragment

public class EmailSettingsFragment extends SnapchatFragment
{

    private EditText a;
    private TextView b;
    private Button c;
    private Button d;
    private View e;
    private View f;
    private TextView g;
    private TextView h;
    private String i;
    private String j;
    private final Set k;
    private UserPrefs l;
    private SnapchatServiceListener m = new SnapchatServiceListener() {

        final EmailSettingsFragment a;

        public void a(Operation operation)
        {
            int i1 = SnapchatServiceManager.a(operation);
            if (EmailSettingsFragment.a(a).contains(Integer.valueOf(i1)))
            {
                EmailSettingsFragment.a(a).remove(Integer.valueOf(i1));
                if (operation instanceof SettingsOperation)
                {
                    EmailSettingsFragment.a(a, ((SettingsOperation)operation).g());
                } else
                if (operation instanceof ChangeEmailOperation)
                {
                    EmailSettingsFragment.a(a, (ChangeEmailOperation)operation);
                    return;
                }
            }
        }

            
            {
                a = EmailSettingsFragment.this;
                super();
            }
    };

    public EmailSettingsFragment()
    {
        this(UserPrefs.a());
    }

    protected EmailSettingsFragment(UserPrefs userprefs)
    {
        k = new HashSet();
        l = userprefs;
    }

    static Set a(EmailSettingsFragment emailsettingsfragment)
    {
        return emailsettingsfragment.k;
    }

    static void a(EmailSettingsFragment emailsettingsfragment, ChangeEmailOperation changeemailoperation)
    {
        emailsettingsfragment.a(changeemailoperation);
    }

    static void a(EmailSettingsFragment emailsettingsfragment, com.snapchat.android.operation.identity.SettingsOperation.SettingsOperationsResult settingsoperationsresult)
    {
        emailsettingsfragment.a(settingsoperationsresult);
    }

    static void a(EmailSettingsFragment emailsettingsfragment, String s)
    {
        emailsettingsfragment.a(s);
    }

    private void a(ChangeEmailOperation changeemailoperation)
    {
        if (changeemailoperation.g())
        {
            BusProvider.a().a(new StartFragmentEvent(new EmailPasswordValidationFragment(a.getText().toString())));
            return;
        }
        SettingOperationResponse settingoperationresponse = changeemailoperation.i();
        if (settingoperationresponse != null && PrimitiveUtils.a(settingoperationresponse.a()))
        {
            if (TextUtils.isEmpty(l.aL()))
            {
                i();
                b();
                return;
            } else
            {
                BusProvider.a().a(new StartFragmentEvent(new EmailVerificationSentFragment()));
                return;
            }
        } else
        {
            i();
            b();
            a(settingoperationresponse.b());
            return;
        }
    }

    private void a(com.snapchat.android.operation.identity.SettingsOperation.SettingsOperationsResult settingsoperationsresult)
    {
        e.setVisibility(8);
        if (settingsoperationsresult.a)
        {
            BusProvider.a().a(new StartFragmentEvent(new EmailVerificationSentFragment()));
            return;
        } else
        {
            i();
            b();
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, settingsoperationsresult.d));
            return;
        }
    }

    private void a(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            f.setVisibility(0);
            g.setText(s);
            g.setVisibility(0);
            return;
        } else
        {
            f.setVisibility(8);
            g.setVisibility(8);
            return;
        }
    }

    static EditText b(EmailSettingsFragment emailsettingsfragment)
    {
        return emailsettingsfragment.a;
    }

    static View c(EmailSettingsFragment emailsettingsfragment)
    {
        return emailsettingsfragment.f;
    }

    static TextView d(EmailSettingsFragment emailsettingsfragment)
    {
        return emailsettingsfragment.g;
    }

    static void e(EmailSettingsFragment emailsettingsfragment)
    {
        emailsettingsfragment.i();
    }

    static Button f(EmailSettingsFragment emailsettingsfragment)
    {
        return emailsettingsfragment.c;
    }

    static View g(EmailSettingsFragment emailsettingsfragment)
    {
        return emailsettingsfragment.e;
    }

    static Button h(EmailSettingsFragment emailsettingsfragment)
    {
        return emailsettingsfragment.d;
    }

    private void h()
    {
        i = LocalizationUtils.a(0x7f0c00e7, new Object[0]);
        j = LocalizationUtils.a(0x7f0c00ea, new Object[0]);
        h = (TextView)d(0x7f0a01c0);
        TextView textview = h;
        Resources resources = getResources();
        Object aobj[] = new Object[1];
        aobj[0] = EmojiUtils.a(EmojiUtils.g);
        textview.setText(resources.getString(0x7f0c00e9, aobj));
        d(0x7f0a01b9).setOnClickListener(new android.view.View.OnClickListener() {

            final EmailSettingsFragment a;

            public void onClick(View view)
            {
                ViewUtils.a(a.getActivity(), a.getView());
                a.getActivity().onBackPressed();
            }

            
            {
                a = EmailSettingsFragment.this;
                super();
            }
        });
        b = (TextView)d(0x7f0a01bc);
        d = (Button)d(0x7f0a01c3);
        FontUtils.a(d, I());
        e = d(0x7f0a01c4);
        c = (Button)d(0x7f0a01c2);
        FontUtils.a(c, I());
        f = d(0x7f0a01be);
        g = (TextView)d(0x7f0a01bf);
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final EmailSettingsFragment a;

            public void onClick(View view)
            {
                EmailSettingsFragment.b(a).setText("");
                EmailSettingsFragment.c(a).setVisibility(8);
                EmailSettingsFragment.d(a).setVisibility(8);
            }

            
            {
                a = EmailSettingsFragment.this;
                super();
            }
        });
        a = (EditText)d(0x7f0a01bd);
        if (TextUtils.isEmpty(l.aL())) goto _L2; else goto _L1
_L1:
        a.setText(l.aL());
_L4:
        a.addTextChangedListener(new TextWatcher() {

            final EmailSettingsFragment a;

            public void afterTextChanged(Editable editable)
            {
                EmailSettingsFragment.e(a);
                a.b();
                EmailSettingsFragment.a(a, null);
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            
            {
                a = EmailSettingsFragment.this;
                super();
            }
        });
        c.setOnClickListener(new android.view.View.OnClickListener() {

            final EmailSettingsFragment a;

            public void onClick(View view)
            {
                EmailSettingsFragment.a(a).add(Integer.valueOf(SnapchatServiceManager.a().a(a.getActivity(), "verifyEmail", null, null)));
                EmailSettingsFragment.f(a).setText("");
                EmailSettingsFragment.f(a).setClickable(false);
                EmailSettingsFragment.g(a).setVisibility(0);
            }

            
            {
                a = EmailSettingsFragment.this;
                super();
            }
        });
        d.setOnClickListener(new android.view.View.OnClickListener() {

            final EmailSettingsFragment a;

            public void onClick(View view)
            {
                EmailSettingsFragment.a(a).add(Integer.valueOf(SnapchatServiceManager.a().c(a.getActivity(), EmailSettingsFragment.b(a).getText().toString())));
                EmailSettingsFragment.h(a).setText("");
                EmailSettingsFragment.h(a).setClickable(false);
                EmailSettingsFragment.g(a).setVisibility(0);
            }

            
            {
                a = EmailSettingsFragment.this;
                super();
            }
        });
        i();
        b();
        return;
_L2:
        l;
        if (!TextUtils.isEmpty(UserPrefs.v()))
        {
            EditText edittext = a;
            l;
            edittext.setText(UserPrefs.v());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void i()
    {
        if (!TextUtils.isEmpty(a.getText()))
        {
            if (TextUtils.equals(a.getText(), UserPrefs.v()) && l.aJ())
            {
                h.setVisibility(0);
            } else
            {
                h.setVisibility(8);
            }
            if (k())
            {
                b.setText(j);
                return;
            } else
            {
                b.setText(i);
                return;
            }
        } else
        {
            h.setVisibility(8);
            b.setText(i);
            return;
        }
    }

    private boolean k()
    {
label0:
        {
            if (!TextUtils.equals(a.getText(), l.aL()))
            {
                if (!TextUtils.isEmpty(l.aL()))
                {
                    break label0;
                }
                Editable editable = a.getText();
                UserPrefs _tmp = l;
                if (!TextUtils.equals(editable, UserPrefs.v()) || l.aJ())
                {
                    break label0;
                }
            }
            return true;
        }
        return false;
    }

    protected void b()
    {
        e.setVisibility(8);
        if (TextUtils.isEmpty(a.getText()))
        {
            break MISSING_BLOCK_LABEL_183;
        }
        if (!TextUtils.isEmpty(l.aL())) goto _L2; else goto _L1
_L1:
        l;
        if (!TextUtils.equals(UserPrefs.v(), a.getText()) || !l.aJ()) goto _L2; else goto _L3
_L3:
        c.setVisibility(8);
        d.setVisibility(8);
_L5:
        return;
_L2:
        if (k())
        {
            c.setVisibility(0);
            c.setText(0x7f0c0221);
            c.setClickable(true);
            d.setVisibility(8);
        } else
        {
            c.setVisibility(8);
            d.setVisibility(0);
            d.setText(0x7f0c0179);
            d.setClickable(true);
        }
        if (!a.requestFocus()) goto _L5; else goto _L4
_L4:
        ViewUtils.e(getActivity());
        return;
        c.setVisibility(8);
        d.setVisibility(8);
        return;
    }

    public void d_()
    {
        super.d_();
        ViewUtils.a(getActivity(), G().getDecorView().getRootView());
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
        x = layoutinflater.inflate(0x7f040048, viewgroup, false);
        h();
        return x;
    }

    public void onPause()
    {
        super.onPause();
        SnapchatServiceManager.a().b(1012, m);
        SnapchatServiceManager.a().b(1015, m);
        k.clear();
    }

    public void onResume()
    {
        super.onResume();
        ViewUtils.a(x, G());
        SnapchatServiceManager.a().a(1012, m);
        SnapchatServiceManager.a().a(1015, m);
    }

    public void s_()
    {
        super.s_();
        b();
        Intent intent = H();
        if (!TextUtils.isEmpty(intent.getStringExtra("change_email_key")))
        {
            a.setText(intent.getStringExtra("change_email_key"));
            intent.removeExtra("change_email_key");
            a(intent.getStringExtra("change_email_message_key"));
            intent.removeExtra("change_email_message_key");
        }
    }
}
