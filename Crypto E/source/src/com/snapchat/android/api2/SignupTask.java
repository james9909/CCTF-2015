// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.UpdatesResponse;
import com.snapchat.android.util.BirthdayUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.crypto.DeviceToken;
import com.snapchat.android.util.crypto.DeviceTokenManager;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.GregorianCalendar;
import org.apache.commons.lang3.StringUtils;

public class SignupTask extends BasicScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public static class RequestPayload extends LoginTask.RequestPayload
    {

        String mAge;
        String mBirthday;
        String mEmail;
        String mPassword;

        public RequestPayload()
        {
        }
    }

    public static class ResponsePayload extends UpdatesResponse
    {

        public String mDeviceTokenId;
        public String mDeviceTokenValue;
        String mErrorMessage;
        int mStatus;

        public ResponsePayload()
        {
        }
    }

    public static interface SignupCallback
    {

        public abstract void a(int i, String s);

        public abstract void a(String s, String s1, ResponsePayload responsepayload);
    }


    public static final String PATH = "/loq/register";
    public static final int SC_SIGNUP_FAILED_EMAIL_EXISTS_CODE = -201;
    public static final int SC_SIGNUP_FAILED_EMAIL_INVALID_CODE = -200;
    public static final int SC_SIGNUP_FAILED_PASSWORD_TOO_COMMON_CODE = 8;
    public static final int SC_SIGNUP_FAILED_PASSWORD_TOO_EASY_CODE = 9;
    public static final int SC_SIGNUP_FAILED_PASSWORD_TOO_SHORT_CODE = 7;
    public static final int SC_SIGNUP_FAILED_PASSWORD_TOO_SIMILAR_TO_USERNAME_CODE = 10;
    private static final String TAG = "SignupTask";
    private String mAge;
    protected String mBirthday;
    private final DeviceTokenManager mDeviceTokenManager;
    protected final String mEmail;
    private final String mPassword;
    private final SignupCallback mSignupCallback;

    public SignupTask(String s, String s1, GregorianCalendar gregoriancalendar, SignupCallback signupcallback)
    {
        this(s, s1, gregoriancalendar, signupcallback, DeviceTokenManager.a());
    }

    protected SignupTask(String s, String s1, GregorianCalendar gregoriancalendar, SignupCallback signupcallback, DeviceTokenManager devicetokenmanager)
    {
        mAge = null;
        mBirthday = null;
        mEmail = s;
        mPassword = s1;
        if (gregoriancalendar != null)
        {
            mBirthday = BirthdayUtils.a(gregoriancalendar);
            mAge = (new StringBuilder()).append(BirthdayUtils.b(gregoriancalendar)).append("").toString();
        }
        mSignupCallback = signupcallback;
        mDeviceTokenManager = devicetokenmanager;
        a(com/snapchat/android/api2/SignupTask$ResponsePayload, this);
    }

    public void a(final ResponsePayload responsePayload, final NetworkResult networkResult)
    {
        ThreadUtils.a(new Runnable() {

            final SignupTask this$0;
            final NetworkResult val$networkResult;
            final ResponsePayload val$responsePayload;

            public void run()
            {
                b(responsePayload, networkResult);
            }

            
            {
                this$0 = SignupTask.this;
                responsePayload = responsepayload;
                networkResult = networkresult;
                super();
            }
        });
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ResponsePayload)obj, networkresult);
    }

    public Object b()
    {
        return e();
    }

    void b(ResponsePayload responsepayload, NetworkResult networkresult)
    {
        if (responsepayload == null)
        {
            String s = LocalizationUtils.a(0x7f0c0171, new Object[0]);
            mSignupCallback.a(networkresult.j(), s);
            return;
        }
        if (!StringUtils.isEmpty(responsepayload.mErrorMessage))
        {
            mSignupCallback.a(responsepayload.mStatus, responsepayload.mErrorMessage);
            return;
        } else
        {
            mSignupCallback.a(mEmail, mBirthday, responsepayload);
            return;
        }
    }

    protected String d()
    {
        return "/loq/register";
    }

    public RequestPayload e()
    {
        RequestPayload requestpayload = new RequestPayload();
        requestpayload.mEmail = mEmail;
        requestpayload.mPassword = mPassword;
        requestpayload.mAge = mAge;
        requestpayload.mBirthday = mBirthday;
        String s = UserPrefs.q();
        if (s != null)
        {
            requestpayload.mGcmRegistrationId = s;
        }
        DeviceToken devicetoken = mDeviceTokenManager.d();
        if (devicetoken != null && devicetoken.a() != null && devicetoken.b() != null)
        {
            requestpayload.mDeviceTokenId = devicetoken.a();
            requestpayload.mDeviceSignature = mDeviceTokenManager.a(devicetoken, mEmail, mPassword, requestpayload.mTimestamp, requestpayload.mRequestToken);
            return requestpayload;
        } else
        {
            requestpayload.mNeedsToken = "1";
            return requestpayload;
        }
    }
}
