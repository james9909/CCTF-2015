// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

// Referenced classes of package com.google.android.gms.internal:
//            gw, hf

public class hc
{
    public static interface a
    {

        public abstract Object b(InputStream inputstream);

        public abstract Object da();
    }


    public static final a xK = new a() {

        public Object b(InputStream inputstream)
        {
            return c(inputstream);
        }

        public Void c(InputStream inputstream)
        {
            return null;
        }

        public Void dI()
        {
            return null;
        }

        public Object da()
        {
            return dI();
        }

    };

    public hc()
    {
    }

    public Future a(String s, a a1)
    {
        return gw.submit(new Callable(s, a1) {

            final String xL;
            final a xM;
            final hc xN;

            public Object call()
            {
                HttpURLConnection httpurlconnection = null;
                HttpURLConnection httpurlconnection1 = (HttpURLConnection)(new URL(xL)).openConnection();
                int i;
                httpurlconnection1.connect();
                i = httpurlconnection1.getResponseCode();
                if (i < 200 || i > 299)
                {
                    break MISSING_BLOCK_LABEL_78;
                }
                Object obj = xM.b(httpurlconnection1.getInputStream());
                if (httpurlconnection1 != null)
                {
                    httpurlconnection1.disconnect();
                }
                return obj;
                if (httpurlconnection1 != null)
                {
                    httpurlconnection1.disconnect();
                }
_L1:
                return xM.da();
                MalformedURLException malformedurlexception;
                malformedurlexception;
_L5:
                hf.d("Error making HTTP request.", malformedurlexception);
                if (httpurlconnection != null)
                {
                    httpurlconnection.disconnect();
                }
                  goto _L1
                IOException ioexception;
                ioexception;
_L4:
                hf.d("Error making HTTP request.", ioexception);
                if (httpurlconnection != null)
                {
                    httpurlconnection.disconnect();
                }
                  goto _L1
                Exception exception;
                exception;
_L3:
                if (httpurlconnection != null)
                {
                    httpurlconnection.disconnect();
                }
                throw exception;
                Exception exception1;
                exception1;
                httpurlconnection = httpurlconnection1;
                exception = exception1;
                if (true) goto _L3; else goto _L2
_L2:
                IOException ioexception1;
                ioexception1;
                httpurlconnection = httpurlconnection1;
                ioexception = ioexception1;
                  goto _L4
                MalformedURLException malformedurlexception1;
                malformedurlexception1;
                httpurlconnection = httpurlconnection1;
                malformedurlexception = malformedurlexception1;
                  goto _L5
            }

            
            {
                xN = hc.this;
                xL = s;
                xM = a1;
                super();
            }
        });
    }

}
