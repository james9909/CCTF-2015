// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.model.User;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.eventbus.UserLoadedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            BlockedUsersAdapter

public class BlockedUsersFragment extends SnapchatFragment
{

    protected User a;
    private final android.support.v7.widget.RecyclerView.AdapterDataObserver b = new android.support.v7.widget.RecyclerView.AdapterDataObserver() {

        final BlockedUsersFragment a;

        public void a()
        {
            BlockedUsersFragment.a(a);
        }

        public void a(int j, int l)
        {
            BlockedUsersFragment.a(a);
        }

            
            {
                a = BlockedUsersFragment.this;
                super();
            }
    };
    private List c;
    private View d;
    private RecyclerView e;
    private android.support.v7.widget.RecyclerView.LayoutManager f;
    private BlockedUsersAdapter g;

    public BlockedUsersFragment()
    {
        c = new ArrayList();
    }

    static void a(BlockedUsersFragment blockedusersfragment)
    {
        blockedusersfragment.h();
    }

    private void b()
    {
        ViewUtils.a(G(), x, getActivity());
        BusProvider.a().a(new TitleBarEvent(true));
    }

    private void h()
    {
        if (g.a() == 0)
        {
            d.setVisibility(0);
            e.setVisibility(8);
            return;
        } else
        {
            d.setVisibility(8);
            e.setVisibility(0);
            return;
        }
    }

    private void i()
    {
        d(0x7f0a002f).setOnClickListener(new android.view.View.OnClickListener() {

            final BlockedUsersFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = BlockedUsersFragment.this;
                super();
            }
        });
    }

    private void k()
    {
        if (a == null)
        {
            a = User.c();
        }
        if (a != null)
        {
            c.clear();
            c.addAll(a.y());
            g.c();
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040006, viewgroup, false);
        i();
        b();
        d = d(0x7f0a0068);
        e = (RecyclerView)d(0x7f0a0069);
        e.setHasFixedSize(true);
        f = new LinearLayoutManager(getActivity());
        e.setLayoutManager(f);
        g = new BlockedUsersAdapter(getActivity(), c);
        e.setAdapter(g);
        return x;
    }

    public void onStart()
    {
        super.onStart();
        g.a(b);
    }

    public void onStop()
    {
        super.onStop();
        g.b(b);
    }

    public void onUserLoadedEvent(UserLoadedEvent userloadedevent)
    {
        if (userloadedevent != null && userloadedevent.a != null && a == null)
        {
            a = userloadedevent.a;
            k();
        }
    }

    protected void s_()
    {
        b();
        k();
    }
}
