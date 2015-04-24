// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

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
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class BasePasswordValidationFragment extends SnapchatFragment
{

    public EditText a;
    public Button b;
    public View c;
    protected View d;
    protected TextView e;

    public BasePasswordValidationFragment()
    {
    }

    private void h()
    {
        d(0x7f0a02a6).setOnClickListener(new android.view.View.OnClickListener() {

            final BasePasswordValidationFragment a;

            public void onClick(View view)
            {
                ViewUtils.a(a.getActivity(), a.getView());
                a.getActivity().onBackPressed();
            }

            
            {
                a = BasePasswordValidationFragment.this;
                super();
            }
        });
        b = (Button)d(0x7f0a02ad);
        FontUtils.a(b, I());
        c = d(0x7f0a02ae);
        d = d(0x7f0a02ab);
        e = (TextView)d(0x7f0a02ac);
        d.setOnClickListener(new android.view.View.OnClickListener() {

            final BasePasswordValidationFragment a;

            public void onClick(View view)
            {
                a.a.setText("");
                a.a(null);
            }

            
            {
                a = BasePasswordValidationFragment.this;
                super();
            }
        });
        a = (EditText)d(0x7f0a02aa);
        a.addTextChangedListener(new TextWatcher() {

            final BasePasswordValidationFragment a;

            public void afterTextChanged(Editable editable)
            {
                a.b();
                a.a(null);
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                a = BasePasswordValidationFragment.this;
                super();
            }
        });
    }

    public void a(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            d.setVisibility(0);
            e.setText(s);
            e.setVisibility(0);
            return;
        } else
        {
            d.setVisibility(8);
            e.setVisibility(8);
            return;
        }
    }

    protected void b()
    {
        if (!TextUtils.isEmpty(a.getText()))
        {
            b.setText(0x7f0c0179);
            b.setClickable(true);
            b.setVisibility(0);
            return;
        } else
        {
            b.setVisibility(8);
            return;
        }
    }

    public void d_()
    {
        super.d_();
        ViewUtils.a(getActivity(), G().getDecorView().getRootView());
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04007b, viewgroup, false);
        h();
        return x;
    }

    public void onResume()
    {
        super.onResume();
        ViewUtils.a(x, G());
    }

    public void s_()
    {
        super.s_();
        if (a.requestFocus())
        {
            ViewUtils.e(getActivity());
        }
    }
}
