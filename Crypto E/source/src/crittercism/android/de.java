// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class de
{

    private SharedPreferences a;

    public de(Context context, String s)
    {
        JSONObject jsonobject;
        a = context.getSharedPreferences((new StringBuilder("com.crittercism.")).append(s).append(".usermetadata").toString(), 0);
        if (a.contains("data"))
        {
            break MISSING_BLOCK_LABEL_70;
        }
        jsonobject = new JSONObject();
        jsonobject.putOpt("username", "anonymous");
        a(jsonobject);
        return;
        JSONException jsonexception;
        jsonexception;
    }

    private void b(JSONObject jsonobject)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putString("data", jsonobject.toString());
        editor.commit();
    }

    public final JSONObject a()
    {
        String s = a.getString("data", "{}");
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject(s);
        }
        catch (JSONException jsonexception)
        {
            return new JSONObject();
        }
        return jsonobject;
    }

    public final void a(JSONObject jsonobject)
    {
        JSONObject jsonobject1 = a();
        if (jsonobject1.length() != 0) goto _L2; else goto _L1
_L1:
        if (jsonobject.length() > 0)
        {
            b(jsonobject);
            a(true);
        }
_L5:
        return;
_L2:
        Iterator iterator;
        boolean flag;
        iterator = jsonobject.keys();
        flag = false;
_L3:
        do
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            String s = (String)iterator.next();
            Object obj = jsonobject.opt(s);
            Object obj1 = jsonobject1.opt(s);
            boolean flag1;
            if (obj1 == null)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (obj1 != null)
            {
                if ((obj instanceof JSONObject) || (obj instanceof JSONArray))
                {
                    String s1 = obj.toString();
                    if (!obj1.toString().equals(s1))
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                } else
                if (!obj1.equals(obj))
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
            }
        } while (!flag1);
        jsonobject1.put(s, obj);
        flag = true;
          goto _L3
        if (!flag) goto _L5; else goto _L4
_L4:
        b(jsonobject1);
        a(true);
        return;
        JSONException jsonexception;
        jsonexception;
          goto _L3
    }

    public final void a(boolean flag)
    {
        a.edit().putBoolean("dirty", flag).commit();
    }

    public final boolean b()
    {
        return a.getBoolean("dirty", false);
    }
}
