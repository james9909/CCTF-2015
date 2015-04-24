// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.utils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.Scanner;
import net.hockeyapp.android.UpdateInfoListener;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class VersionHelper
{

    ArrayList a;
    JSONObject b;
    UpdateInfoListener c;

    public VersionHelper(String s, UpdateInfoListener updateinfolistener)
    {
        c = updateinfolistener;
        a(s);
        c();
    }

    public static int a(String s, String s1)
    {
        byte byte0 = -1;
        if (s != null && s1 != null) goto _L2; else goto _L1
_L1:
        byte0 = 0;
_L6:
        return byte0;
_L2:
        Scanner scanner;
        Scanner scanner1;
        scanner = new Scanner(s.replaceAll("\\-.*", ""));
        scanner1 = new Scanner(s1.replaceAll("\\-.*", ""));
        scanner.useDelimiter("\\.");
        scanner1.useDelimiter("\\.");
_L4:
        int i;
        int j;
        if (!scanner.hasNextInt() || !scanner1.hasNextInt())
        {
            break MISSING_BLOCK_LABEL_106;
        }
        i = scanner.nextInt();
        j = scanner1.nextInt();
        if (i < j)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (i <= j) goto _L4; else goto _L3
_L3:
        return 1;
        if (scanner.hasNextInt())
        {
            return 1;
        }
        boolean flag;
        try
        {
            flag = scanner1.hasNextInt();
        }
        catch (Exception exception)
        {
            return 0;
        }
        if (!flag)
        {
            return 0;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static int a(JSONObject jsonobject, String s, int i)
    {
        int j;
        try
        {
            j = jsonobject.getInt(s);
        }
        catch (JSONException jsonexception)
        {
            return i;
        }
        return j;
    }

    private String a(int i, JSONObject jsonobject)
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s = a(jsonobject);
        if (s.length() > 0)
        {
            stringbuilder.append((new StringBuilder()).append("<a href='restore:").append(s).append("'  style='background: #c8c8c8; color: #000; display: block; float: right; padding: 7px; margin: 0px 10px 10px; text-decoration: none;'>Restore</a>").toString());
        }
        return stringbuilder.toString();
    }

    private String a(JSONObject jsonobject)
    {
        String s;
        try
        {
            s = jsonobject.getString("id");
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s;
    }

    private static String a(JSONObject jsonobject, String s, String s1)
    {
        String s2;
        try
        {
            s2 = jsonobject.getString(s);
        }
        catch (JSONException jsonexception)
        {
            return s1;
        }
        return s2;
    }

    private void a(String s)
    {
        b = new JSONObject();
        a = new ArrayList();
        JSONArray jsonarray;
        int i;
        int j;
        JSONObject jsonobject;
        try
        {
            jsonarray = new JSONArray(s);
            i = c.e();
        }
        catch (JSONException jsonexception)
        {
            return;
        }
        catch (NullPointerException nullpointerexception)
        {
            break; /* Loop/switch isn't completed */
        }
        j = 0;
        if (j >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject = jsonarray.getJSONObject(j);
        if (jsonobject.getInt("version") > i)
        {
            b = jsonobject;
            i = jsonobject.getInt("version");
        }
        a.add(jsonobject);
        j++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_45;
_L1:
    }

    private int b(JSONObject jsonobject)
    {
        int i;
        try
        {
            i = jsonobject.getInt("version");
        }
        catch (JSONException jsonexception)
        {
            return 0;
        }
        return i;
    }

    private String b(int i, JSONObject jsonobject)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int j = b(jsonobject);
        String s = c(jsonobject);
        stringbuilder.append("<div style='padding: 20px 10px 10px;'><strong>");
        if (i == 0)
        {
            stringbuilder.append("Newest version:");
        } else
        {
            int k = c.e();
            StringBuilder stringbuilder1 = (new StringBuilder()).append("Version ").append(s).append(" (").append(j).append("): ");
            String s1;
            if (j == k)
            {
                s1 = "[INSTALLED]";
            } else
            {
                s1 = "";
            }
            stringbuilder.append(stringbuilder1.append(s1).toString());
        }
        stringbuilder.append("</strong></div>");
        return stringbuilder.toString();
    }

    private String c(int i, JSONObject jsonobject)
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s = a(jsonobject, "notes", "");
        stringbuilder.append("<div style='padding: 0px 10px;'>");
        if (s.trim().length() == 0)
        {
            stringbuilder.append("<em>No information.</em>");
        } else
        {
            stringbuilder.append(s);
        }
        stringbuilder.append("</div>");
        return stringbuilder.toString();
    }

    private String c(JSONObject jsonobject)
    {
        String s;
        try
        {
            s = jsonobject.getString("shortversion");
        }
        catch (JSONException jsonexception)
        {
            return "";
        }
        return s;
    }

    private void c()
    {
        Collections.sort(a, new Comparator() {

            final VersionHelper a;

            public int a(JSONObject jsonobject, JSONObject jsonobject1)
            {
                int i;
                int j;
                try
                {
                    i = jsonobject.getInt("version");
                    j = jsonobject1.getInt("version");
                }
                catch (JSONException jsonexception)
                {
                    return 0;
                }
                catch (NullPointerException nullpointerexception)
                {
                    return 0;
                }
                if (i <= j);
                return 0;
            }

            public int compare(Object obj, Object obj1)
            {
                return a((JSONObject)obj, (JSONObject)obj1);
            }

            
            {
                a = VersionHelper.this;
                super();
            }
        });
    }

    private Object d()
    {
        return "<hr style='border-top: 1px solid #c8c8c8; border-bottom: 0px; margin: 40px 10px 0px 10px;' />";
    }

    public String a()
    {
        return (new StringBuilder()).append(a(b, "shortversion", "")).append(" (").append(a(b, "version", "")).append(")").toString();
    }

    public String a(boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<html>");
        stringbuilder.append("<body style='padding: 0px 0px 20px 0px'>");
        Iterator iterator = a.iterator();
        for (int i = 0; iterator.hasNext(); i++)
        {
            JSONObject jsonobject = (JSONObject)iterator.next();
            if (i > 0)
            {
                stringbuilder.append(d());
                if (flag)
                {
                    stringbuilder.append(a(i, jsonobject));
                }
            }
            stringbuilder.append(b(i, jsonobject));
            stringbuilder.append(c(i, jsonobject));
        }

        stringbuilder.append("</body>");
        stringbuilder.append("</html>");
        return stringbuilder.toString();
    }

    public String b()
    {
        int i = a(b, "appsize", 0);
        Date date = new Date(1000L * (long)a(b, "timestamp", 0));
        SimpleDateFormat simpledateformat = new SimpleDateFormat("dd.MM.yyyy");
        StringBuilder stringbuilder = (new StringBuilder()).append(simpledateformat.format(date)).append(" - ");
        Object aobj[] = new Object[1];
        aobj[0] = Float.valueOf((float)i / 1024F / 1024F);
        return stringbuilder.append(String.format("%.2f", aobj)).append(" MB").toString();
    }
}
