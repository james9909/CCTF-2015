// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;

public class CopyUtils
{

    private static final int DEFAULT_BUFFER_SIZE = 4096;

    public CopyUtils()
    {
    }

    public static int copy(InputStream inputstream, OutputStream outputstream)
    {
        byte abyte0[] = new byte[4096];
        int i = 0;
        do
        {
            int j = inputstream.read(abyte0);
            if (-1 != j)
            {
                outputstream.write(abyte0, 0, j);
                i += j;
            } else
            {
                return i;
            }
        } while (true);
    }

    public static int copy(Reader reader, Writer writer)
    {
        char ac[] = new char[4096];
        int i = 0;
        do
        {
            int j = reader.read(ac);
            if (-1 != j)
            {
                writer.write(ac, 0, j);
                i += j;
            } else
            {
                return i;
            }
        } while (true);
    }

    public static void copy(InputStream inputstream, Writer writer)
    {
        copy(((Reader) (new InputStreamReader(inputstream))), writer);
    }

    public static void copy(InputStream inputstream, Writer writer, String s)
    {
        copy(((Reader) (new InputStreamReader(inputstream, s))), writer);
    }

    public static void copy(Reader reader, OutputStream outputstream)
    {
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(outputstream);
        copy(reader, ((Writer) (outputstreamwriter)));
        outputstreamwriter.flush();
    }

    public static void copy(String s, OutputStream outputstream)
    {
        StringReader stringreader = new StringReader(s);
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(outputstream);
        copy(((Reader) (stringreader)), ((Writer) (outputstreamwriter)));
        outputstreamwriter.flush();
    }

    public static void copy(String s, Writer writer)
    {
        writer.write(s);
    }

    public static void copy(byte abyte0[], OutputStream outputstream)
    {
        outputstream.write(abyte0);
    }

    public static void copy(byte abyte0[], Writer writer)
    {
        copy(((InputStream) (new ByteArrayInputStream(abyte0))), writer);
    }

    public static void copy(byte abyte0[], Writer writer, String s)
    {
        copy(((InputStream) (new ByteArrayInputStream(abyte0))), writer, s);
    }
}
