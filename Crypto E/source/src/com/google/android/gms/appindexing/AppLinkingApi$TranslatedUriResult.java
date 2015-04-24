// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appindexing;

import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.api.Result;

// Referenced classes of package com.google.android.gms.appindexing:
//            AppLinkingApi

public static interface 
    extends Result
{

    public static final int UNDEFINED = 0;
    public static final int UNVERIFIED = 2;
    public static final int VERIFIED = 1;

    public abstract String getAction();

    public abstract Intent getAsIntent();

    public abstract Uri getOriginalUri();

    public abstract String getPackageName();

    public abstract Uri getUri();

    public abstract int getVerificationStatus();
}
