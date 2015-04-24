// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.text.TextUtils;

public class a extends m.a
{

    private Account DU;

    public a(Account account)
    {
        DU = account;
    }

    public static a ba(String s)
    {
        Account account;
        if (TextUtils.isEmpty(s))
        {
            account = null;
        } else
        {
            account = new Account(s, "com.google");
        }
        return new a(account);
    }

    public Account jA()
    {
        return DU;
    }
}
