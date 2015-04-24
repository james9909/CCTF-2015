// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.lv;
import com.google.android.gms.internal.me;
import java.io.InputStream;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.Set;

// Referenced classes of package com.google.android.gms.common:
//            GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException, b, SupportErrorDialogFragment, 
//            ErrorDialogFragment

public final class GooglePlayServicesUtil
{
    static class a extends Handler
    {

        private final Context mO;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 1 1: default 24
        //                       1 53;
               goto _L1 _L2
_L1:
            Log.w("GooglePlayServicesUtil", (new StringBuilder()).append("Don't know how to handle this message: ").append(message.what).toString());
_L4:
            return;
_L2:
            int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(mO);
            if (GooglePlayServicesUtil.isUserRecoverableError(i))
            {
                GooglePlayServicesUtil.b(i, mO);
                return;
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        a(Context context)
        {
            Looper looper;
            if (Looper.myLooper() == null)
            {
                looper = Looper.getMainLooper();
            } else
            {
                looper = Looper.myLooper();
            }
            super(looper);
            mO = context.getApplicationContext();
        }
    }


    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 0x640578;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    public static boolean QD = false;
    public static boolean QE = false;
    private static int QF = -1;
    private static final Object QG = new Object();

    private GooglePlayServicesUtil()
    {
    }

    public static void B(Context context)
    {
        int i = isGooglePlayServicesAvailable(context);
        if (i != 0)
        {
            Intent intent = br(i);
            Log.e("GooglePlayServicesUtil", (new StringBuilder()).append("GooglePlayServices not available due to error ").append(i).toString());
            if (intent == null)
            {
                throw new GooglePlayServicesNotAvailableException(i);
            } else
            {
                throw new GooglePlayServicesRepairableException(i, "Google Play Services not available", intent);
            }
        } else
        {
            return;
        }
    }

    private static void D(Context context)
    {
        ApplicationInfo applicationinfo1 = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        ApplicationInfo applicationinfo = applicationinfo1;
_L1:
        Bundle bundle = applicationinfo.metaData;
        if (bundle != null)
        {
            int i = bundle.getInt("com.google.android.gms.version");
            android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
            if (i == 0x640578)
            {
                return;
            } else
            {
                throw new IllegalStateException((new StringBuilder()).append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected 6555000 but found ").append(i).append(".  You must have the").append(" following declaration within the <application> element: ").append("    <meta-data android:name=\"").append("com.google.android.gms.version").append("\" android:value=\"@integer/google_play_services_version\" />").toString());
            }
        } else
        {
            throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
        }
        namenotfoundexception;
        Log.wtf("GooglePlayServicesUtil", "This should never happen.", namenotfoundexception);
        applicationinfo = null;
          goto _L1
    }

    private static void E(Context context)
    {
        a a1 = new a(context);
        a1.sendMessageDelayed(a1.obtainMessage(1), 0x1d4c0L);
    }

    private static String F(Context context)
    {
        String s1 = context.getApplicationInfo().name;
        if (!TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        PackageManager packagemanager;
        s1 = context.getPackageName();
        packagemanager = context.getApplicationContext().getPackageManager();
        ApplicationInfo applicationinfo1 = packagemanager.getApplicationInfo(context.getPackageName(), 0);
        ApplicationInfo applicationinfo = applicationinfo1;
_L4:
        if (applicationinfo != null)
        {
            s1 = packagemanager.getApplicationLabel(applicationinfo).toString();
        }
_L2:
        return s1;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        applicationinfo = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static Dialog a(int i, Activity activity, Fragment fragment, int j, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        if (lv.J(activity) && i == 2)
        {
            i = 42;
        }
        if (!me.kt()) goto _L2; else goto _L1
_L1:
        TypedValue typedvalue;
        typedvalue = new TypedValue();
        activity.getTheme().resolveAttribute(0x1010309, typedvalue, true);
        if (!"Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedvalue.resourceId))) goto _L2; else goto _L3
_L3:
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity, 5);
_L5:
        if (builder == null)
        {
            builder = new android.app.AlertDialog.Builder(activity);
        }
        builder.setMessage(d(activity, i));
        if (oncancellistener != null)
        {
            builder.setOnCancelListener(oncancellistener);
        }
        Intent intent = br(i);
        d d1;
        String s1;
        if (fragment == null)
        {
            d1 = new d(activity, intent, j);
        } else
        {
            d1 = new d(fragment, intent, j);
        }
        s1 = e(activity, i);
        if (s1 != null)
        {
            builder.setPositiveButton(s1, d1);
        }
        switch (i)
        {
        default:
            Log.e("GooglePlayServicesUtil", (new StringBuilder()).append("Unexpected error code ").append(i).toString());
            return builder.create();

        case 0: // '\0'
            return null;

        case 4: // '\004'
        case 6: // '\006'
            return builder.create();

        case 1: // '\001'
            return builder.setTitle(com.google.android.gms.R.string.common_google_play_services_install_title).create();

        case 3: // '\003'
            return builder.setTitle(com.google.android.gms.R.string.common_google_play_services_enable_title).create();

        case 2: // '\002'
            return builder.setTitle(com.google.android.gms.R.string.common_google_play_services_update_title).create();

        case 42: // '*'
            return builder.setTitle(com.google.android.gms.R.string.common_android_wear_update_title).create();

        case 9: // '\t'
            Log.e("GooglePlayServicesUtil", "Google Play services is invalid. Cannot recover.");
            return builder.setTitle(com.google.android.gms.R.string.common_google_play_services_unsupported_title).create();

        case 7: // '\007'
            Log.e("GooglePlayServicesUtil", "Network error occurred. Please retry request later.");
            return builder.setTitle(com.google.android.gms.R.string.common_google_play_services_network_error_title).create();

        case 8: // '\b'
            Log.e("GooglePlayServicesUtil", "Internal error occurred. Please see logs for detailed information");
            return builder.create();

        case 10: // '\n'
            Log.e("GooglePlayServicesUtil", "Developer error occurred. Please see logs for detailed information");
            return builder.create();

        case 5: // '\005'
            Log.e("GooglePlayServicesUtil", "An invalid account was specified when connecting. Please provide a valid account.");
            return builder.setTitle(com.google.android.gms.R.string.common_google_play_services_invalid_account_title).create();

        case 11: // '\013'
            Log.e("GooglePlayServicesUtil", "The application is not licensed to the user.");
            break;
        }
        return builder.create();
_L2:
        builder = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static void a(int i, Context context)
    {
        Resources resources = context.getResources();
        String s1 = f(context, i);
        int j = com.google.android.gms.R.string.common_google_play_services_error_notification_requested_by_msg;
        Object aobj[] = new Object[1];
        aobj[0] = F(context);
        String s2 = resources.getString(j, aobj);
        PendingIntent pendingintent = getErrorPendingIntent(i, context, 0);
        Notification notification1;
        if (lv.J(context))
        {
            s.N(me.ku());
            notification1 = (new android.app.Notification.Builder(context)).setSmallIcon(com.google.android.gms.R.drawable.common_ic_googleplayservices).setPriority(2).setAutoCancel(true).setStyle((new android.app.Notification.BigTextStyle()).bigText((new StringBuilder()).append(s1).append(" ").append(s2).toString())).addAction(com.google.android.gms.R.drawable.common_full_open_on_phone, resources.getString(com.google.android.gms.R.string.common_open_on_phone), pendingintent).build();
        } else
        {
            Notification notification = new Notification(0x108008a, resources.getString(com.google.android.gms.R.string.common_google_play_services_notification_ticker), System.currentTimeMillis());
            notification.flags = 0x10 | notification.flags;
            notification.setLatestEventInfo(context, s1, s2, pendingintent);
            notification1 = notification;
        }
        ((NotificationManager)context.getSystemService("notification")).notify(bs(i), notification1);
    }

    public static boolean a(PackageManager packagemanager, PackageInfo packageinfo)
    {
        boolean flag = true;
        boolean flag1 = false;
        if (packageinfo != null)
        {
            if (b(packagemanager))
            {
                if (a(packageinfo, flag) == null)
                {
                    flag = false;
                }
                return flag;
            }
            byte abyte0[] = a(packageinfo, false);
            flag1 = false;
            if (abyte0 != null)
            {
                flag1 = flag;
            }
            if (!flag1 && a(packageinfo, flag) != null)
            {
                Log.w("GooglePlayServicesUtil", "Test-keys aren't accepted on this build.");
                return flag1;
            }
        }
        return flag1;
    }

    public static boolean a(Resources resources)
    {
        if (resources != null)
        {
            boolean flag;
            if ((0xf & resources.getConfiguration().screenLayout) > 3)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (me.kq() && flag || b(resources))
            {
                return true;
            }
        }
        return false;
    }

    private static byte[] a(PackageInfo packageinfo, boolean flag)
    {
        if (packageinfo.signatures.length != 1)
        {
            Log.w("GooglePlayServicesUtil", "Package has more than one signature.");
            return null;
        }
        byte abyte0[] = packageinfo.signatures[0].toByteArray();
        Set set;
        if (flag)
        {
            set = com.google.android.gms.common.b.iK();
        } else
        {
            set = com.google.android.gms.common.b.iL();
        }
        if (set.contains(abyte0))
        {
            return abyte0;
        }
        if (Log.isLoggable("GooglePlayServicesUtil", 2))
        {
            Log.v("GooglePlayServicesUtil", (new StringBuilder()).append("Signature not valid.  Found: \n").append(Base64.encodeToString(abyte0, 0)).toString());
        }
        return null;
    }

    private static transient byte[] a(PackageInfo packageinfo, byte abyte0[][])
    {
        if (packageinfo.signatures.length != 1)
        {
            Log.w("GooglePlayServicesUtil", "Package has more than one signature.");
            return null;
        }
        byte abyte1[] = packageinfo.signatures[0].toByteArray();
        for (int i = 0; i < abyte0.length; i++)
        {
            byte abyte2[] = abyte0[i];
            if (Arrays.equals(abyte2, abyte1))
            {
                return abyte2;
            }
        }

        if (Log.isLoggable("GooglePlayServicesUtil", 2))
        {
            Log.v("GooglePlayServicesUtil", (new StringBuilder()).append("Signature not valid.  Found: \n").append(Base64.encodeToString(abyte1, 0)).toString());
        }
        return null;
    }

    static void b(int i, Context context)
    {
        a(i, context);
    }

    public static boolean b(PackageManager packagemanager)
    {
        return true;
    }

    public static boolean b(PackageManager packagemanager, String s1)
    {
        PackageInfo packageinfo;
        try
        {
            packageinfo = packagemanager.getPackageInfo(s1, 64);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            if (Log.isLoggable("GooglePlayServicesUtil", 3))
            {
                Log.d("GooglePlayServicesUtil", (new StringBuilder()).append("Package manager can't find package ").append(s1).append(", defaulting to false").toString());
            }
            return false;
        }
        return a(packagemanager, packageinfo);
    }

    private static boolean b(Resources resources)
    {
        Configuration configuration = resources.getConfiguration();
        boolean flag = me.ks();
        boolean flag1 = false;
        if (flag)
        {
            int i = 0xf & configuration.screenLayout;
            flag1 = false;
            if (i <= 3)
            {
                int j = configuration.smallestScreenWidthDp;
                flag1 = false;
                if (j >= 600)
                {
                    flag1 = true;
                }
            }
        }
        return flag1;
    }

    public static Intent br(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 1: // '\001'
        case 2: // '\002'
            return k.bh("com.google.android.gms");

        case 42: // '*'
            return k.jO();

        case 3: // '\003'
            return k.bf("com.google.android.gms");
        }
    }

    private static int bs(int i)
    {
        switch (i)
        {
        case 2: // '\002'
        default:
            return 39789;

        case 1: // '\001'
        case 3: // '\003'
            return 10436;
        }
    }

    public static String d(Context context, int i)
    {
        Resources resources = context.getResources();
        switch (i)
        {
        default:
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_unknown_issue);

        case 1: // '\001'
            if (a(context.getResources()))
            {
                return resources.getString(com.google.android.gms.R.string.common_google_play_services_install_text_tablet);
            } else
            {
                return resources.getString(com.google.android.gms.R.string.common_google_play_services_install_text_phone);
            }

        case 3: // '\003'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_enable_text);

        case 2: // '\002'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_update_text);

        case 42: // '*'
            return resources.getString(com.google.android.gms.R.string.common_android_wear_update_text);

        case 9: // '\t'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_unsupported_text);

        case 7: // '\007'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_network_error_text);

        case 5: // '\005'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_invalid_account_text);
        }
    }

    public static String e(Context context, int i)
    {
        Resources resources = context.getResources();
        switch (i)
        {
        default:
            return resources.getString(0x104000a);

        case 1: // '\001'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_install_button);

        case 3: // '\003'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_enable_button);

        case 2: // '\002'
        case 42: // '*'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_update_button);
        }
    }

    public static String f(Context context, int i)
    {
        Resources resources = context.getResources();
        switch (i)
        {
        default:
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_unknown_issue);

        case 1: // '\001'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_notification_needs_installation_title);

        case 2: // '\002'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_notification_needs_update_title);

        case 42: // '*'
            return resources.getString(com.google.android.gms.R.string.common_android_wear_notification_needs_update_text);

        case 3: // '\003'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_needs_enabling_title);

        case 9: // '\t'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_unsupported_text);

        case 7: // '\007'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_network_error_text);

        case 5: // '\005'
            return resources.getString(com.google.android.gms.R.string.common_google_play_services_invalid_account_text);
        }
    }

    public static boolean g(Context context, int i)
    {
        PackageManager packagemanager;
        if (i != 1)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        packagemanager = context.getPackageManager();
        boolean flag = packagemanager.getApplicationInfo("com.google.android.gms", 8192).enabled;
        if (flag)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_32;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        return false;
    }

    public static Dialog getErrorDialog(int i, Activity activity, int j)
    {
        return getErrorDialog(i, activity, j, null);
    }

    public static Dialog getErrorDialog(int i, Activity activity, int j, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        return a(i, activity, null, j, oncancellistener);
    }

    public static PendingIntent getErrorPendingIntent(int i, Context context, int j)
    {
        Intent intent = br(i);
        if (intent == null)
        {
            return null;
        } else
        {
            return PendingIntent.getActivity(context, j, intent, 0x10000000);
        }
    }

    public static String getErrorString(int i)
    {
        switch (i)
        {
        default:
            return "UNKNOWN_ERROR_CODE";

        case 0: // '\0'
            return "SUCCESS";

        case 1: // '\001'
            return "SERVICE_MISSING";

        case 2: // '\002'
            return "SERVICE_VERSION_UPDATE_REQUIRED";

        case 3: // '\003'
            return "SERVICE_DISABLED";

        case 4: // '\004'
            return "SIGN_IN_REQUIRED";

        case 5: // '\005'
            return "INVALID_ACCOUNT";

        case 6: // '\006'
            return "RESOLUTION_REQUIRED";

        case 7: // '\007'
            return "NETWORK_ERROR";

        case 8: // '\b'
            return "INTERNAL_ERROR";

        case 9: // '\t'
            return "SERVICE_INVALID";

        case 10: // '\n'
            return "DEVELOPER_ERROR";

        case 11: // '\013'
            return "LICENSE_CHECK_FAILED";
        }
    }

    public static String getOpenSourceSoftwareLicenseInfo(Context context)
    {
        android.net.Uri uri = (new android.net.Uri.Builder()).scheme("android.resource").authority("com.google.android.gms").appendPath("raw").appendPath("oss_notice").build();
        InputStream inputstream = context.getContentResolver().openInputStream(uri);
        String s1;
        String s2;
        try
        {
            s2 = (new Scanner(inputstream)).useDelimiter("\\A").next();
        }
        catch (NoSuchElementException nosuchelementexception)
        {
            if (inputstream == null)
            {
                break MISSING_BLOCK_LABEL_114;
            }
            Exception exception1;
            try
            {
                inputstream.close();
                break MISSING_BLOCK_LABEL_114;
            }
            catch (Exception exception)
            {
                s1 = null;
            }
            break MISSING_BLOCK_LABEL_112;
        }
        finally
        {
            if (inputstream == null) goto _L0; else goto _L0
        }
        s1 = s2;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        inputstream.close();
        return s1;
        inputstream.close();
        throw exception1;
        return s1;
        return null;
    }

    public static Context getRemoteContext(Context context)
    {
        Context context1;
        try
        {
            context1 = context.createPackageContext("com.google.android.gms", 3);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        return context1;
    }

    public static Resources getRemoteResource(Context context)
    {
        Resources resources;
        try
        {
            resources = context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        return resources;
    }

    public static boolean iM()
    {
        if (QD)
        {
            return QE;
        } else
        {
            return "user".equals(Build.TYPE);
        }
    }

    public static int isGooglePlayServicesAvailable(Context context)
    {
        PackageManager packagemanager;
        PackageInfo packageinfo;
label0:
        {
            packagemanager = context.getPackageManager();
            if (!c.TL)
            {
                try
                {
                    context.getResources().getString(com.google.android.gms.R.string.common_google_play_services_unknown_issue);
                }
                catch (Throwable throwable)
                {
                    Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
                }
            }
            if (!c.TL)
            {
                D(context);
            }
            try
            {
                packageinfo = packagemanager.getPackageInfo("com.google.android.gms", 64);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
                return 1;
            }
            if (lv.cb(packageinfo.versionCode))
            {
                int j;
                byte abyte1[][];
                if (iM())
                {
                    j = 0;
                } else
                {
                    j = 1;
                }
                abyte1 = new byte[3][];
                abyte1[0] = b.Qa[j];
                abyte1[1] = b.Qg[j];
                abyte1[2] = b.Qf[j];
                if (a(packageinfo, abyte1) == null)
                {
                    Log.w("GooglePlayServicesUtil", "Google Play Services signature invalid on Glass.");
                    return 9;
                }
                String s1 = context.getPackageName();
                try
                {
                    PackageInfo packageinfo2 = packagemanager.getPackageInfo(s1, 64);
                    if (a(packagemanager, packageinfo2))
                    {
                        break label0;
                    }
                    Log.w("GooglePlayServicesUtil", (new StringBuilder()).append("Calling package ").append(packageinfo2.packageName).append(" signature invalid on Glass.").toString());
                }
                catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception3)
                {
                    Log.w("GooglePlayServicesUtil", (new StringBuilder()).append("Could not get info for calling package: ").append(s1).toString());
                    return 9;
                }
                return 9;
            }
            if (lv.J(context))
            {
                if (a(packageinfo, b.Qa) == null)
                {
                    Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                    return 9;
                }
            } else
            {
                PackageInfo packageinfo1;
                byte abyte0[];
                try
                {
                    packageinfo1 = packagemanager.getPackageInfo("com.android.vending", 64);
                }
                catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception1)
                {
                    Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
                    return 9;
                }
                abyte0 = a(packageinfo1, b.Qa);
                if (abyte0 == null)
                {
                    Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                    return 9;
                }
                if (a(packageinfo, new byte[][] {
    abyte0
}) == null)
                {
                    Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                    return 9;
                }
            }
        }
        int i = lv.bZ(0x640578);
        if (lv.bZ(packageinfo.versionCode) < i)
        {
            Log.w("GooglePlayServicesUtil", (new StringBuilder()).append("Google Play services out of date.  Requires 6555000 but found ").append(packageinfo.versionCode).toString());
            return 2;
        }
        ApplicationInfo applicationinfo;
        try
        {
            applicationinfo = packagemanager.getApplicationInfo("com.google.android.gms", 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception2)
        {
            Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.");
            namenotfoundexception2.printStackTrace();
            return 1;
        }
        return applicationinfo.enabled ? 0 : 3;
    }

    public static boolean isGoogleSignedUid(PackageManager packagemanager, int i)
    {
        if (packagemanager == null)
        {
            throw new SecurityException("Unknown error: invalid Package Manager");
        }
        String as[] = packagemanager.getPackagesForUid(i);
        if (as.length == 0 || !b(packagemanager, as[0]))
        {
            throw new SecurityException("Uid is not Google Signed");
        } else
        {
            return true;
        }
    }

    public static boolean isUserRecoverableError(int i)
    {
        switch (i)
        {
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
        case 7: // '\007'
        case 8: // '\b'
        default:
            return false;

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
        case 9: // '\t'
            return true;
        }
    }

    public static boolean showErrorDialogFragment(int i, Activity activity, int j)
    {
        return showErrorDialogFragment(i, activity, j, null);
    }

    public static boolean showErrorDialogFragment(int i, Activity activity, int j, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        return showErrorDialogFragment(i, activity, null, j, oncancellistener);
    }

    public static boolean showErrorDialogFragment(int i, Activity activity, Fragment fragment, int j, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        Dialog dialog = a(i, activity, fragment, j, oncancellistener);
        if (dialog == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            flag = activity instanceof FragmentActivity;
        }
        catch (NoClassDefFoundError noclassdeffounderror)
        {
            flag = false;
        }
        if (flag)
        {
            android.support.v4.app.FragmentManager fragmentmanager1 = ((FragmentActivity)activity).getSupportFragmentManager();
            SupportErrorDialogFragment.newInstance(dialog, oncancellistener).show(fragmentmanager1, "GooglePlayServicesErrorDialog");
        } else
        if (me.kq())
        {
            android.app.FragmentManager fragmentmanager = activity.getFragmentManager();
            ErrorDialogFragment.newInstance(dialog, oncancellistener).show(fragmentmanager, "GooglePlayServicesErrorDialog");
        } else
        {
            throw new RuntimeException("This Activity does not support Fragments.");
        }
        return true;
    }

    public static void showErrorNotification(int i, Context context)
    {
        if (lv.J(context) && i == 2)
        {
            i = 42;
        }
        if (g(context, i))
        {
            E(context);
            return;
        } else
        {
            a(i, context);
            return;
        }
    }

}
