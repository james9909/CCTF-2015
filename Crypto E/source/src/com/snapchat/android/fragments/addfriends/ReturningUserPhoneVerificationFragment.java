// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.snapchat.android.fragments.verification.PhoneVerificationFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.VerificationNeededResponse;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.VerificationCodeReceivedEvent;

public class ReturningUserPhoneVerificationFragment extends PhoneVerificationFragment
{
    public static interface ReturningUserPhoneVerificationFragmentListener
    {

        public abstract void o();
    }


    private ReturningUserPhoneVerificationFragmentListener j;

    public ReturningUserPhoneVerificationFragment()
    {
    }

    private void u()
    {
        b.requestFocus();
    }

    public void a(ReturningUserPhoneVerificationFragmentListener returninguserphoneverificationfragmentlistener)
    {
        j = returninguserphoneverificationfragmentlistener;
    }

    protected void a(VerificationNeededResponse verificationneededresponse)
    {
    }

    protected void b()
    {
        if (j != null)
        {
            j.o();
        }
    }

    protected void d_()
    {
        super.d_();
        ViewUtils.a(getActivity(), x);
    }

    public boolean e()
    {
        return false;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        f.setBackgroundResource(0x7f020118);
        return view;
    }

    public void onResume()
    {
        super.onResume();
        b.clearFocus();
        if (UserPrefs.g())
        {
            b();
        }
    }

    public void onVerificationCodeReceivedEvent(VerificationCodeReceivedEvent verificationcodereceivedevent)
    {
        super.onVerificationCodeReceivedEvent(verificationcodereceivedevent);
    }

    protected void s_()
    {
        super.s_();
        if (TextUtils.isEmpty(b.getText()))
        {
            u();
        }
    }
}
