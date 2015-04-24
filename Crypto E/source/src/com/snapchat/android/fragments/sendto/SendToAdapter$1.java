// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.view.View;
import com.snapchat.android.ui.viewholders.SendToViewHolder;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToAdapter

class a
    implements android.view.ener
{

    final SendToViewHolder a;
    final SendToAdapter b;

    public void onClick(View view)
    {
        a.u();
    }

    (SendToAdapter sendtoadapter, SendToViewHolder sendtoviewholder)
    {
        b = sendtoadapter;
        a = sendtoviewholder;
        super();
    }
}
