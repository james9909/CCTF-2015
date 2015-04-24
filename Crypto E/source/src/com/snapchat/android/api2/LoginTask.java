// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api.ScreenParameterProvider;
import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.server.chat.AllUpdatesConversationResponse;
import com.snapchat.android.notification.NotificationRegistrar;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.RetryUtil;
import com.snapchat.android.util.crypto.DeviceToken;
import com.snapchat.android.util.crypto.DeviceTokenManager;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.concurrent.Callable;
import org.apache.commons.lang3.StringUtils;

// Referenced classes of package com.snapchat.android.api2:
//            StaticAuthPayload

public class LoginTask extends BasicScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public static interface LoginCallback
    {

        public abstract void a(int i, String s);

        public abstract void a(String s, ResponsePayload responsepayload);
    }

    public static class RequestPayload extends StaticAuthPayload
    {

        String mDeviceSignature;
        String mDeviceTokenId;
        String mGcmRegistrationId;
        int mHeight;
        int mMaxVideoHeight;
        int mMaxVideoWidth;
        String mNeedsToken;
        int mNumRetries;
        String mPassword;
        int mWidth;

        public RequestPayload()
        {
        }
    }

    public static class ResponsePayload extends AllUpdatesConversationResponse
    {

        public String mDeviceTokenId;
        public String mDeviceTokenValue;
        String mErrorMessage;
        int mStatus;

        public ResponsePayload()
        {
        }
    }


    private static final String IO_EXCEPTION = "ie";
    public static final int SC_LOGIN_FAILED_CANNOT_FIND_ACCOUNT_CODE = -101;
    public static final int SC_LOGIN_FAILED_INVALID_PASSWORD_CODE = -100;
    public static final int SC_LOGIN_FAILED_NO_NETWORK = 0;
    public static final int SC_LOGIN_FAILED_UNKNOWN_ERROR = 0x7ffffffa;
    protected static final String SERVLET_PATH = "/loq/login";
    private static final String TAG = "LoginTask";
    private final DeviceTokenManager mDeviceTokenManager;
    private final GoogleCloudMessaging mGoogleCloudMessage;
    private final LoginCallback mLoginCallback;
    protected final String mLoginName;
    private final String mPassword;
    private final RetryUtil mRetryUtil;
    private final ScreenParameterProvider mScreenParameterProvider;

    public LoginTask(String s, String s1, LoginCallback logincallback)
    {
        this(s, s1, logincallback, DeviceTokenManager.a(), ScreenParameterProvider.a(), GoogleCloudMessaging.getInstance(SnapchatApplication.e().getApplicationContext()), new RetryUtil());
    }

    protected LoginTask(String s, String s1, LoginCallback logincallback, DeviceTokenManager devicetokenmanager, ScreenParameterProvider screenparameterprovider, GoogleCloudMessaging googlecloudmessaging, RetryUtil retryutil)
    {
        mLoginName = s;
        mPassword = s1;
        mLoginCallback = logincallback;
        mDeviceTokenManager = devicetokenmanager;
        mScreenParameterProvider = screenparameterprovider;
        mGoogleCloudMessage = googlecloudmessaging;
        mRetryUtil = retryutil;
        a(com/snapchat/android/api2/LoginTask$ResponsePayload, this);
    }

    static GoogleCloudMessaging a(LoginTask logintask)
    {
        return logintask.mGoogleCloudMessage;
    }

    public void a(final ResponsePayload responsePayload, final NetworkResult networkResult)
    {
        ThreadUtils.a(new Runnable() {

            final LoginTask this$0;
            final NetworkResult val$networkResult;
            final ResponsePayload val$responsePayload;

            public void run()
            {
                b(responsePayload, networkResult);
            }

            
            {
                this$0 = LoginTask.this;
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
        return h_();
    }

    void b(ResponsePayload responsepayload, NetworkResult networkresult)
    {
        if (responsepayload == null)
        {
            String s = LocalizationUtils.a(0x7f0c0171, new Object[0]);
            mLoginCallback.a(networkresult.j(), s);
            return;
        }
        if (!StringUtils.isEmpty(responsepayload.mErrorMessage))
        {
            mLoginCallback.a(responsepayload.mStatus, responsepayload.mErrorMessage);
            return;
        } else
        {
            mLoginCallback.a(mLoginName, responsepayload);
            return;
        }
    }

    protected String d()
    {
        return "/loq/login";
    }

    protected String e()
    {
        android.content.Context context = SnapchatApplication.e().getApplicationContext();
        String s;
        try
        {
            s = (String)mRetryUtil.a(new Callable() {

                final LoginTask this$0;

                public String a()
                {
                    return LoginTask.a(LoginTask.this).register(new String[] {
                        "191410808405"
                    });
                }

                public Object call()
                {
                    return a();
                }

            
            {
                this$0 = LoginTask.this;
                super();
            }
            }).call();
            NotificationRegistrar.a(context, s);
            Timber.c("LoginTask", (new StringBuilder()).append("GcmRegistrationId: ").append(s).toString(), new Object[0]);
        }
        catch (Exception exception)
        {
            Timber.e("LoginTask", (new StringBuilder()).append("getGcmRegistrationId IOException: ").append(exception.getMessage()).toString(), new Object[0]);
            return "ie";
        }
        return s;
    }

    public RequestPayload h_()
    {
        RequestPayload requestpayload = new RequestPayload();
        requestpayload.mUsername = mLoginName;
        requestpayload.mPassword = mPassword;
        requestpayload.mGcmRegistrationId = e();
        DeviceToken devicetoken = mDeviceTokenManager.d();
        if (devicetoken != null && devicetoken.a() != null && devicetoken.b() != null)
        {
            requestpayload.mDeviceTokenId = devicetoken.a();
            requestpayload.mDeviceSignature = mDeviceTokenManager.a(devicetoken, mLoginName, mPassword, requestpayload.mTimestamp, requestpayload.mRequestToken);
        } else
        {
            requestpayload.mNeedsToken = "1";
        }
        requestpayload.mHeight = mScreenParameterProvider.b().b();
        requestpayload.mWidth = mScreenParameterProvider.b().a();
        requestpayload.mMaxVideoHeight = mScreenParameterProvider.c();
        requestpayload.mMaxVideoWidth = mScreenParameterProvider.d();
        return requestpayload;
    }
}
