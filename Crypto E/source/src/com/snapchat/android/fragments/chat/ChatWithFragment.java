// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Filter;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatWithAdapter, ChatFragment

public class ChatWithFragment extends SnapchatFragment
    implements ChatWithAdapter.ChatWithSearchInterface
{

    protected final android.widget.AdapterView.OnItemClickListener a;
    protected final android.widget.AbsListView.OnScrollListener b;
    protected final TextWatcher c;
    private StickyListHeadersListView d;
    private ChatWithAdapter e;
    private EditText f;
    private View g;
    private View h;
    private final Provider i;

    public ChatWithFragment()
    {
        this(User.UNSAFE_USER_PROVIDER);
    }

    protected ChatWithFragment(Provider provider)
    {
        a = new android.widget.AdapterView.OnItemClickListener() {

            final ChatWithFragment a;

            public void onItemClick(AdapterView adapterview, View view, int j, long l)
            {
                ChatFragment.a(((ChatWithAdapter.FriendViewHolder)view.getTag()).b.a());
                ((LandingPageActivity)a.getActivity()).a(0, false);
                a.getActivity().onBackPressed();
            }

            
            {
                a = ChatWithFragment.this;
                super();
            }
        };
        b = new android.widget.AbsListView.OnScrollListener() {

            final ChatWithFragment a;

            public void onScroll(AbsListView abslistview, int j, int k, int l)
            {
            }

            public void onScrollStateChanged(AbsListView abslistview, int j)
            {
                if (j != 0)
                {
                    ViewUtils.a(a.getActivity(), ChatWithFragment.b(a));
                }
            }

            
            {
                a = ChatWithFragment.this;
                super();
            }
        };
        c = new TextWatcher() {

            final ChatWithFragment a;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int j, int k, int l)
            {
            }

            public void onTextChanged(CharSequence charsequence, int j, int k, int l)
            {
                ChatWithFragment.c(a).getFilter().filter(charsequence.toString());
                if (TextUtils.isEmpty(charsequence))
                {
                    ChatWithFragment.d(a).setFastScrollAlwaysVisible(true);
                    ChatWithFragment.d(a).setFastScrollEnabled(true);
                    ChatWithFragment.e(a).setVisibility(4);
                    return;
                } else
                {
                    ChatWithFragment.d(a).setFastScrollAlwaysVisible(false);
                    ChatWithFragment.d(a).setFastScrollEnabled(false);
                    ChatWithFragment.e(a).setVisibility(0);
                    return;
                }
            }

            
            {
                a = ChatWithFragment.this;
                super();
            }
        };
        i = provider;
    }

    static EditText a(ChatWithFragment chatwithfragment)
    {
        return chatwithfragment.f;
    }

    static View b(ChatWithFragment chatwithfragment)
    {
        return chatwithfragment.x;
    }

    private void b()
    {
        User user = (User)i.get();
        Object obj;
        if (user != null)
        {
            obj = user.k();
        } else
        {
            obj = new ArrayList();
        }
        e = new ChatWithAdapter(getActivity(), ((List) (obj)), new com.snapchat.android.model.Friend.FriendListSectionizer(), this);
        d = (StickyListHeadersListView)d(0x7f0a0125);
        d.setAdapter(e);
        d.setFastScrollAlwaysVisible(true);
        d.setTextFilterEnabled(true);
        d.setOnItemClickListener(a);
        d.setOnScrollListener(b);
        f = (EditText)d(0x7f0a0124);
        f.addTextChangedListener(c);
        g = d(0x7f0a0034);
        g.setOnClickListener(new android.view.View.OnClickListener() {

            final ChatWithFragment a;

            public void onClick(View view)
            {
                ChatWithFragment.a(a).setText("");
            }

            
            {
                a = ChatWithFragment.this;
                super();
            }
        });
        h = d(0x7f0a0126);
        d(0x7f0a0122).setOnClickListener(new android.view.View.OnClickListener() {

            final ChatWithFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = ChatWithFragment.this;
                super();
            }
        });
    }

    static ChatWithAdapter c(ChatWithFragment chatwithfragment)
    {
        return chatwithfragment.e;
    }

    static StickyListHeadersListView d(ChatWithFragment chatwithfragment)
    {
        return chatwithfragment.d;
    }

    static View e(ChatWithFragment chatwithfragment)
    {
        return chatwithfragment.g;
    }

    public void a(List list)
    {
        if (list == null || list.isEmpty())
        {
            h.setVisibility(0);
            return;
        } else
        {
            h.setVisibility(8);
            return;
        }
    }

    public boolean e()
    {
        ViewUtils.a(getActivity(), x);
        return false;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04002b, viewgroup, false);
        b();
        return x;
    }

    public void s_()
    {
        super.s_();
        ViewUtils.a(false, G());
        f.requestFocus();
        ViewUtils.f(getActivity());
    }
}
