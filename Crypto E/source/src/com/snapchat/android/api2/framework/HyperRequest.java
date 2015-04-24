// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.memory.Buffer;
import com.snapchat.android.util.memory.DynamicByteBuffer;
import com.snapchat.android.util.network.HttpHeaderUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

// Referenced classes of package com.snapchat.android.api2.framework:
//            HyperRequestDependencyProvider, NetworkResult, HttpMethod

public abstract class HyperRequest
{
    public static class ClassCallbackPair
    {

        final Class mClass;
        final JsonCallback mJsonCallback;

        ClassCallbackPair(Class class1, JsonCallback jsoncallback)
        {
            mClass = class1;
            mJsonCallback = jsoncallback;
        }
    }

    public static interface JsonCallback
    {

        public abstract void a(Object obj, NetworkResult networkresult);
    }


    private static final int DEFAULT_RESPONSE_SIZE = 1024;
    public final GsonWrapper mGsonWrapper;
    protected List mJsonCallbacks;
    public final HyperRequestDependencyProvider mProvider = new HyperRequestDependencyProvider();

    public HyperRequest()
    {
        mJsonCallbacks = new ArrayList();
        mGsonWrapper = mProvider.b();
    }

    protected Object a(ClassCallbackPair classcallbackpair, String s)
    {
        Class class1 = classcallbackpair.mClass;
        return mGsonWrapper.a(s, class1, true);
    }

    protected void a(ClassCallbackPair classcallbackpair, NetworkResult networkresult)
    {
        Exception exception = networkresult.g();
        Object obj = null;
        if (exception == null)
        {
            obj = a(classcallbackpair, networkresult.k());
        }
        classcallbackpair.mJsonCallback.a(obj, networkresult);
    }

    public void a(NetworkResult networkresult)
    {
        for (Iterator iterator = mJsonCallbacks.iterator(); iterator.hasNext(); a((ClassCallbackPair)iterator.next(), networkresult)) { }
    }

    public final void a(Class class1, JsonCallback jsoncallback)
    {
        mJsonCallbacks.add(new ClassCallbackPair(class1, jsoncallback));
    }

    public abstract Object b();

    public HttpMethod c()
    {
        return HttpMethod.POST;
    }

    public Buffer f_()
    {
        return new DynamicByteBuffer(1024);
    }

    public List j()
    {
        return mJsonCallbacks;
    }

    public Map j_()
    {
        TreeMap treemap = new TreeMap();
        treemap.put("User-Agent", HttpHeaderUtils.a());
        treemap.put("Accept-Language", HttpHeaderUtils.b());
        treemap.put("Accept-Locale", Locale.getDefault().toString());
        return treemap;
    }

    public abstract String m_();
}
