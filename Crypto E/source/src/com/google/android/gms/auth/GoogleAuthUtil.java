// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth;

import android.accounts.AccountManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.a;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.iy;
import com.google.android.gms.internal.r;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;

// Referenced classes of package com.google.android.gms.auth:
//            GooglePlayServicesAvailabilityException, GoogleAuthException, UserRecoverableAuthException, UserRecoverableNotifiedException, 
//            AccountChangeEventsRequest, AccountChangeEventsResponse

public final class GoogleAuthUtil
{

    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    private static final ComponentName Fw;
    private static final ComponentName Fx;
    private static final Intent Fy;
    private static final Intent Fz;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_ANDROID_PACKAGE_NAME;
    public static final String KEY_CALLER_UID;
    public static final String KEY_REQUEST_ACTIONS = "request_visible_actions";
    public static final String KEY_REQUEST_VISIBLE_ACTIVITIES = "request_visible_actions";
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";

    private GoogleAuthUtil()
    {
    }

    private static void B(Context context)
    {
        try
        {
            GooglePlayServicesUtil.B(context);
            return;
        }
        catch (GooglePlayServicesRepairableException googleplayservicesrepairableexception)
        {
            throw new GooglePlayServicesAvailabilityException(googleplayservicesrepairableexception.getConnectionStatusCode(), googleplayservicesrepairableexception.getMessage(), googleplayservicesrepairableexception.getIntent());
        }
        catch (GooglePlayServicesNotAvailableException googleplayservicesnotavailableexception)
        {
            throw new GoogleAuthException(googleplayservicesnotavailableexception.getMessage());
        }
    }

    private static String a(Context context, String s1, String s2, Bundle bundle)
    {
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        String s3;
        try
        {
            s3 = getToken(context, s1, s2, bundle);
        }
        catch (GooglePlayServicesAvailabilityException googleplayservicesavailabilityexception)
        {
            GooglePlayServicesUtil.showErrorNotification(googleplayservicesavailabilityexception.getConnectionStatusCode(), context);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
        catch (UserRecoverableAuthException userrecoverableauthexception)
        {
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
        return s3;
    }

    private static boolean aA(String s1)
    {
        return "BadAuthentication".equals(s1) || "CaptchaRequired".equals(s1) || "DeviceManagementRequiredOrSyncDisabled".equals(s1) || "NeedPermission".equals(s1) || "NeedsBrowser".equals(s1) || "UserCancel".equals(s1) || "AppDownloadRequired".equals(s1) || iy.Gc.fY().equals(s1) || iy.Gd.fY().equals(s1) || iy.Ge.fY().equals(s1) || iy.Gf.fY().equals(s1) || iy.Gg.fY().equals(s1) || iy.Gh.fY().equals(s1);
    }

    private static boolean az(String s1)
    {
        return "NetworkError".equals(s1) || "ServiceUnavailable".equals(s1) || "Timeout".equals(s1);
    }

    public static void clearToken(Context context, String s1)
    {
        Context context1;
        Bundle bundle;
        a a1;
        context1 = context.getApplicationContext();
        s.bc("Calling this from your main thread can lead to deadlock");
        B(context1);
        bundle = new Bundle();
        String s2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", s2);
        if (!bundle.containsKey(KEY_ANDROID_PACKAGE_NAME))
        {
            bundle.putString(KEY_ANDROID_PACKAGE_NAME, s2);
        }
        a1 = new a();
        if (!context1.bindService(Fy, a1, 1))
        {
            break MISSING_BLOCK_LABEL_183;
        }
        Bundle bundle1 = com.google.android.gms.internal.r.a.a(a1.iI()).a(s1, bundle);
        String s3 = bundle1.getString(iy.GE);
        if (!bundle1.getBoolean("booleanResult"))
        {
            throw new GoogleAuthException(s3);
        }
        break MISSING_BLOCK_LABEL_163;
        RemoteException remoteexception;
        remoteexception;
        Log.i("GoogleAuthUtil", "GMS remote exception ", remoteexception);
        throw new IOException("remote exception");
        Exception exception;
        exception;
        context1.unbindService(a1);
        throw exception;
        context1.unbindService(a1);
        return;
        InterruptedException interruptedexception;
        interruptedexception;
        throw new GoogleAuthException("Interrupted");
        throw new IOException("Could not bind to service with the given context.");
    }

    public static List getAccountChangeEvents(Context context, int i, String s1)
    {
        Context context1;
        a a1;
        s.b(s1, "accountName must be provided");
        s.bc("Calling this from your main thread can lead to deadlock");
        context1 = context.getApplicationContext();
        B(context1);
        a1 = new a();
        if (!context1.bindService(Fy, a1, 1))
        {
            break MISSING_BLOCK_LABEL_140;
        }
        List list = com.google.android.gms.internal.r.a.a(a1.iI()).a((new AccountChangeEventsRequest()).setAccountName(s1).setEventIndex(i)).getEvents();
        context1.unbindService(a1);
        return list;
        RemoteException remoteexception;
        remoteexception;
        Log.i("GoogleAuthUtil", "GMS remote exception ", remoteexception);
        throw new IOException("remote exception");
        Exception exception;
        exception;
        context1.unbindService(a1);
        throw exception;
        InterruptedException interruptedexception;
        interruptedexception;
        throw new GoogleAuthException("Interrupted");
        throw new IOException("Could not bind to service with the given context.");
    }

    public static String getAccountId(Context context, String s1)
    {
        s.b(s1, "accountName must be provided");
        s.bc("Calling this from your main thread can lead to deadlock");
        B(context.getApplicationContext());
        return getToken(context, s1, "^^_account_id_^^", new Bundle());
    }

    public static String getAppCert(Context context, String s1)
    {
        return "spatula";
    }

    public static String getToken(Context context, String s1, String s2)
    {
        return getToken(context, s1, s2, new Bundle());
    }

    public static String getToken(Context context, String s1, String s2, Bundle bundle)
    {
        Context context1;
        a a1;
        Bundle bundle2;
        context1 = context.getApplicationContext();
        s.bc("Calling this from your main thread can lead to deadlock");
        B(context1);
        Bundle bundle1;
        String s3;
        String s4;
        boolean flag;
        if (bundle == null)
        {
            bundle1 = new Bundle();
        } else
        {
            bundle1 = new Bundle(bundle);
        }
        s3 = context.getApplicationInfo().packageName;
        bundle1.putString("clientPackageName", s3);
        if (!bundle1.containsKey(KEY_ANDROID_PACKAGE_NAME))
        {
            bundle1.putString(KEY_ANDROID_PACKAGE_NAME, s3);
        }
        a1 = new a();
        if (!context1.bindService(Fy, a1, 1))
        {
            break MISSING_BLOCK_LABEL_276;
        }
        bundle2 = com.google.android.gms.internal.r.a.a(a1.iI()).a(s1, s2, bundle1);
        s4 = bundle2.getString("authtoken");
        flag = TextUtils.isEmpty(s4);
        if (!flag)
        {
            context1.unbindService(a1);
            return s4;
        }
        String s5;
        s5 = bundle2.getString("Error");
        Intent intent = (Intent)bundle2.getParcelable("userRecoveryIntent");
        if (aA(s5))
        {
            throw new UserRecoverableAuthException(s5, intent);
        }
        break MISSING_BLOCK_LABEL_235;
        RemoteException remoteexception;
        remoteexception;
        Log.i("GoogleAuthUtil", "GMS remote exception ", remoteexception);
        throw new IOException("remote exception");
        Exception exception;
        exception;
        context1.unbindService(a1);
        throw exception;
        if (az(s5))
        {
            throw new IOException(s5);
        }
        break MISSING_BLOCK_LABEL_266;
        InterruptedException interruptedexception;
        interruptedexception;
        throw new GoogleAuthException("Interrupted");
        throw new GoogleAuthException(s5);
        throw new IOException("Could not bind to service with the given context.");
    }

    public static String getTokenWithNotification(Context context, String s1, String s2, Bundle bundle)
    {
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        bundle.putBoolean("handle_notification", true);
        return a(context, s1, s2, bundle);
    }

    public static String getTokenWithNotification(Context context, String s1, String s2, Bundle bundle, Intent intent)
    {
        h(intent);
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        bundle.putParcelable("callback_intent", intent);
        bundle.putBoolean("handle_notification", true);
        return a(context, s1, s2, bundle);
    }

    public static String getTokenWithNotification(Context context, String s1, String s2, Bundle bundle, String s3, Bundle bundle1)
    {
        if (TextUtils.isEmpty(s3))
        {
            throw new IllegalArgumentException("Authority cannot be empty or null.");
        }
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        if (bundle1 == null)
        {
            bundle1 = new Bundle();
        }
        ContentResolver.validateSyncExtrasBundle(bundle1);
        bundle.putString("authority", s3);
        bundle.putBundle("sync_extras", bundle1);
        bundle.putBoolean("handle_notification", true);
        return a(context, s1, s2, bundle);
    }

    private static void h(Intent intent)
    {
        if (intent == null)
        {
            throw new IllegalArgumentException("Callback cannot be null.");
        }
        String s1 = intent.toUri(1);
        try
        {
            Intent.parseUri(s1, 1);
            return;
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }

    public static void invalidateToken(Context context, String s1)
    {
        AccountManager.get(context).invalidateAuthToken("com.google", s1);
    }

    static 
    {
        String s1;
        String s2;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            s1 = "callerUid";
        } else
        {
            s1 = "callerUid";
        }
        KEY_CALLER_UID = s1;
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            s2 = "androidPackageName";
        } else
        {
            s2 = "androidPackageName";
        }
        KEY_ANDROID_PACKAGE_NAME = s2;
        Fw = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
        Fx = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
        Fy = (new Intent()).setPackage("com.google.android.gms").setComponent(Fw);
        Fz = (new Intent()).setPackage("com.google.android.gms").setComponent(Fx);
    }
}
