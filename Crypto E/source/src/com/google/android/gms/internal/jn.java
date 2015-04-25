// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ji

public class jn
{

    private static final ji MZ = new ji("MetadataUtils");
    private static final String Oi[] = {
        "Z", "+hh", "+hhmm", "+hh:mm"
    };
    private static final String Oj = (new StringBuilder()).append("yyyyMMdd'T'HHmmss").append(Oi[0]).toString();

    public static String a(Calendar calendar)
    {
        String s1;
        if (calendar == null)
        {
            MZ.b("Calendar object cannot be null", new Object[0]);
            s1 = null;
        } else
        {
            String s = Oj;
            if (calendar.get(11) == 0 && calendar.get(12) == 0 && calendar.get(13) == 0)
            {
                s = "yyyyMMdd";
            }
            SimpleDateFormat simpledateformat = new SimpleDateFormat(s);
            simpledateformat.setTimeZone(calendar.getTimeZone());
            s1 = simpledateformat.format(calendar.getTime());
            if (s1.endsWith("+0000"))
            {
                return s1.replace("+0000", Oi[0]);
            }
        }
        return s1;
    }

    public static void a(List list, JSONObject jsonobject)
    {
        JSONArray jsonarray;
        int i;
        int j;
        JSONObject jsonobject1;
        try
        {
            list.clear();
            jsonarray = jsonobject.getJSONArray("images");
            i = jsonarray.length();
        }
        catch (JSONException jsonexception)
        {
            break; /* Loop/switch isn't completed */
        }
        j = 0;
_L2:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject1 = jsonarray.getJSONObject(j);
        try
        {
            list.add(new WebImage(jsonobject1));
        }
        catch (IllegalArgumentException illegalargumentexception) { }
        j++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(JSONObject jsonobject, List list)
    {
        JSONArray jsonarray;
        if (list == null || list.isEmpty())
        {
            break MISSING_BLOCK_LABEL_65;
        }
        jsonarray = new JSONArray();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); jsonarray.put(((WebImage)iterator.next()).toJson())) { }
        jsonobject.put("images", jsonarray);
        return;
        JSONException jsonexception;
        jsonexception;
    }

    public static Calendar aS(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            MZ.b("Input string is empty or null", new Object[0]);
            return null;
        }
        String s1 = aT(s);
        if (TextUtils.isEmpty(s1))
        {
            MZ.b("Invalid date format", new Object[0]);
            return null;
        }
        String s2 = aU(s);
        String s3 = "yyyyMMdd";
        if (!TextUtils.isEmpty(s2))
        {
            s1 = (new StringBuilder()).append(s1).append("T").append(s2).toString();
            Calendar calendar;
            java.util.Date date;
            if (s2.length() == "HHmmss".length())
            {
                s3 = "yyyyMMdd'T'HHmmss";
            } else
            {
                s3 = Oj;
            }
        }
        calendar = GregorianCalendar.getInstance();
        try
        {
            date = (new SimpleDateFormat(s3)).parse(s1);
        }
        catch (ParseException parseexception)
        {
            ji ji1 = MZ;
            Object aobj[] = new Object[1];
            aobj[0] = parseexception.getMessage();
            ji1.b("Error parsing string: %s", aobj);
            return null;
        }
        calendar.setTime(date);
        return calendar;
    }

    private static String aT(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            MZ.b("Input string is empty or null", new Object[0]);
            return null;
        }
        String s1;
        try
        {
            s1 = s.substring(0, "yyyyMMdd".length());
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            ji ji1 = MZ;
            Object aobj[] = new Object[1];
            aobj[0] = indexoutofboundsexception.getMessage();
            ji1.c("Error extracting the date: %s", aobj);
            return null;
        }
        return s1;
    }

    private static String aU(String s)
    {
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        MZ.b("string is empty or null", new Object[0]);
_L7:
        return null;
_L2:
        String s1;
        int i = s.indexOf('T');
        int j = i + 1;
        if (i != "yyyyMMdd".length())
        {
            MZ.b("T delimeter is not found", new Object[0]);
            return null;
        }
        try
        {
            s1 = s.substring(j);
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            ji ji1 = MZ;
            Object aobj[] = new Object[1];
            aobj[0] = indexoutofboundsexception.getMessage();
            ji1.b("Error extracting the time substring: %s", aobj);
            return null;
        }
        if (s1.length() == "HHmmss".length())
        {
            return s1;
        }
        s1.charAt("HHmmss".length());
        JVM INSTR lookupswitch 3: default 152
    //                   43: 154
    //                   45: 154
    //                   90: 172;
           goto _L3 _L4 _L4 _L5
_L5:
        continue; /* Loop/switch isn't completed */
_L3:
        return null;
_L4:
        if (!aV(s1)) goto _L7; else goto _L6
_L6:
        return s1.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2");
        if (s1.length() != "HHmmss".length() + Oi[0].length()) goto _L7; else goto _L8
_L8:
        return (new StringBuilder()).append(s1.substring(0, -1 + s1.length())).append("+0000").toString();
    }

    private static boolean aV(String s)
    {
        int i = s.length();
        int j = "HHmmss".length();
        return i == j + Oi[1].length() || i == j + Oi[2].length() || i == j + Oi[3].length();
    }

}