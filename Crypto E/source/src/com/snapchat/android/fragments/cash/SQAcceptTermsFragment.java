// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class SQAcceptTermsFragment extends SnapchatFragment
{
    public static interface AcceptTermsListener
    {

        public abstract void a();

        public abstract void b();
    }


    private AcceptTermsListener a;

    public SQAcceptTermsFragment()
    {
    }

    static AcceptTermsListener a(SQAcceptTermsFragment sqaccepttermsfragment)
    {
        return sqaccepttermsfragment.a;
    }

    static AcceptTermsListener a(SQAcceptTermsFragment sqaccepttermsfragment, AcceptTermsListener accepttermslistener)
    {
        sqaccepttermsfragment.a = accepttermslistener;
        return accepttermslistener;
    }

    private void b()
    {
        d(0x7f0a02ea).setOnClickListener(new android.view.View.OnClickListener() {

            final SQAcceptTermsFragment a;

            public void onClick(View view)
            {
                if (SQAcceptTermsFragment.a(a) != null)
                {
                    SQAcceptTermsFragment.a(a).b();
                    SQAcceptTermsFragment.a(a, null);
                }
                a.getActivity().onBackPressed();
            }

            
            {
                a = SQAcceptTermsFragment.this;
                super();
            }
        });
        Button button = (Button)d(0x7f0a02ee);
        FontUtils.a(button, I());
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final SQAcceptTermsFragment a;

            public void onClick(View view)
            {
                UserPrefs.F();
                AnalyticsEvents.L();
                a.getActivity().getSupportFragmentManager().popBackStack();
                if (SQAcceptTermsFragment.a(a) != null)
                {
                    SQAcceptTermsFragment.a(a).a();
                    SQAcceptTermsFragment.a(a, null);
                }
            }

            
            {
                a = SQAcceptTermsFragment.this;
                super();
            }
        });
    }

    public void a(AcceptTermsListener accepttermslistener)
    {
        a = accepttermslistener;
    }

    public boolean e()
    {
        AnalyticsEvents.M();
        if (a != null)
        {
            a.b();
            a = null;
        }
        return false;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040089, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        b();
        return x;
    }

    public void s_()
    {
        super.s_();
        ViewUtils.a(getActivity(), x);
    }
}
