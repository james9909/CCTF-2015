// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.internal:
//            im

static class EK
    implements com.google.android.gms.appindexing.nkingApi.TranslatedUriResult, Result
{

    private final String CN;
    private final String DV;
    private final Status EI;
    private final Uri EJ;
    private final int EK;
    private final Uri mUri;

    public String getAction()
    {
        return CN;
    }

    public Intent getAsIntent()
    {
        Intent intent = (new Intent("android.intent.action.VIEW")).addCategory("android.intent.category.BROWSABLE");
        if (getStatus() != null && getStatus().isSuccess())
        {
            intent.setData(mUri);
            if (!TextUtils.isEmpty(DV))
            {
                intent.setPackage(DV);
            }
        } else
        {
            intent.setData(getOriginalUri());
        }
        if (!TextUtils.isEmpty(CN))
        {
            intent.setAction(CN);
        }
        if (intent.getData() != null)
        {
            return intent;
        } else
        {
            return null;
        }
    }

    public Uri getOriginalUri()
    {
        return EJ;
    }

    public String getPackageName()
    {
        return DV;
    }

    public Status getStatus()
    {
        return EI;
    }

    public Uri getUri()
    {
        return mUri;
    }

    public int getVerificationStatus()
    {
        return EK;
    }

    public tus(Status status, Uri uri, Uri uri1, String s, String s1, int i)
    {
        EI = status;
        EJ = uri;
        mUri = uri1;
        DV = s;
        CN = s1;
        EK = i;
    }
}
