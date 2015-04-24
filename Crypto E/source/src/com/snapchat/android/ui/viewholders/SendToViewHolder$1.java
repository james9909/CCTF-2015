// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.viewholders;

import android.widget.CompoundButton;
import com.snapchat.android.fragments.sendto.SendToItem;

// Referenced classes of package com.snapchat.android.ui.viewholders:
//            SendToViewHolder

class b
    implements android.widget.eckedChangeListener
{

    final com.snapchat.android.fragments.sendto.oCheckedCallback a;
    final SendToItem b;
    final SendToViewHolder c;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        a.a(b, flag);
    }

    dToCheckedCallback(SendToViewHolder sendtoviewholder, com.snapchat.android.fragments.sendto.oCheckedCallback ocheckedcallback, SendToItem sendtoitem)
    {
        c = sendtoviewholder;
        a = ocheckedcallback;
        b = sendtoitem;
        super();
    }
}
