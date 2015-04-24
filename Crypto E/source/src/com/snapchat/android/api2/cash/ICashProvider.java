// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import android.content.Context;
import com.snapchat.android.model.chat.CashFeedItem;
import java.util.Collection;

public interface ICashProvider
{

    public abstract String a();

    public abstract void a(Context context, String s);

    public abstract void a(CashFeedItem cashfeeditem);

    public abstract void b();

    public abstract Collection c();

    public abstract Collection d();

    public abstract Collection e();

    public abstract Collection f();

    public abstract Collection g();

    public abstract Collection h();
}
