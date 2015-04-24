// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.ErrorMetric;
import java.util.Locale;
import java.util.UnknownFormatConversionException;

// Referenced classes of package com.snapchat.android.util:
//            GsonUtil

public abstract class LocalizationUtils
{

    private LocalizationUtils()
    {
    }

    public static transient String a(int i, Object aobj[])
    {
        return a(null, i, aobj);
    }

    public static transient String a(Context context, int i, Object aobj[])
    {
        if (context == null)
        {
            context = SnapchatApplication.e();
        }
        String s;
        try
        {
            s = context.getString(i, aobj);
        }
        catch (UnknownFormatConversionException unknownformatconversionexception)
        {
            ErrorMetric errormetric = new ErrorMetric("Invalid string resource");
            errormetric.a(unknownformatconversionexception);
            errormetric.a("string", a(context, i, new Object[0]));
            errormetric.a("displayLanguage", Locale.getDefault().getDisplayLanguage());
            errormetric.a("arguments", GsonUtil.a().toJson(((Object) (aobj))));
            errormetric.c();
            return "error :(";
        }
        return s;
    }

    public static boolean a()
    {
        return TextUtils.equals(Locale.getDefault().getCountry(), Locale.US.getCountry());
    }
}
