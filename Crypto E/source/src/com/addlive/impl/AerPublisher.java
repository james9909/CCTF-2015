// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.impl;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

public class AerPublisher
{

    private static final String TAG = "LogsPublisher";
    private Context ctx;

    public AerPublisher(Context context)
    {
        ctx = context;
    }

    private void doHttpPost(String s, String s1, List list)
    {
        DefaultHttpClient defaulthttpclient;
        HttpPost httppost;
        defaulthttpclient = new DefaultHttpClient();
        httppost = new HttpPost(s1);
        HttpResponse httpresponse;
        httppost.setHeader("Authorization", (new StringBuilder()).append("Basic ").append(Base64.encodeToString(s.getBytes(), 2)).toString());
        httppost.setHeader("Content-Type", "application/x-www-form-urlencoded");
        httppost.setEntity(new UrlEncodedFormEntity(list));
        httpresponse = defaulthttpclient.execute(httppost);
        if (httpresponse.getStatusLine().getStatusCode() == 200)
        {
            Log.d("AddLive_SDK", "Successfully submitted AER");
            return;
        }
        try
        {
            Log.w("AddLive_SDK", (new StringBuilder()).append("Failed to submit AER. Server response: ").append(httpresponse.getStatusLine()).toString());
            return;
        }
        catch (ClientProtocolException clientprotocolexception)
        {
            Log.e("AddLive_SDK", "Failed to submit AER", clientprotocolexception);
            return;
        }
        catch (IOException ioexception)
        {
            Log.e("AddLive_SDK", "Failed to submit AER", ioexception);
        }
        return;
    }

    private String networkType()
    {
        switch (((TelephonyManager)ctx.getSystemService("phone")).getNetworkType())
        {
        default:
            return "Unknown";

        case 7: // '\007'
            return "1xRTT";

        case 4: // '\004'
            return "CDMA";

        case 2: // '\002'
            return "EDGE";

        case 14: // '\016'
            return "eHRPD";

        case 5: // '\005'
            return "EVDO rev. 0";

        case 6: // '\006'
            return "EVDO rev. A";

        case 12: // '\f'
            return "EVDO rev. B";

        case 1: // '\001'
            return "GPRS";

        case 8: // '\b'
            return "HSDPA";

        case 10: // '\n'
            return "HSPA";

        case 15: // '\017'
            return "HSPA+";

        case 9: // '\t'
            return "HSUPA";

        case 11: // '\013'
            return "iDen";

        case 13: // '\r'
            return "LTE";

        case 3: // '\003'
            return "UMTS";
        }
    }

    public String collectLogs()
    {
        StringBuilder stringbuilder;
        String as[];
        new ByteArrayOutputStream();
        stringbuilder = new StringBuilder();
        ArrayList arraylist = new ArrayList();
        arraylist.add("logcat");
        arraylist.add("-d");
        arraylist.add("-v");
        arraylist.add("threadtime");
        arraylist.add("AddLive_SDK:V");
        arraylist.add("AddLive_SDK:V");
        arraylist.add("*:S");
        as = new String[arraylist.size()];
        arraylist.toArray(as);
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(as).getInputStream()));
_L1:
        String s = bufferedreader.readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        stringbuilder.append(s);
        stringbuilder.append('\n');
          goto _L1
        IOException ioexception;
        ioexception;
        Log.v("LogsPublisher", "Error getting logs - exc while executing logcat process", ioexception);
        return stringbuilder.toString();
    }

    public void publish(String s, String s1)
    {
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        stringbuilder.append("Dear developer,\n\nThis message contains an AER send from an Android device.");
        stringbuilder.append("\nDevice details:");
        stringbuilder.append("\nManufacturer: ").append(Build.MANUFACTURER);
        stringbuilder.append("\nModel: ").append(Build.MODEL);
        stringbuilder.append("\n\nDevice: ").append(Build.DEVICE);
        stringbuilder.append("\nCPU Abi: ").append(Build.CPU_ABI).append('/').append(Build.CPU_ABI2);
        stringbuilder.append("\nHardware: ").append(Build.HARDWARE);
        stringbuilder.append("\nBoard: ").append(Build.BOARD);
        stringbuilder.append("\nBootloader: ").append(Build.BOOTLOADER);
        stringbuilder.append("\nBrand: ").append(Build.BRAND);
        stringbuilder.append("\nBuild type: ").append(Build.TYPE);
        stringbuilder.append("\n\nNetwork info: \n");
        NetworkInfo networkinfo = ((ConnectivityManager)ctx.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo != null) goto _L2; else goto _L1
_L1:
        LinkedList linkedlist;
        try
        {
            stringbuilder.append("There is no active network");
        }
        catch (SecurityException securityexception)
        {
            Log.e("AddLive_SDK", "Blah", securityexception);
            stringbuilder.append("\nNetwork info not available due to lack of ACCESS_NETWORK_STATE permission");
        }
_L3:
        stringbuilder.append("\n\n===========================================\n\n");
        stringbuilder.append("Cause: ").append(s1);
        stringbuilder.append("\n\n\nLogs:\n\n").append(collectLogs());
        stringbuilder.append("\n\nGood luck with debugging!!");
        linkedlist = new LinkedList();
        linkedlist.add(new BasicNameValuePair("from", "bugreports@addlive.com"));
        linkedlist.add(new BasicNameValuePair("to", "aers@addlive.com"));
        linkedlist.add(new BasicNameValuePair("subject", "Android AER"));
        linkedlist.add(new BasicNameValuePair("text", stringbuilder.toString()));
        doHttpPost(s, "https://api.mailgun.net/v2/addlive.com/messages", linkedlist);
        return;
_L2:
label0:
        {
            stringbuilder.append(networkinfo);
            if (networkinfo.getType() != 1)
            {
                break label0;
            }
            WifiInfo wifiinfo = ((WifiManager)ctx.getSystemService("wifi")).getConnectionInfo();
            stringbuilder.append("\nWifi Signal strength (0-10): ").append(WifiManager.calculateSignalLevel(wifiinfo.getRssi(), 10));
        }
        break MISSING_BLOCK_LABEL_195;
        stringbuilder.append("/n Mobile network type: ").append(networkType());
          goto _L3
    }
}
