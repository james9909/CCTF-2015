// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.snapchat;

import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.snapchat:
//            SendConfirmationBlocker

class val.isFromRain
    implements com.snapchat.android.util.tListener
{

    final SendConfirmationBlocker this$0;
    final boolean val$isFromRain;

    public void a(com.snapchat.android.util.on on)
    {
        switch (.SwitchMap.com.snapchat.android.util.AlertDialogUtils.YesNoOption[on.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            if (val$isFromRain)
            {
                UserPrefs.s(false);
            } else
            {
                UserPrefs.r(false);
            }
            // fall through

        case 2: // '\002'
            SendConfirmationBlocker.this.a(null, true);
            return;

        case 3: // '\003'
            SendConfirmationBlocker.a(SendConfirmationBlocker.this);
            return;
        }
    }

    ()
    {
        this$0 = final_sendconfirmationblocker;
        val$isFromRain = Z.this;
        super();
    }
}
