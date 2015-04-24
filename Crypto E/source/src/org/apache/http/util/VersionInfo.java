// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

// Referenced classes of package org.apache.http.util:
//            Args

public class VersionInfo
{

    public static final String PROPERTY_MODULE = "info.module";
    public static final String PROPERTY_RELEASE = "info.release";
    public static final String PROPERTY_TIMESTAMP = "info.timestamp";
    public static final String UNAVAILABLE = "UNAVAILABLE";
    public static final String VERSION_PROPERTY_FILE = "version.properties";
    private final String infoClassloader;
    private final String infoModule;
    private final String infoPackage;
    private final String infoRelease;
    private final String infoTimestamp;

    protected VersionInfo(String s, String s1, String s2, String s3, String s4)
    {
        Args.notNull(s, "Package identifier");
        infoPackage = s;
        if (s1 == null)
        {
            s1 = "UNAVAILABLE";
        }
        infoModule = s1;
        if (s2 == null)
        {
            s2 = "UNAVAILABLE";
        }
        infoRelease = s2;
        if (s3 == null)
        {
            s3 = "UNAVAILABLE";
        }
        infoTimestamp = s3;
        if (s4 == null)
        {
            s4 = "UNAVAILABLE";
        }
        infoClassloader = s4;
    }

    protected static VersionInfo fromMap(String s, Map map, ClassLoader classloader)
    {
        Args.notNull(s, "Package identifier");
        String s1;
        String s2;
        String s3;
        if (map != null)
        {
            String s5 = (String)map.get("info.module");
            String s4;
            String s6;
            String s7;
            String s8;
            String s9;
            if (s5 != null && s5.length() < 1)
            {
                s6 = null;
            } else
            {
                s6 = s5;
            }
            s7 = (String)map.get("info.release");
            if (s7 != null && (s7.length() < 1 || s7.equals("${pom.version}")))
            {
                s8 = null;
            } else
            {
                s8 = s7;
            }
            s9 = (String)map.get("info.timestamp");
            if (s9 != null && (s9.length() < 1 || s9.equals("${mvn.timestamp}")))
            {
                s3 = null;
                s2 = s8;
                s1 = s6;
            } else
            {
                s3 = s9;
                s2 = s8;
                s1 = s6;
            }
        } else
        {
            s1 = null;
            s2 = null;
            s3 = null;
        }
        s4 = null;
        if (classloader != null)
        {
            s4 = classloader.toString();
        }
        return new VersionInfo(s, s1, s2, s3, s4);
    }

    public static String getUserAgent(String s, String s1, Class class1)
    {
        VersionInfo versioninfo = loadVersionInfo(s1, class1.getClassLoader());
        String s2;
        String s3;
        if (versioninfo != null)
        {
            s2 = versioninfo.getRelease();
        } else
        {
            s2 = "UNAVAILABLE";
        }
        s3 = System.getProperty("java.version");
        return (new StringBuilder()).append(s).append("/").append(s2).append(" (Java 1.5 minimum; Java/").append(s3).append(")").toString();
    }

    public static VersionInfo loadVersionInfo(String s, ClassLoader classloader)
    {
        Properties properties;
        InputStream inputstream;
        Args.notNull(s, "Package identifier");
        VersionInfo versioninfo;
        if (classloader == null)
        {
            classloader = Thread.currentThread().getContextClassLoader();
        }
        inputstream = classloader.getResourceAsStream((new StringBuilder()).append(s.replace('.', '/')).append("/").append("version.properties").toString());
        if (inputstream == null) goto _L2; else goto _L1
_L1:
        properties = new Properties();
        properties.load(inputstream);
        Exception exception;
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception1) { }
_L4:
        versioninfo = null;
        if (properties != null)
        {
            versioninfo = fromMap(s, properties, classloader);
        }
        return versioninfo;
        exception;
        try
        {
            inputstream.close();
            throw exception;
        }
        catch (IOException ioexception)
        {
            properties = null;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        properties = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static VersionInfo[] loadVersionInfo(String as[], ClassLoader classloader)
    {
        Args.notNull(as, "Package identifier array");
        ArrayList arraylist = new ArrayList(as.length);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            VersionInfo versioninfo = loadVersionInfo(as[j], classloader);
            if (versioninfo != null)
            {
                arraylist.add(versioninfo);
            }
        }

        return (VersionInfo[])arraylist.toArray(new VersionInfo[arraylist.size()]);
    }

    public final String getClassloader()
    {
        return infoClassloader;
    }

    public final String getModule()
    {
        return infoModule;
    }

    public final String getPackage()
    {
        return infoPackage;
    }

    public final String getRelease()
    {
        return infoRelease;
    }

    public final String getTimestamp()
    {
        return infoTimestamp;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(20 + infoPackage.length() + infoModule.length() + infoRelease.length() + infoTimestamp.length() + infoClassloader.length());
        stringbuilder.append("VersionInfo(").append(infoPackage).append(':').append(infoModule);
        if (!"UNAVAILABLE".equals(infoRelease))
        {
            stringbuilder.append(':').append(infoRelease);
        }
        if (!"UNAVAILABLE".equals(infoTimestamp))
        {
            stringbuilder.append(':').append(infoTimestamp);
        }
        stringbuilder.append(')');
        if (!"UNAVAILABLE".equals(infoClassloader))
        {
            stringbuilder.append('@').append(infoClassloader);
        }
        return stringbuilder.toString();
    }
}
