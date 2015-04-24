// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl;

import java.util.Locale;
import org.apache.http.ReasonPhraseCatalog;
import org.apache.http.util.Args;

public class EnglishReasonPhraseCatalog
    implements ReasonPhraseCatalog
{

    public static final EnglishReasonPhraseCatalog INSTANCE = new EnglishReasonPhraseCatalog();
    private static final String REASON_PHRASES[][];

    protected EnglishReasonPhraseCatalog()
    {
    }

    private static void setReason(int i, String s)
    {
        int j = i / 100;
        int k = i - j * 100;
        REASON_PHRASES[j][k] = s;
    }

    public String getReason(int i, Locale locale)
    {
        boolean flag;
        int j;
        int k;
        int l;
        String s;
        if (i >= 100 && i < 600)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Args.check(flag, (new StringBuilder()).append("Unknown category for status code ").append(i).toString());
        j = i / 100;
        k = i - j * 100;
        l = REASON_PHRASES[j].length;
        s = null;
        if (l > k)
        {
            s = REASON_PHRASES[j][k];
        }
        return s;
    }

    static 
    {
        String as[][] = new String[6][];
        as[0] = null;
        as[1] = new String[3];
        as[2] = new String[8];
        as[3] = new String[8];
        as[4] = new String[25];
        as[5] = new String[8];
        REASON_PHRASES = as;
        setReason(200, "OK");
        setReason(201, "Created");
        setReason(202, "Accepted");
        setReason(204, "No Content");
        setReason(301, "Moved Permanently");
        setReason(302, "Moved Temporarily");
        setReason(304, "Not Modified");
        setReason(400, "Bad Request");
        setReason(401, "Unauthorized");
        setReason(403, "Forbidden");
        setReason(404, "Not Found");
        setReason(500, "Internal Server Error");
        setReason(501, "Not Implemented");
        setReason(502, "Bad Gateway");
        setReason(503, "Service Unavailable");
        setReason(100, "Continue");
        setReason(307, "Temporary Redirect");
        setReason(405, "Method Not Allowed");
        setReason(409, "Conflict");
        setReason(412, "Precondition Failed");
        setReason(413, "Request Too Long");
        setReason(414, "Request-URI Too Long");
        setReason(415, "Unsupported Media Type");
        setReason(300, "Multiple Choices");
        setReason(303, "See Other");
        setReason(305, "Use Proxy");
        setReason(402, "Payment Required");
        setReason(406, "Not Acceptable");
        setReason(407, "Proxy Authentication Required");
        setReason(408, "Request Timeout");
        setReason(101, "Switching Protocols");
        setReason(203, "Non Authoritative Information");
        setReason(205, "Reset Content");
        setReason(206, "Partial Content");
        setReason(504, "Gateway Timeout");
        setReason(505, "Http Version Not Supported");
        setReason(410, "Gone");
        setReason(411, "Length Required");
        setReason(416, "Requested Range Not Satisfiable");
        setReason(417, "Expectation Failed");
        setReason(102, "Processing");
        setReason(207, "Multi-Status");
        setReason(422, "Unprocessable Entity");
        setReason(419, "Insufficient Space On Resource");
        setReason(420, "Method Failure");
        setReason(423, "Locked");
        setReason(507, "Insufficient Storage");
        setReason(424, "Failed Dependency");
    }
}
