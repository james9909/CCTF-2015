// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.captcha;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api.GetCaptchaTask;
import com.snapchat.android.api.SolveCaptchaTask;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.signup.NewUserContactBookFragment;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.dialog.ConfirmTerminateSignupDialog;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.captcha:
//            CaptchaAdapter

public class CaptchaFragment extends SnapchatFragment
    implements com.snapchat.android.api.GetCaptchaTask.GetCaptchaInterface, com.snapchat.android.api.SolveCaptchaTask.SolveCaptchaInterface, CaptchaAdapter.CaptchaAdapterInterface
{

    private String a;
    private int b;
    private Button c;
    private ProgressBar d;
    private int e;
    private GridView f;
    private RelativeLayout g;

    public CaptchaFragment()
    {
    }

    public CaptchaFragment(String s)
    {
        a = s;
    }

    static GridView a(CaptchaFragment captchafragment)
    {
        return captchafragment.f;
    }

    private void a(User user)
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
        editor.putBoolean(SharedPreferenceKey.x.a(), true);
        editor.apply();
        UserPrefs.a(false);
        FragmentActivity fragmentactivity = getActivity();
        startActivity(new Intent(fragmentactivity, com/snapchat/android/LandingPageActivity));
        fragmentactivity.finish();
    }

    static Button b(CaptchaFragment captchafragment)
    {
        return captchafragment.c;
    }

    static ProgressBar c(CaptchaFragment captchafragment)
    {
        return captchafragment.d;
    }

    private void h()
    {
        try
        {
            getActivity().getSupportFragmentManager().beginTransaction().replace(e, new NewUserContactBookFragment()).commit();
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.e("CaptchaFragment", "Attempted to go to NewUserAddFriendsFragment", new Object[0]);
        }
    }

    public void a()
    {
        TextView textview = (TextView)d(0x7f0a009b);
        textview.setText(0x7f0c0040);
        ProgressBar progressbar = (ProgressBar)d(0x7f0a009c);
        progressbar.setVisibility(4);
        d.setVisibility(4);
        g.setVisibility(8);
        Button button = (Button)d(0x7f0a009d);
        button.setVisibility(0);
        button.setOnClickListener(new android.view.View.OnClickListener(button, textview, progressbar) {

            final Button a;
            final TextView b;
            final ProgressBar c;
            final CaptchaFragment d;

            public void onClick(View view)
            {
                if (d.getActivity() == null)
                {
                    return;
                } else
                {
                    a.setVisibility(8);
                    b.setText(0x7f0c0041);
                    c.setVisibility(0);
                    (new GetCaptchaTask(d)).executeOnExecutor(ScExecutors.b, new String[0]);
                    return;
                }
            }

            
            {
                d = CaptchaFragment.this;
                a = button;
                b = textview;
                c = progressbar;
                super();
            }
        });
    }

    public void a(int i)
    {
        if (i > 0)
        {
            g.setVisibility(0);
            c.setText(0x7f0c0179);
            c.setClickable(true);
            return;
        } else
        {
            g.setVisibility(8);
            return;
        }
    }

    public void a(String s, List list)
    {
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity == null)
        {
            return;
        } else
        {
            CaptchaAdapter captchaadapter = new CaptchaAdapter(fragmentactivity, list, this) {

                final CaptchaFragment a;

                public boolean areAllItemsEnabled()
                {
                    return CaptchaFragment.a(a).isClickable();
                }

                public boolean isEnabled(int i)
                {
                    return CaptchaFragment.a(a).isClickable();
                }

            
            {
                a = CaptchaFragment.this;
                super(context, list, captchaadapterinterface);
            }
            };
            f.setAdapter(captchaadapter);
            f.setOnItemClickListener(captchaadapter);
            f.setVisibility(0);
            f.setClickable(true);
            f.setOnTouchListener(new android.view.View.OnTouchListener() {

                final CaptchaFragment a;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    return motionevent.getAction() == 2;
                }

            
            {
                a = CaptchaFragment.this;
                super();
            }
            });
            c.setOnClickListener(new android.view.View.OnClickListener(captchaadapter, s) {

                final CaptchaAdapter a;
                final String b;
                final CaptchaFragment c;

                public void onClick(View view)
                {
                    if (c.getActivity() == null)
                    {
                        return;
                    } else
                    {
                        List list1 = a.a();
                        (new SolveCaptchaTask(b, list1, c)).executeOnExecutor(ScExecutors.b, new String[0]);
                        CaptchaFragment.a(c).setClickable(false);
                        CaptchaFragment.b(c).setText("");
                        CaptchaFragment.b(c).setClickable(false);
                        CaptchaFragment.c(c).setVisibility(0);
                        return;
                    }
                }

            
            {
                c = CaptchaFragment.this;
                a = captchaadapter;
                b = s;
                super();
            }
            });
            d(0x7f0a009b).setVisibility(4);
            d(0x7f0a009c).setVisibility(4);
            return;
        }
    }

    public void b()
    {
        UserPrefs.a(false);
        AnalyticsEvents.a(Integer.toString(b));
        AnalyticsEvents.a(true);
        User user = User.a(getActivity());
        if (UserPrefs.g())
        {
            h();
            return;
        } else
        {
            a(user);
            return;
        }
    }

    public void c()
    {
        if (getActivity() == null)
        {
            return;
        } else
        {
            ((TextView)d(0x7f0a009b)).setText(0x7f0c0041);
            d(0x7f0a009b).setVisibility(0);
            d(0x7f0a009c).setVisibility(0);
            ((TextView)d(0x7f0a0097)).setText(0x7f0c0042);
            ((TextView)d(0x7f0a0097)).setTextColor(0xffff0000);
            f.setVisibility(4);
            (new GetCaptchaTask(this)).executeOnExecutor(ScExecutors.b, new String[0]);
            a(0);
            g.setVisibility(8);
            d.setVisibility(4);
            b = 1 + b;
            AnalyticsEvents.a(false);
            return;
        }
    }

    public void d()
    {
        c();
    }

    public boolean e()
    {
        (new ConfirmTerminateSignupDialog(getActivity(), e)).show();
        return true;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040010, viewgroup, false);
        ViewUtils.a(getActivity(), x);
        (new GetCaptchaTask(this)).executeOnExecutor(ScExecutors.b, new String[0]);
        ((TextView)d(0x7f0a0098)).setText(a);
        c = (Button)d(0x7f0a009f);
        FontUtils.a(c, getActivity().getAssets());
        d = (ProgressBar)d(0x7f0a00a0);
        g = (RelativeLayout)d(0x7f0a009e);
        f = (GridView)d(0x7f0a009a);
        f.setVerticalScrollBarEnabled(false);
        e = viewgroup.getId();
        return x;
    }
}
