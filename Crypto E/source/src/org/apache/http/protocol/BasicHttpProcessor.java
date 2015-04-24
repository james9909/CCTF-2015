// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.protocol:
//            HttpProcessor, HttpRequestInterceptorList, HttpResponseInterceptorList, HttpContext

public final class BasicHttpProcessor
    implements Cloneable, HttpProcessor, HttpRequestInterceptorList, HttpResponseInterceptorList
{

    protected final List requestInterceptors = new ArrayList();
    protected final List responseInterceptors = new ArrayList();

    public BasicHttpProcessor()
    {
    }

    public final void addInterceptor(HttpRequestInterceptor httprequestinterceptor)
    {
        addRequestInterceptor(httprequestinterceptor);
    }

    public final void addInterceptor(HttpRequestInterceptor httprequestinterceptor, int i)
    {
        addRequestInterceptor(httprequestinterceptor, i);
    }

    public final void addInterceptor(HttpResponseInterceptor httpresponseinterceptor)
    {
        addResponseInterceptor(httpresponseinterceptor);
    }

    public final void addInterceptor(HttpResponseInterceptor httpresponseinterceptor, int i)
    {
        addResponseInterceptor(httpresponseinterceptor, i);
    }

    public void addRequestInterceptor(HttpRequestInterceptor httprequestinterceptor)
    {
        if (httprequestinterceptor == null)
        {
            return;
        } else
        {
            requestInterceptors.add(httprequestinterceptor);
            return;
        }
    }

    public void addRequestInterceptor(HttpRequestInterceptor httprequestinterceptor, int i)
    {
        if (httprequestinterceptor == null)
        {
            return;
        } else
        {
            requestInterceptors.add(i, httprequestinterceptor);
            return;
        }
    }

    public void addResponseInterceptor(HttpResponseInterceptor httpresponseinterceptor)
    {
        if (httpresponseinterceptor == null)
        {
            return;
        } else
        {
            responseInterceptors.add(httpresponseinterceptor);
            return;
        }
    }

    public void addResponseInterceptor(HttpResponseInterceptor httpresponseinterceptor, int i)
    {
        if (httpresponseinterceptor == null)
        {
            return;
        } else
        {
            responseInterceptors.add(i, httpresponseinterceptor);
            return;
        }
    }

    public void clearInterceptors()
    {
        clearRequestInterceptors();
        clearResponseInterceptors();
    }

    public void clearRequestInterceptors()
    {
        requestInterceptors.clear();
    }

    public void clearResponseInterceptors()
    {
        responseInterceptors.clear();
    }

    public Object clone()
    {
        BasicHttpProcessor basichttpprocessor = (BasicHttpProcessor)super.clone();
        copyInterceptors(basichttpprocessor);
        return basichttpprocessor;
    }

    public BasicHttpProcessor copy()
    {
        BasicHttpProcessor basichttpprocessor = new BasicHttpProcessor();
        copyInterceptors(basichttpprocessor);
        return basichttpprocessor;
    }

    protected void copyInterceptors(BasicHttpProcessor basichttpprocessor)
    {
        basichttpprocessor.requestInterceptors.clear();
        basichttpprocessor.requestInterceptors.addAll(requestInterceptors);
        basichttpprocessor.responseInterceptors.clear();
        basichttpprocessor.responseInterceptors.addAll(responseInterceptors);
    }

    public HttpRequestInterceptor getRequestInterceptor(int i)
    {
        if (i < 0 || i >= requestInterceptors.size())
        {
            return null;
        } else
        {
            return (HttpRequestInterceptor)requestInterceptors.get(i);
        }
    }

    public int getRequestInterceptorCount()
    {
        return requestInterceptors.size();
    }

    public HttpResponseInterceptor getResponseInterceptor(int i)
    {
        if (i < 0 || i >= responseInterceptors.size())
        {
            return null;
        } else
        {
            return (HttpResponseInterceptor)responseInterceptors.get(i);
        }
    }

    public int getResponseInterceptorCount()
    {
        return responseInterceptors.size();
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        for (Iterator iterator = requestInterceptors.iterator(); iterator.hasNext(); ((HttpRequestInterceptor)iterator.next()).process(httprequest, httpcontext)) { }
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        for (Iterator iterator = responseInterceptors.iterator(); iterator.hasNext(); ((HttpResponseInterceptor)iterator.next()).process(httpresponse, httpcontext)) { }
    }

    public void removeRequestInterceptorByClass(Class class1)
    {
        Iterator iterator = requestInterceptors.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (iterator.next().getClass().equals(class1))
            {
                iterator.remove();
            }
        } while (true);
    }

    public void removeResponseInterceptorByClass(Class class1)
    {
        Iterator iterator = responseInterceptors.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (iterator.next().getClass().equals(class1))
            {
                iterator.remove();
            }
        } while (true);
    }

    public void setInterceptors(List list)
    {
        Args.notNull(list, "Inteceptor list");
        requestInterceptors.clear();
        responseInterceptors.clear();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = iterator.next();
            if (obj instanceof HttpRequestInterceptor)
            {
                addInterceptor((HttpRequestInterceptor)obj);
            }
            if (obj instanceof HttpResponseInterceptor)
            {
                addInterceptor((HttpResponseInterceptor)obj);
            }
        } while (true);
    }
}
