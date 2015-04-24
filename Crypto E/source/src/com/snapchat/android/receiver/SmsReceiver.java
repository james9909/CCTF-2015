// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.VerificationCodeReceivedEvent;
import com.squareup.otto.Bus;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SmsReceiver extends BroadcastReceiver
{

    public SmsReceiver()
    {
    }

    protected String a(String s, String s1)
    {
        if (!TextUtils.isEmpty(s) && !TextUtils.isEmpty(s1))
        {
            Pattern pattern = Pattern.compile(s.replace("{0}", "(\\d+)"));
            Matcher matcher = pattern.matcher(s1);
            if (matcher.find())
            {
                Matcher matcher1 = pattern.matcher(matcher.group());
                if (matcher1.matches() && matcher1.groupCount() >= 1)
                {
                    return matcher1.group(1);
                }
            }
        }
        return null;
    }

    protected SmsMessage[] a(Bundle bundle)
    {
        if (bundle == null || !bundle.containsKey("pdus"))
        {
            break MISSING_BLOCK_LABEL_169;
        }
        Object aobj[];
        SmsMessage asmsmessage[];
        aobj = (Object[])(Object[])bundle.get("pdus");
        asmsmessage = new SmsMessage[aobj.length];
        int i = 0;
_L2:
        if (i >= aobj.length)
        {
            break; /* Loop/switch isn't completed */
        }
        asmsmessage[i] = SmsMessage.createFromPdu((byte[])(byte[])aobj[i]);
        Timber.c("SmsReceiver", (new StringBuilder()).append("getReceivedMessages - body: ").append(asmsmessage[i].getDisplayMessageBody()).append(" origin: ").append(asmsmessage[i].getDisplayOriginatingAddress()).append(" service center: ").append(asmsmessage[i].getServiceCenterAddress()).append(" subject: ").append(asmsmessage[i].getPseudoSubject()).toString(), new Object[0]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return asmsmessage;
        Exception exception;
        exception;
        Timber.e("SmsReceiver", "Failed to parse SMS messages from Intent. ", new Object[] {
            exception
        });
        return null;
    }

    public void onReceive(Context context, Intent intent)
    {
        Timber.c("SmsReceiver", (new StringBuilder()).append("onReceive ").append(intent).toString(), new Object[0]);
        if (intent != null)
        {
            SmsMessage asmsmessage[] = a(intent.getExtras());
            if (asmsmessage != null && asmsmessage.length > 0)
            {
                int i = asmsmessage.length;
                for (int j = 0; j < i; j++)
                {
                    SmsMessage smsmessage = asmsmessage[j];
                    if (smsmessage == null)
                    {
                        continue;
                    }
                    String s = smsmessage.getDisplayMessageBody();
                    String s1 = a(UserPrefs.aM(), s);
                    Timber.c("SmsReceiver", (new StringBuilder()).append("messageBody: ").append(s).append(" verificationCode: ").append(s1).toString(), new Object[0]);
                    if (!TextUtils.isEmpty(s1))
                    {
                        BusProvider.a().a(new VerificationCodeReceivedEvent(s1));
                    }
                }

            }
        }
    }
}
