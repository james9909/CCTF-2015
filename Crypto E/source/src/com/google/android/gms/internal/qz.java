// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.Payments;

// Referenced classes of package com.google.android.gms.internal:
//            ra

public class qz
    implements Payments
{

    public qz()
    {
    }

    public void changeMaskedWallet(GoogleApiClient googleapiclient, String s, String s1, int i)
    {
        googleapiclient.a(new com.google.android.gms.wallet.Wallet.b(googleapiclient, s, s1, i) {

            final qz aDK;
            final String aDN;
            final String aDO;
            final int amV;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((ra)a1);
            }

            protected void a(ra ra1)
            {
                ra1.e(aDN, aDO, amV);
                b(Status.RQ);
            }

            
            {
                aDK = qz.this;
                aDN = s;
                aDO = s1;
                amV = i;
                super(googleapiclient);
            }
        });
    }

    public void checkForPreAuthorization(GoogleApiClient googleapiclient, int i)
    {
        googleapiclient.a(new com.google.android.gms.wallet.Wallet.b(googleapiclient, i) {

            final qz aDK;
            final int amV;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((ra)a1);
            }

            protected void a(ra ra1)
            {
                ra1.hq(amV);
                b(Status.RQ);
            }

            
            {
                aDK = qz.this;
                amV = i;
                super(googleapiclient);
            }
        });
    }

    public void loadFullWallet(GoogleApiClient googleapiclient, FullWalletRequest fullwalletrequest, int i)
    {
        googleapiclient.a(new com.google.android.gms.wallet.Wallet.b(googleapiclient, fullwalletrequest, i) {

            final qz aDK;
            final FullWalletRequest aDM;
            final int amV;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((ra)a1);
            }

            protected void a(ra ra1)
            {
                ra1.a(aDM, amV);
                b(Status.RQ);
            }

            
            {
                aDK = qz.this;
                aDM = fullwalletrequest;
                amV = i;
                super(googleapiclient);
            }
        });
    }

    public void loadMaskedWallet(GoogleApiClient googleapiclient, MaskedWalletRequest maskedwalletrequest, int i)
    {
        googleapiclient.a(new com.google.android.gms.wallet.Wallet.b(googleapiclient, maskedwalletrequest, i) {

            final qz aDK;
            final MaskedWalletRequest aDL;
            final int amV;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((ra)a1);
            }

            protected void a(ra ra1)
            {
                ra1.a(aDL, amV);
                b(Status.RQ);
            }

            
            {
                aDK = qz.this;
                aDL = maskedwalletrequest;
                amV = i;
                super(googleapiclient);
            }
        });
    }

    public void notifyTransactionStatus(GoogleApiClient googleapiclient, NotifyTransactionStatusRequest notifytransactionstatusrequest)
    {
        googleapiclient.a(new com.google.android.gms.wallet.Wallet.b(googleapiclient, notifytransactionstatusrequest) {

            final qz aDK;
            final NotifyTransactionStatusRequest aDP;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((ra)a1);
            }

            protected void a(ra ra1)
            {
                ra1.a(aDP);
                b(Status.RQ);
            }

            
            {
                aDK = qz.this;
                aDP = notifytransactionstatusrequest;
                super(googleapiclient);
            }
        });
    }
}
