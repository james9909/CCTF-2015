// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.yorick;

import android.text.TextUtils;
import android.util.Pair;
import java.util.ArrayList;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.snapchat.yorick:
//            AnrError, Timber

public static class a
{

    private static final Pattern a = Pattern.compile("\\((.*?)\\)");
    private static final Pattern b = Pattern.compile("\\s+at\\s.+");
    private String c;
    private StackTraceElement d[];

    public a a(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            c = "NO STACK TRACE PROVIDED";
        } else
        {
            c = s;
            String as[] = TextUtils.split(s, "\n");
            if (as.length > 1)
            {
                ArrayList arraylist = new ArrayList();
                int i = 1;
                StackTraceElement stacktraceelement = null;
                StackTraceElement stacktraceelement1 = null;
                while (i < as.length) 
                {
                    if (!TextUtils.isEmpty(as[i]))
                    {
                        StackTraceElement stacktraceelement3 = c(as[i]);
                        if (stacktraceelement == null && as[i].contains("com.snapchat"))
                        {
                            stacktraceelement = stacktraceelement3;
                        }
                        if (stacktraceelement1 == null && b(as[i]))
                        {
                            stacktraceelement1 = stacktraceelement3;
                        }
                        arraylist.add(stacktraceelement3);
                    }
                    StackTraceElement stacktraceelement2 = stacktraceelement;
                    i++;
                    stacktraceelement = stacktraceelement2;
                }
                c = a(stacktraceelement, stacktraceelement1, as[0]);
                if (!arraylist.isEmpty())
                {
                    d = (StackTraceElement[])arraylist.toArray(new StackTraceElement[0]);
                    return this;
                } else
                {
                    d = null;
                    return this;
                }
            }
        }
        return this;
    }

    public AnrError a()
    {
        AnrError anrerror = new AnrError(c, null);
        if (d != null)
        {
            anrerror.setStackTrace(d);
        }
        Timber.a((new StringBuilder()).append("Created an error ").append(anrerror).toString(), new Object[0]);
        return anrerror;
    }

    protected String a(StackTraceElement stacktraceelement, StackTraceElement stacktraceelement1, String s)
    {
        if (stacktraceelement != null)
        {
            s = stacktraceelement.toString();
        } else
        if (stacktraceelement1 != null)
        {
            return stacktraceelement1.toString();
        }
        return s;
    }

    protected boolean b(String s)
    {
        return b.matcher(s).matches();
    }

    protected StackTraceElement c(String s)
    {
        Matcher matcher = a.matcher(s);
        if (!TextUtils.isEmpty(s) && b.matcher(s).matches() && matcher.find())
        {
            String s1 = s.replaceFirst("\\s+at\\s+", "");
            String s2 = matcher.group();
            Pair pair = d(s1.replace(s2, ""));
            Pair pair1 = e(s2);
            return new StackTraceElement((String)pair.first, (String)pair.second, (String)pair1.first, ((Integer)pair1.second).intValue());
        } else
        {
            return new StackTraceElement(s, "", null, -1);
        }
    }

    protected Pair d(String s)
    {
        String as[];
        String s1;
        if (TextUtils.isEmpty(s))
        {
            as = new String[0];
        } else
        {
            as = s.split("\\.");
        }
        if (as.length == 1)
        {
            s1 = "";
        } else
        if (as.length >= 2)
        {
            s1 = as[-1 + as.length];
            s = s.substring(0, -1 + (s.length() - s1.length()));
        } else
        {
            s1 = "";
            s = "";
        }
        return Pair.create(s, s1);
    }

    protected Pair e(String s)
    {
        int i;
        StringTokenizer stringtokenizer;
        i = -1;
        if (s.length() >= 2)
        {
            s = s.substring(1, -1 + s.length());
        }
        stringtokenizer = new StringTokenizer(s, ":~");
        if (stringtokenizer.countTokens() != 2) goto _L2; else goto _L1
_L1:
        s = stringtokenizer.nextToken();
        String s1 = stringtokenizer.nextToken();
        boolean flag;
        int j;
        try
        {
            flag = TextUtils.isEmpty(s1);
        }
        catch (NumberFormatException numberformatexception)
        {
            numberformatexception.printStackTrace();
            continue; /* Loop/switch isn't completed */
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        return Pair.create(s, Integer.valueOf(i));
_L4:
        j = Integer.parseInt(s1);
        i = j;
        continue; /* Loop/switch isn't completed */
_L2:
        if ("Native Method".equalsIgnoreCase(s))
        {
            i = -2;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }


    public ()
    {
    }

    public (String s)
    {
        a(s);
    }
}
