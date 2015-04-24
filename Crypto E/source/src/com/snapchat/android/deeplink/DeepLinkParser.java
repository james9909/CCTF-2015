// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.deeplink;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

public class DeepLinkParser
{

    DeepLinkParser()
    {
    }

    public String a(Intent intent)
    {
        Uri uri;
        String s;
        String s1;
        if (intent != null)
        {
            if ((uri = intent.getData()) != null && ((s = uri.getPath()) != null && s.matches("/add/.+")) && (!TextUtils.isEmpty(s1 = s.substring(5)) && s1.length() <= 32))
            {
                return s1;
            }
        }
        return null;
    }

    public void b(Intent intent)
    {
        if (intent == null)
        {
            return;
        } else
        {
            intent.setData(null);
            return;
        }
    }
}
