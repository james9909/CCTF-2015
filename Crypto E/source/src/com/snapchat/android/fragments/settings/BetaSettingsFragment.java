// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class BetaSettingsFragment extends SnapchatFragment
{

    public BetaSettingsFragment()
    {
    }

    private void b()
    {
        d(0x7f0a0056).setOnClickListener(new android.view.View.OnClickListener() {

            final BetaSettingsFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = BetaSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a0066).setOnClickListener(new android.view.View.OnClickListener() {

            final BetaSettingsFragment a;

            public void onClick(View view)
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://plus.google.com/u/0/communities/101602008277453798645"));
                a.startActivity(intent);
            }

            
            {
                a = BetaSettingsFragment.this;
                super();
            }
        });
        d(0x7f0a0067).setOnClickListener(new android.view.View.OnClickListener() {

            final BetaSettingsFragment a;

            public void onClick(View view)
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/apps/testing/com.snapchat.android"));
                a.startActivity(intent);
            }

            
            {
                a = BetaSettingsFragment.this;
                super();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040005, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        b();
        return x;
    }
}
