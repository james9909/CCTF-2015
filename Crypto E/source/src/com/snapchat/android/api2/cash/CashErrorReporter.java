// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import android.content.Context;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;

public class CashErrorReporter
{

    public CashErrorReporter()
    {
    }

    public void a(CashTransaction cashtransaction, int i, int j)
    {
        BusProvider.a().a((new com.snapchat.android.util.eventbus.ShowDialogEvent.Builder(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.b)).b(i).a(j).a());
    }

    public transient void a(CashTransaction cashtransaction, int i, Object aobj[])
    {
        AndroidNotificationManager.a().a(SnapchatApplication.e(), false, i, aobj);
    }

    public void a(CashTransaction cashtransaction, ScCashResponsePayload.Status status)
    {
        AndroidNotificationManager androidnotificationmanager = AndroidNotificationManager.a();
        SnapchatApplication snapchatapplication = SnapchatApplication.e();
        static class _cls1
        {

            static final int $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[];

            static 
            {
                $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status = new int[ScCashResponsePayload.Status.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[ScCashResponsePayload.Status.NO_VERIFIED_PHONE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[ScCashResponsePayload.Status.NON_US_USER.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[ScCashResponsePayload.Status.INVALID_AMOUNT.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[ScCashResponsePayload.Status.NO_NETWORK.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[ScCashResponsePayload.Status.LOCKED_ACCOUNT.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[ScCashResponsePayload.Status.UNKNOWN.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6)
                {
                    return;
                }
            }
        }

        switch (_cls1..SwitchMap.com.snapchat.android.api2.cash.ScCashResponsePayload.Status[status.ordinal()])
        {
        default:
            androidnotificationmanager.a(snapchatapplication, false, 0x7f0c014f, new Object[0]);
            return;

        case 1: // '\001'
            BusProvider.a().a((new com.snapchat.android.util.eventbus.ShowDialogEvent.Builder(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.b)).b(0x7f0c0070).a(0x7f0c006f).a());
            return;

        case 2: // '\002'
            BusProvider.a().a((new com.snapchat.android.util.eventbus.ShowDialogEvent.Builder(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.b)).b(0x7f0c021d).a(0x7f0c021c).a());
            return;

        case 3: // '\003'
            androidnotificationmanager.a(snapchatapplication, false, 0x7f0c0151, new Object[0]);
            return;

        case 4: // '\004'
            Object aobj[] = new Object[1];
            aobj[0] = cashtransaction.f();
            androidnotificationmanager.a(snapchatapplication, snapchatapplication.getString(0x7f0c014c, aobj), false);
            return;

        case 5: // '\005'
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c0132));
            break;
        }
        androidnotificationmanager.a(snapchatapplication, false, 0x7f0c014f, new Object[0]);
    }
}
