// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.yorick;

import android.text.TextUtils;
import java.io.BufferedReader;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

// Referenced classes of package com.snapchat.yorick:
//            ParsedTrace

class TraceParser
{

    private final String a;

    TraceParser(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            a = s;
            return;
        }
    }

    private void d(BufferedReader bufferedreader)
    {
        String s;
        do
        {
            s = bufferedreader.readLine();
            if (s == null)
            {
                return;
            }
        } while (!s.matches("\"main\" .*"));
    }

    private String e(BufferedReader bufferedreader)
    {
        String s;
        do
        {
            s = bufferedreader.readLine();
        } while (s != null && s.matches("  \\| .*"));
        return s;
    }

    ParsedTrace a(BufferedReader bufferedreader)
    {
        long l = b(bufferedreader);
        String s;
        if (l != -1L)
        {
            if (!TextUtils.isEmpty(s = c(bufferedreader)) && !s.contains("android.os.MessageQueue.nativePollOnce(Native Method)"))
            {
                return new ParsedTrace(l, s);
            }
        }
        return null;
    }

    DateTime a(String s)
    {
        String s1 = s.split("----- .*at ")[1].split(" -----")[0];
        return DateTimeFormat.a("yyyy-MM-dd HH:mm:ss").b(s1);
    }

    long b(BufferedReader bufferedreader)
    {
        String s = "";
        do
        {
            String s1 = bufferedreader.readLine();
            if (s1 == null)
            {
                return -1L;
            }
            if (s1.equals((new StringBuilder()).append("Cmd line: ").append(a).toString()))
            {
                return a(s).x_();
            }
            s = s1;
        } while (true);
    }

    String c(BufferedReader bufferedreader)
    {
        d(bufferedreader);
        String s = e(bufferedreader);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AppNotRespondingError\n");
        for (; s != null && !s.matches(" *"); s = bufferedreader.readLine())
        {
            stringbuilder.append(s);
            stringbuilder.append('\n');
        }

        return stringbuilder.toString();
    }
}
