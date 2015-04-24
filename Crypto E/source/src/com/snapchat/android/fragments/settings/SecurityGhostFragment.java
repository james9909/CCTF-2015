// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment

public class SecurityGhostFragment extends SnapchatFragment
{

    private final String a;

    public SecurityGhostFragment(String s)
    {
        a = s;
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
        x = layoutinflater.inflate(0x7f040074, viewgroup, false);
        ((TextView)d(0x7f0a026d)).setText(a);
        d(0x7f0a026a).setOnClickListener(new android.view.View.OnClickListener() {

            final SecurityGhostFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = SecurityGhostFragment.this;
                super();
            }
        });
        ViewUtils.a(G(), x, getActivity());
        return x;
    }
}
