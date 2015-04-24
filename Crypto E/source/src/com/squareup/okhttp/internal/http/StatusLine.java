// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Response;
import java.net.ProtocolException;

public final class StatusLine
{

    public final Protocol a;
    public final int b;
    public final String c;

    public StatusLine(Protocol protocol, int i, String s)
    {
        a = protocol;
        b = i;
        c = s;
    }

    public static StatusLine a(Response response)
    {
        return new StatusLine(response.b(), response.c(), response.d());
    }

    public static StatusLine a(String s)
    {
        byte byte0 = 9;
        Protocol protocol;
        if (s.startsWith("HTTP/1."))
        {
            if (s.length() < byte0 || s.charAt(8) != ' ')
            {
                throw new ProtocolException((new StringBuilder()).append("Unexpected status line: ").append(s).toString());
            }
            int k = -48 + s.charAt(7);
            if (k == 0)
            {
                protocol = Protocol.a;
            } else
            if (k == 1)
            {
                protocol = Protocol.b;
            } else
            {
                throw new ProtocolException((new StringBuilder()).append("Unexpected status line: ").append(s).toString());
            }
        } else
        if (s.startsWith("ICY "))
        {
            protocol = Protocol.a;
            byte0 = 4;
        } else
        {
            throw new ProtocolException((new StringBuilder()).append("Unexpected status line: ").append(s).toString());
        }
        if (s.length() < byte0 + 3)
        {
            throw new ProtocolException((new StringBuilder()).append("Unexpected status line: ").append(s).toString());
        }
        int i = byte0 + 3;
        int j;
        try
        {
            j = Integer.parseInt(s.substring(byte0, i));
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new ProtocolException((new StringBuilder()).append("Unexpected status line: ").append(s).toString());
        }
        String s1;
        if (s.length() > byte0 + 3)
        {
            if (s.charAt(byte0 + 3) != ' ')
            {
                throw new ProtocolException((new StringBuilder()).append("Unexpected status line: ").append(s).toString());
            }
            s1 = s.substring(byte0 + 4);
        } else
        {
            s1 = "";
        }
        return new StatusLine(protocol, j, s1);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s;
        if (a == Protocol.a)
        {
            s = "HTTP/1.0";
        } else
        {
            s = "HTTP/1.1";
        }
        stringbuilder.append(s);
        stringbuilder.append(' ').append(b);
        if (c != null)
        {
            stringbuilder.append(' ').append(c);
        }
        return stringbuilder.toString();
    }
}
