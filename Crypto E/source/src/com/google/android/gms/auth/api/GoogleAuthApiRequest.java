// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth.api;

import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.auth.api:
//            GoogleAuthApiRequestCreator

public class GoogleAuthApiRequest
    implements SafeParcelable
{

    public static final GoogleAuthApiRequestCreator CREATOR = new GoogleAuthApiRequestCreator();
    public static final String DEFAULT_SCOPE_PREFIX = "oauth2:";
    public static final int HTTP_METHOD_DELETE = 3;
    public static final int HTTP_METHOD_GET = 0;
    public static final int HTTP_METHOD_HEAD = 4;
    public static final int HTTP_METHOD_OPTIONS = 5;
    public static final int HTTP_METHOD_PATCH = 7;
    public static final int HTTP_METHOD_POST = 1;
    public static final int HTTP_METHOD_PUT = 2;
    public static final int HTTP_METHOD_TRACE = 6;
    public static final int VERSION_CODE = 1;
    String FC;
    Bundle FD;
    String FE;
    List FF;
    String FG;
    int FH;
    Bundle FI;
    byte FJ[];
    long FK;
    String name;
    String path;
    String version;
    final int versionCode;

    GoogleAuthApiRequest(int i, String s, String s1, String s2, String s3, Bundle bundle, String s4, 
            List list, String s5, int j, Bundle bundle1, byte abyte0[], long l)
    {
        versionCode = i;
        name = s;
        version = s1;
        FC = s2;
        path = s3;
        FD = bundle;
        FE = s4;
        FF = list;
        FG = s5;
        FH = j;
        FI = bundle1;
        FJ = abyte0;
        FK = l;
    }

    public GoogleAuthApiRequest(String s, String s1, String s2)
    {
        versionCode = 1;
        name = s;
        aB(s1);
        FC = s2;
        FD = new Bundle();
        FF = new ArrayList();
        FG = "oauth2:";
        FI = new Bundle();
        FJ = new byte[0];
    }

    public GoogleAuthApiRequest(String s, String s1, String s2, int i)
    {
        versionCode = 1;
        name = s;
        aB(s1);
        setPath(s2);
        X(i);
        FD = new Bundle();
        FF = new ArrayList();
        FG = "oauth2:";
        FI = new Bundle();
        FJ = new byte[0];
    }

    private void X(int i)
    {
        if (i < 0 || i > 7)
        {
            throw new IllegalArgumentException("Invalid HTTP method.");
        } else
        {
            FH = i;
            return;
        }
    }

    private void aB(String s)
    {
        if (s.charAt(0) >= '0' && s.charAt(0) <= '9')
        {
            s = (new StringBuilder()).append("v").append(s).toString();
        }
        version = s;
    }

    private void setPath(String s)
    {
        if (s.charAt(0) == '/')
        {
            s = s.substring(1);
        }
        if (s.charAt(-1 + s.length()) == '/')
        {
            s = s.substring(0, -1 + s.length());
        }
        path = s;
    }

    public void addParameter(String s, String s1)
    {
        if (!FD.containsKey(s))
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(s1);
            FD.putStringArrayList(s, arraylist);
            return;
        } else
        {
            FD.getStringArrayList(s).add(s1);
            return;
        }
    }

    public void addScope(String s)
    {
        FF.add(s);
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAccountName()
    {
        return FE;
    }

    public String getApiId()
    {
        return FC;
    }

    public String getFullScope()
    {
        String s = getScope();
        if (s == null)
        {
            return null;
        } else
        {
            return (new StringBuilder()).append(FG).append(s).toString();
        }
    }

    public String getHeader(String s)
    {
        return FI.getString(s);
    }

    public Bundle getHeaders()
    {
        return FI;
    }

    public Map getHeadersAsMap()
    {
        HashMap hashmap = new HashMap();
        String s;
        for (Iterator iterator = FI.keySet().iterator(); iterator.hasNext(); hashmap.put(s, FI.getString(s)))
        {
            s = (String)iterator.next();
        }

        return hashmap;
    }

    public byte[] getHttpBody()
    {
        return FJ;
    }

    public JSONObject getHttpBodyAsJson()
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject(new String(FJ, "UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.e("GoogleAuthApiRequest", "Unsupported encoding error.");
            return null;
        }
        return jsonobject;
    }

    public int getHttpMethod()
    {
        return FH;
    }

    public String getName()
    {
        return name;
    }

    public Bundle getParameters()
    {
        return FD;
    }

    public Map getParametersAsMap()
    {
        HashMap hashmap = new HashMap();
        String s;
        for (Iterator iterator = FD.keySet().iterator(); iterator.hasNext(); hashmap.put(s, FD.getStringArrayList(s)))
        {
            s = (String)iterator.next();
        }

        return hashmap;
    }

    public String getPath()
    {
        return path;
    }

    public String getScope()
    {
        if (FF.size() == 0)
        {
            return null;
        }
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < FF.size(); i++)
        {
            stringbuffer.append((String)FF.get(i));
            if (i != -1 + FF.size())
            {
                stringbuffer.append(" ");
            }
        }

        return stringbuffer.toString();
    }

    public long getTimeout()
    {
        return FK;
    }

    public String getVersion()
    {
        return version;
    }

    public void putHeader(String s, String s1)
    {
        FI.putString(s, s1);
    }

    public void setAccountName(String s)
    {
        FE = s;
    }

    public void setHttpBody(String s)
    {
        try
        {
            FJ = s.getBytes("UTF-8");
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.e("GoogleAuthApiRequest", "Unsupported encoding error.");
        }
    }

    public void setTimeout(long l)
    {
        FK = l;
    }

    public String toString()
    {
        return (new StringBuilder()).append("{ API: ").append(name).append("/").append(version).append(", Scope: ").append(getFullScope()).append(", Account: ").append(getAccountName()).append(" }").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        GoogleAuthApiRequestCreator.a(this, parcel, i);
    }

}
