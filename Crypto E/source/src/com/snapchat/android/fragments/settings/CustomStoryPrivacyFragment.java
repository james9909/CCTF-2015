// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Filter;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.api.SettingsTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            CustomStoryPrivacyAdapter

public class CustomStoryPrivacyFragment extends SnapchatFragment
    implements CustomStoryPrivacyAdapter.FriendCheckedCallback
{

    private final HashSet a = new HashSet();
    private CustomStoryPrivacyAdapter b;
    private View c;
    private View d;
    private EditText e;
    private View f;
    private boolean g;
    private InputMethodManager h;

    public CustomStoryPrivacyFragment()
    {
        g = false;
    }

    static boolean a(CustomStoryPrivacyFragment customstoryprivacyfragment)
    {
        return customstoryprivacyfragment.g;
    }

    static InputMethodManager b(CustomStoryPrivacyFragment customstoryprivacyfragment)
    {
        return customstoryprivacyfragment.h;
    }

    private void b()
    {
        StickyListHeadersListView stickylistheaderslistview = (StickyListHeadersListView)d(0x7f0a0168);
        stickylistheaderslistview.setAdapter(b);
        stickylistheaderslistview.setOnTouchListener(new android.view.View.OnTouchListener() {

            final CustomStoryPrivacyFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (CustomStoryPrivacyFragment.a(a))
                {
                    CustomStoryPrivacyFragment.b(a).hideSoftInputFromWindow(a.getView().getWindowToken(), 0);
                }
                return false;
            }

            
            {
                a = CustomStoryPrivacyFragment.this;
                super();
            }
        });
        stickylistheaderslistview.setFastScrollAlwaysVisible(true);
        stickylistheaderslistview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final CustomStoryPrivacyFragment a;

            public void onItemClick(AdapterView adapterview, View view, int j, long l)
            {
                CheckBox checkbox = (CheckBox)view.findViewById(0x7f0a0169);
                if (checkbox == null)
                {
                    return;
                }
                boolean flag;
                if (!checkbox.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox.setChecked(flag);
            }

            
            {
                a = CustomStoryPrivacyFragment.this;
                super();
            }
        });
        stickylistheaderslistview.setTextFilterEnabled(true);
        d(0x7f0a0164).setOnClickListener(new android.view.View.OnClickListener() {

            final CustomStoryPrivacyFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = CustomStoryPrivacyFragment.this;
                super();
            }
        });
        c = d(0x7f0a0166);
        c.setOnClickListener(new android.view.View.OnClickListener() {

            final CustomStoryPrivacyFragment a;

            public void onClick(View view)
            {
                CustomStoryPrivacyFragment.c(a);
            }

            
            {
                a = CustomStoryPrivacyFragment.this;
                super();
            }
        });
        d = d(0x7f0a0057);
        f = d(0x7f0a0034);
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final CustomStoryPrivacyFragment a;

            public void onClick(View view)
            {
                CustomStoryPrivacyFragment.d(a).setText("");
            }

            
            {
                a = CustomStoryPrivacyFragment.this;
                super();
            }
        });
        e = (EditText)d(0x7f0a0165);
        e.addTextChangedListener(new TextWatcher(stickylistheaderslistview) {

            final StickyListHeadersListView a;
            final CustomStoryPrivacyFragment b;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int j, int k, int l)
            {
            }

            public void onTextChanged(CharSequence charsequence, int j, int k, int l)
            {
                CustomStoryPrivacyFragment.e(b).getFilter().filter(charsequence.toString());
                if (charsequence.toString().equals("") || charsequence.toString() == null)
                {
                    a.setFastScrollAlwaysVisible(true);
                    a.setFastScrollEnabled(true);
                    CustomStoryPrivacyFragment.f(b).setVisibility(4);
                    return;
                } else
                {
                    a.setFastScrollAlwaysVisible(false);
                    a.setFastScrollEnabled(false);
                    CustomStoryPrivacyFragment.f(b).setVisibility(0);
                    return;
                }
            }

            
            {
                b = CustomStoryPrivacyFragment.this;
                a = stickylistheaderslistview;
                super();
            }
        });
    }

    static void c(CustomStoryPrivacyFragment customstoryprivacyfragment)
    {
        customstoryprivacyfragment.i();
    }

    static EditText d(CustomStoryPrivacyFragment customstoryprivacyfragment)
    {
        return customstoryprivacyfragment.e;
    }

    static CustomStoryPrivacyAdapter e(CustomStoryPrivacyFragment customstoryprivacyfragment)
    {
        return customstoryprivacyfragment.b;
    }

    static View f(CustomStoryPrivacyFragment customstoryprivacyfragment)
    {
        return customstoryprivacyfragment.f;
    }

    private void h()
    {
        c.setVisibility(0);
        d.setVisibility(0);
        e.setText("");
        e.clearFocus();
        h.hideSoftInputFromWindow(getView().getWindowToken(), 0);
        e.setVisibility(4);
        g = false;
    }

    private void i()
    {
        c.setVisibility(4);
        d.setVisibility(4);
        e.setVisibility(0);
        e.requestFocus();
        h.showSoftInput(e, 0);
        g = true;
    }

    public boolean a(Friend friend)
    {
        return a.contains(friend.a());
    }

    public void b(Friend friend)
    {
        a.add(friend.a());
        b.notifyDataSetChanged();
    }

    public void c(Friend friend)
    {
        a.remove(friend.a());
        b.notifyDataSetChanged();
    }

    public boolean e()
    {
        if (g)
        {
            h();
            return true;
        } else
        {
            return false;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        android.view.WindowManager.LayoutParams layoutparams = G().getAttributes();
        layoutparams.flags = 0x200 & layoutparams.flags;
        G().setAttributes(layoutparams);
        x = layoutinflater.inflate(0x7f04003a, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        h = (InputMethodManager)getActivity().getSystemService("input_method");
        a.addAll(User.c().A());
        b = new CustomStoryPrivacyAdapter(getActivity(), 0x7f04003b, User.c().j(), new com.snapchat.android.model.Friend.FriendListSectionizer(), this);
        b();
        return x;
    }

    public void onPause()
    {
        super.onPause();
        ArrayList arraylist = new ArrayList(a.size());
        arraylist.addAll(a);
        User.c().g(arraylist);
        (new SettingsTask("updateStoryPrivacy", new String[] {
            "CUSTOM"
        })).executeOnExecutor(ScExecutors.b, new String[0]);
    }
}
