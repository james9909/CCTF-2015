// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;


// Referenced classes of package com.snapchat.android.api2.cash:
//            BasicScCashRequestTask, ScCashResponsePayload

public class GenerateSignatureForSquarePhoneTask extends BasicScCashRequestTask
{
    public static class ResponsePayload extends ScCashResponsePayload
    {

        public String phoneNumber;
        public String signature;

        public ResponsePayload()
        {
        }
    }


    public GenerateSignatureForSquarePhoneTask(BasicScCashRequestTask.BasicScCashRequestTaskCallback basicsccashrequesttaskcallback)
    {
        super(basicsccashrequesttaskcallback);
        a(com/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload, this);
    }

    protected String d()
    {
        return "/cash/generate_signature_for_phone";
    }
}
