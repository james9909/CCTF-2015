// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.util.HttpUtils;
import com.snapchat.android.util.memory.Buffer;
import com.snapchat.android.util.memory.FixedByteBuffer;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NetworkResult
{
    public static class Builder
    {

        private Buffer mBuffer;
        private Exception mCaughtException;
        private String mNetworkType;
        private int mResponseCode;
        private Map mResponseHeaders;
        private String mResponseMessage;
        private final String mUrl;

        public Builder a(int l)
        {
            mResponseCode = l;
            return this;
        }

        public Builder a(Buffer buffer)
        {
            mBuffer = buffer;
            return this;
        }

        public Builder a(Exception exception)
        {
            mCaughtException = exception;
            return this;
        }

        public Builder a(String s)
        {
            mResponseMessage = s;
            return this;
        }

        public Builder a(Map map)
        {
            mResponseHeaders = map;
            return this;
        }

        public NetworkResult a()
        {
            return new NetworkResult(mUrl, mNetworkType, mResponseCode, mResponseMessage, mBuffer, mResponseHeaders, mCaughtException);
        }

        public Builder(String s, String s1)
        {
            mResponseHeaders = new HashMap();
            mUrl = s;
            mNetworkType = s1;
        }
    }


    private final Buffer mBuffer;
    private final Exception mCaughtException;
    private final String mNetworkType;
    private final int mResponseCode;
    private final Map mResponseHeaders;
    private final String mResponseMessage;
    private final String mUrl;

    public NetworkResult(int l, String s)
    {
        FixedByteBuffer fixedbytebuffer;
        if (s != null)
        {
            fixedbytebuffer = new FixedByteBuffer(s);
        } else
        {
            fixedbytebuffer = null;
        }
        this(null, null, l, null, ((Buffer) (fixedbytebuffer)), null, null);
    }

    private NetworkResult(String s, String s1, int l, String s2, Buffer buffer, Map map, Exception exception)
    {
        mUrl = s;
        mNetworkType = s1;
        mResponseCode = l;
        mResponseMessage = s2;
        mBuffer = buffer;
        mResponseHeaders = map;
        mCaughtException = exception;
    }


    public String a()
    {
        return mUrl;
    }

    public String a(String s)
    {
        List list = (List)mResponseHeaders.get(s);
        if (list != null && !list.isEmpty())
        {
            return (String)list.get(-1 + list.size());
        } else
        {
            return null;
        }
    }

    public String b()
    {
        String s;
        try
        {
            s = (new URL(mUrl)).getPath();
        }
        catch (MalformedURLException malformedurlexception)
        {
            return "";
        }
        return s;
    }

    public String c()
    {
        return mNetworkType;
    }

    public String d()
    {
        return mResponseMessage;
    }

    public int e()
    {
        if (mBuffer != null)
        {
            return mBuffer.a();
        } else
        {
            return 0;
        }
    }

    public Buffer f()
    {
        return mBuffer;
    }

    public Exception g()
    {
        return mCaughtException;
    }

    public boolean h()
    {
        return mCaughtException == null && HttpUtils.a(j());
    }

    public Map i()
    {
        return mResponseHeaders;
    }

    public int j()
    {
        return mResponseCode;
    }

    public String k()
    {
        if (mBuffer != null)
        {
            return new String(mBuffer.b(), 0, mBuffer.a(), Charset.defaultCharset());
        } else
        {
            return null;
        }
    }

    public String toString()
    {
        if (h())
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(e());
            return String.format("[Success (%s bytes)]", aobj2);
        }
        if (mCaughtException != null)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = mCaughtException;
            return String.format("[Failed %s]", aobj1);
        }
        if (mResponseCode != 0)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(mResponseCode);
            return String.format("[Failed HTTP %d]", aobj);
        } else
        {
            return "[Failed unknown]";
        }
    }
}
