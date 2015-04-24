// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.snapchat;

import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.CashUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.squareup.otto.Bus;
import java.util.List;

public class SendConfirmationBlocker extends Blocker
{

    public SendConfirmationBlocker()
    {
    }

    static void a(SendConfirmationBlocker sendconfirmationblocker)
    {
        sendconfirmationblocker.a();
    }

    public void a(CashTransaction cashtransaction)
    {
        final boolean isFromRain = cashtransaction.w();
        if (!isFromRain && !UserPrefs.ag() || isFromRain && !UserPrefs.ah())
        {
            a(null, true);
            return;
        } else
        {
            Bus bus = BusProvider.a();
            com.snapchat.android.util.eventbus.ShowDialogEvent.Builder builder = new com.snapchat.android.util.eventbus.ShowDialogEvent.Builder(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.d);
            Object aobj[] = new Object[1];
            aobj[0] = CashUtils.a(cashtransaction.g(), cashtransaction.k());
            bus.a(builder.a(LocalizationUtils.a(0x7f0c0199, aobj)).b(0x7f0c019a).a(new com.snapchat.android.util.AlertDialogUtils.YesNoAlertListener() {

                final SendConfirmationBlocker this$0;
                final boolean val$isFromRain;

                public void a(com.snapchat.android.util.AlertDialogUtils.YesNoOption yesnooption)
                {
                    static class _cls2
                    {

                        static final int $SwitchMap$com$snapchat$android$util$AlertDialogUtils$YesNoOption[];

                        static 
                        {
                            $SwitchMap$com$snapchat$android$util$AlertDialogUtils$YesNoOption = new int[com.snapchat.android.util.AlertDialogUtils.YesNoOption.values().length];
                            try
                            {
                                $SwitchMap$com$snapchat$android$util$AlertDialogUtils$YesNoOption[com.snapchat.android.util.AlertDialogUtils.YesNoOption.c.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror) { }
                            try
                            {
                                $SwitchMap$com$snapchat$android$util$AlertDialogUtils$YesNoOption[com.snapchat.android.util.AlertDialogUtils.YesNoOption.a.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror1) { }
                            try
                            {
                                $SwitchMap$com$snapchat$android$util$AlertDialogUtils$YesNoOption[com.snapchat.android.util.AlertDialogUtils.YesNoOption.b.ordinal()] = 3;
                            }
                            catch (NoSuchFieldError nosuchfielderror2)
                            {
                                return;
                            }
                        }
                    }

                    switch (_cls2..SwitchMap.com.snapchat.android.util.AlertDialogUtils.YesNoOption[yesnooption.ordinal()])
                    {
                    default:
                        return;

                    case 1: // '\001'
                        if (isFromRain)
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

            
            {
                this$0 = SendConfirmationBlocker.this;
                isFromRain = flag;
                super();
            }
            }).a());
            return;
        }
    }

    protected void a(List list, boolean flag)
    {
        super.a(list, flag);
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SEND_CONFIRMATION_BLOCKER;
    }
}
