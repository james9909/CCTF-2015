// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.BleApi;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.request.ad;
import com.google.android.gms.fitness.request.ah;
import com.google.android.gms.fitness.request.b;
import com.google.android.gms.fitness.result.BleDevicesResult;

// Referenced classes of package com.google.android.gms.internal:
//            mn, ms

public class na
    implements BleApi
{
    static class a extends ni.a
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void a(BleDevicesResult bledevicesresult)
        {
            Fn.e(bledevicesresult);
        }

        private a(com.google.android.gms.common.api.BaseImplementation.b b)
        {
            Fn = b;
        }

    }


    public na()
    {
    }

    public PendingResult claimBleDevice(GoogleApiClient googleapiclient, BleDevice bledevice)
    {
        return googleapiclient.b(new mn.c(googleapiclient, bledevice) {

            final na acm;
            final BleDevice acp;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b1 = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(new b(acp), b1, s);
            }

            
            {
                acm = na.this;
                acp = bledevice;
                super(googleapiclient);
            }
        });
    }

    public PendingResult claimBleDevice(GoogleApiClient googleapiclient, String s)
    {
        return googleapiclient.b(new mn.c(googleapiclient, s) {

            final na acm;
            final String aco;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b1 = new mn.b(this);
                String s1 = mn1.getContext().getPackageName();
                mn1.lV().a(new b(aco), b1, s1);
            }

            
            {
                acm = na.this;
                aco = s;
                super(googleapiclient);
            }
        });
    }

    public PendingResult listClaimedBleDevices(GoogleApiClient googleapiclient)
    {
        return googleapiclient.a(new mn.a(googleapiclient) {

            final na acm;

            protected BleDevicesResult F(Status status)
            {
                return BleDevicesResult.M(status);
            }

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                a a1 = new a(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(a1, s);
            }

            protected Result b(Status status)
            {
                return F(status);
            }

            
            {
                acm = na.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult startBleScan(GoogleApiClient googleapiclient, StartBleScanRequest startblescanrequest)
    {
        return googleapiclient.a(new mn.c(googleapiclient, startblescanrequest) {

            final StartBleScanRequest acl;
            final na acm;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acl, b, s);
            }

            
            {
                acm = na.this;
                acl = startblescanrequest;
                super(googleapiclient);
            }
        });
    }

    public PendingResult stopBleScan(GoogleApiClient googleapiclient, BleScanCallback blescancallback)
    {
        return googleapiclient.a(new mn.c(googleapiclient, blescancallback) {

            final na acm;
            final BleScanCallback acn;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                ad ad1 = new ad(acn);
                mn1.lV().a(ad1, b, s);
            }

            
            {
                acm = na.this;
                acn = blescancallback;
                super(googleapiclient);
            }
        });
    }

    public PendingResult unclaimBleDevice(GoogleApiClient googleapiclient, BleDevice bledevice)
    {
        return unclaimBleDevice(googleapiclient, bledevice.getAddress());
    }

    public PendingResult unclaimBleDevice(GoogleApiClient googleapiclient, String s)
    {
        return googleapiclient.b(new mn.c(googleapiclient, s) {

            final na acm;
            final String aco;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b = new mn.b(this);
                String s1 = mn1.getContext().getPackageName();
                mn1.lV().a(new ah(aco), b, s1);
            }

            
            {
                acm = na.this;
                aco = s;
                super(googleapiclient);
            }
        });
    }
}
