// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import org.apache.http.config.ConnectionConfig;

public final class ConnSupport
{

    public ConnSupport()
    {
    }

    public static CharsetDecoder createDecoder(ConnectionConfig connectionconfig)
    {
        if (connectionconfig == null)
        {
            return null;
        }
        Charset charset = connectionconfig.getCharset();
        CodingErrorAction codingerroraction = connectionconfig.getMalformedInputAction();
        CodingErrorAction codingerroraction1 = connectionconfig.getUnmappableInputAction();
        if (charset != null)
        {
            CharsetDecoder charsetdecoder = charset.newDecoder();
            CharsetDecoder charsetdecoder1;
            CodingErrorAction codingerroraction2;
            if (codingerroraction == null)
            {
                codingerroraction = CodingErrorAction.REPORT;
            }
            charsetdecoder1 = charsetdecoder.onMalformedInput(codingerroraction);
            if (codingerroraction1 != null)
            {
                codingerroraction2 = codingerroraction1;
            } else
            {
                codingerroraction2 = CodingErrorAction.REPORT;
            }
            return charsetdecoder1.onUnmappableCharacter(codingerroraction2);
        } else
        {
            return null;
        }
    }

    public static CharsetEncoder createEncoder(ConnectionConfig connectionconfig)
    {
        Charset charset;
        if (connectionconfig != null)
        {
            if ((charset = connectionconfig.getCharset()) != null)
            {
                CodingErrorAction codingerroraction = connectionconfig.getMalformedInputAction();
                CodingErrorAction codingerroraction1 = connectionconfig.getUnmappableInputAction();
                CharsetEncoder charsetencoder = charset.newEncoder();
                CharsetEncoder charsetencoder1;
                CodingErrorAction codingerroraction2;
                if (codingerroraction == null)
                {
                    codingerroraction = CodingErrorAction.REPORT;
                }
                charsetencoder1 = charsetencoder.onMalformedInput(codingerroraction);
                if (codingerroraction1 != null)
                {
                    codingerroraction2 = codingerroraction1;
                } else
                {
                    codingerroraction2 = CodingErrorAction.REPORT;
                }
                return charsetencoder1.onUnmappableCharacter(codingerroraction2);
            }
        }
        return null;
    }
}
