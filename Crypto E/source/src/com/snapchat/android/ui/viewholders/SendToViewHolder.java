// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.viewholders;

import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ProgressBar;
import com.snapchat.android.fragments.sendto.SendToItem;
import com.snapchat.android.util.BouncyToucher;

// Referenced classes of package com.snapchat.android.ui.viewholders:
//            AddFriendViewHolder

public class SendToViewHolder extends AddFriendViewHolder
{

    private final CheckBox i;

    public SendToViewHolder(View view)
    {
        super(view);
        i = (CheckBox)view.findViewById(0x7f0a0169);
        BouncyToucher bouncytoucher = new BouncyToucher(i, 1.2F, 1000F, 25F);
        view.setOnTouchListener(bouncytoucher);
        K.setOnTouchListener(bouncytoucher);
    }

    private void w()
    {
        i.setOnCheckedChangeListener(null);
        i.setVisibility(8);
        i.setScaleX(1.0F);
        i.setScaleY(1.0F);
    }

    public void a(SendToItem sendtoitem, com.snapchat.android.fragments.sendto.SendToAdapter.SendToCheckedCallback sendtocheckedcallback)
    {
        i.setOnCheckedChangeListener(null);
        i.setChecked(sendtocheckedcallback.a(sendtoitem));
        i.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener(sendtocheckedcallback, sendtoitem) {

            final com.snapchat.android.fragments.sendto.SendToAdapter.SendToCheckedCallback a;
            final SendToItem b;
            final SendToViewHolder c;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                a.a(b, flag);
            }

            
            {
                c = SendToViewHolder.this;
                a = sendtocheckedcallback;
                b = sendtoitem;
                super();
            }
        });
    }

    public void c(int j)
    {
        i.setBackgroundResource(j);
    }

    public void t()
    {
        super.t();
        w();
        z();
        A();
    }

    public void u()
    {
        i.toggle();
    }

    public void v()
    {
        i.setVisibility(0);
    }
}
