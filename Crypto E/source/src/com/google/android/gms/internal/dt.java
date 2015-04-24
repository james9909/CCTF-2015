// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

// Referenced classes of package com.google.android.gms.internal:
//            hf, dv, ec

public final class dt
{

    public static boolean a(Context context, dv dv1, ec ec1)
    {
        if (dv1 == null)
        {
            hf.X("No intent data for launcher overlay.");
            return false;
        }
        Intent intent = new Intent();
        if (TextUtils.isEmpty(dv1.st))
        {
            hf.X("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(dv1.mimeType))
        {
            intent.setDataAndType(Uri.parse(dv1.st), dv1.mimeType);
        } else
        {
            intent.setData(Uri.parse(dv1.st));
        }
        intent.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(dv1.packageName))
        {
            intent.setPackage(dv1.packageName);
        }
        if (!TextUtils.isEmpty(dv1.su))
        {
            String as[] = dv1.su.split("/", 2);
            if (as.length < 2)
            {
                hf.X((new StringBuilder()).append("Could not parse component name from open GMSG: ").append(dv1.su).toString());
                return false;
            }
            intent.setClassName(as[0], as[1]);
        }
        try
        {
            hf.W((new StringBuilder()).append("Launching an intent: ").append(intent).toString());
            context.startActivity(intent);
            ec1.ad();
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            hf.X(activitynotfoundexception.getMessage());
            return false;
        }
        return true;
    }
}
