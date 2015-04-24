// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hf

public final class es
{

    public static String H(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = (new JSONObject(s)).getString("developerPayload");
        }
        catch (JSONException jsonexception)
        {
            hf.X("Fail to parse purchase data");
            return null;
        }
        return s1;
    }

    public static String I(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = (new JSONObject(s)).getString("purchaseToken");
        }
        catch (JSONException jsonexception)
        {
            hf.X("Fail to parse purchase data");
            return null;
        }
        return s1;
    }

    public static int d(Intent intent)
    {
        Object obj = intent.getExtras().get("RESPONSE_CODE");
        if (obj == null)
        {
            hf.X("Intent with no response code, assuming OK (known issue)");
            return 0;
        }
        if (obj instanceof Integer)
        {
            return ((Integer)obj).intValue();
        }
        if (obj instanceof Long)
        {
            return (int)((Long)obj).longValue();
        } else
        {
            hf.X((new StringBuilder()).append("Unexpected type for intent response code. ").append(obj.getClass().getName()).toString());
            return 5;
        }
    }

    public static String e(Intent intent)
    {
        if (intent == null)
        {
            return null;
        } else
        {
            return intent.getStringExtra("INAPP_PURCHASE_DATA");
        }
    }

    public static int f(Bundle bundle)
    {
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null)
        {
            hf.X("Bundle with null response code, assuming OK (known issue)");
            return 0;
        }
        if (obj instanceof Integer)
        {
            return ((Integer)obj).intValue();
        }
        if (obj instanceof Long)
        {
            return (int)((Long)obj).longValue();
        } else
        {
            hf.X((new StringBuilder()).append("Unexpected type for intent response code. ").append(obj.getClass().getName()).toString());
            return 5;
        }
    }

    public static String f(Intent intent)
    {
        if (intent == null)
        {
            return null;
        } else
        {
            return intent.getStringExtra("INAPP_DATA_SIGNATURE");
        }
    }
}
