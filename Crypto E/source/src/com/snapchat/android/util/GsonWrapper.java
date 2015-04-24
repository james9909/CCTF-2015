// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.util.crypto.CbcKeyAndIvWrapper;
import com.snapchat.android.util.crypto.CbcKeyAndIvWrapperAdapter;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKey;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeyAdapter;
import com.snapchat.android.util.debug.GracefulExceptionHandler;
import java.lang.reflect.Type;

public class GsonWrapper
{

    private final Gson a = a();
    private final GracefulExceptionHandler b;

    protected GsonWrapper(GracefulExceptionHandler gracefulexceptionhandler)
    {
        b = gracefulexceptionhandler;
    }

    private Gson a()
    {
        return (new GsonBuilder()).registerTypeAdapter(com/snapchat/android/util/crypto/CbcKeyAndIvWrapper, (new CbcKeyAndIvWrapperAdapter()).nullSafe()).registerTypeAdapter(com/snapchat/android/util/crypto/SlightlySecurePreferencesKey, new SlightlySecurePreferencesKeyAdapter()).enableComplexMapKeySerialization().create();
    }

    private void a(String s, Throwable throwable)
    {
        JsonSyntaxException jsonsyntaxexception = new JsonSyntaxException((new StringBuilder()).append("Error parsing Json: ").append(s).toString(), throwable);
        b.a(jsonsyntaxexception);
    }

    public Object a(String s, Class class1)
    {
        return a(s, class1, false);
    }

    public Object a(String s, Class class1, boolean flag)
    {
        Object obj1 = a.fromJson(s, class1);
        return obj1;
        Object obj;
        obj;
_L2:
        if (!flag)
        {
            a(s, ((Throwable) (obj)));
        }
        return null;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Object a(String s, Type type)
    {
        return a(s, type, false);
    }

    public Object a(String s, Type type, boolean flag)
    {
        Object obj1 = a.fromJson(s, type);
        return obj1;
        Object obj;
        obj;
_L2:
        if (!flag)
        {
            a(s, ((Throwable) (obj)));
        }
        return null;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String a(Object obj)
    {
        String s;
        try
        {
            s = a.toJson(obj);
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            throw new UnsupportedOperationException("Failed to serialize object. (You might be trying to serialize a mock).", unsupportedoperationexception);
        }
        return s;
    }
}
