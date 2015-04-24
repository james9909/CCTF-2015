// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

public class FileWriterWithEncoding extends Writer
{

    private final Writer out;

    public FileWriterWithEncoding(File file, String s)
    {
        this(file, s, false);
    }

    public FileWriterWithEncoding(File file, String s, boolean flag)
    {
        out = initWriter(file, s, flag);
    }

    public FileWriterWithEncoding(File file, Charset charset)
    {
        this(file, charset, false);
    }

    public FileWriterWithEncoding(File file, Charset charset, boolean flag)
    {
        out = initWriter(file, charset, flag);
    }

    public FileWriterWithEncoding(File file, CharsetEncoder charsetencoder)
    {
        this(file, charsetencoder, false);
    }

    public FileWriterWithEncoding(File file, CharsetEncoder charsetencoder, boolean flag)
    {
        out = initWriter(file, charsetencoder, flag);
    }

    public FileWriterWithEncoding(String s, String s1)
    {
        this(new File(s), s1, false);
    }

    public FileWriterWithEncoding(String s, String s1, boolean flag)
    {
        this(new File(s), s1, flag);
    }

    public FileWriterWithEncoding(String s, Charset charset)
    {
        this(new File(s), charset, false);
    }

    public FileWriterWithEncoding(String s, Charset charset, boolean flag)
    {
        this(new File(s), charset, flag);
    }

    public FileWriterWithEncoding(String s, CharsetEncoder charsetencoder)
    {
        this(new File(s), charsetencoder, false);
    }

    public FileWriterWithEncoding(String s, CharsetEncoder charsetencoder, boolean flag)
    {
        this(new File(s), charsetencoder, flag);
    }

    private static Writer initWriter(File file, Object obj, boolean flag)
    {
        boolean flag1;
        if (file == null)
        {
            throw new NullPointerException("File is missing");
        }
        if (obj == null)
        {
            throw new NullPointerException("Encoding is missing");
        }
        flag1 = file.exists();
        FileOutputStream fileoutputstream = new FileOutputStream(file, flag);
        if (obj instanceof Charset)
        {
            return new OutputStreamWriter(fileoutputstream, (Charset)obj);
        }
        if (!(obj instanceof CharsetEncoder)) goto _L2; else goto _L1
_L1:
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(fileoutputstream, (CharsetEncoder)obj);
        return outputstreamwriter;
        IOException ioexception;
        ioexception;
_L6:
        IOUtils.closeQuietly(null);
        IOUtils.closeQuietly(fileoutputstream);
        if (!flag1)
        {
            FileUtils.deleteQuietly(file);
        }
        throw ioexception;
_L2:
        OutputStreamWriter outputstreamwriter1 = new OutputStreamWriter(fileoutputstream, (String)obj);
        return outputstreamwriter1;
        RuntimeException runtimeexception;
        runtimeexception;
_L4:
        IOUtils.closeQuietly(null);
        IOUtils.closeQuietly(fileoutputstream);
        if (!flag1)
        {
            FileUtils.deleteQuietly(file);
        }
        throw runtimeexception;
        runtimeexception;
        fileoutputstream = null;
        if (true) goto _L4; else goto _L3
_L3:
        ioexception;
        fileoutputstream = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void close()
    {
        out.close();
    }

    public void flush()
    {
        out.flush();
    }

    public void write(int i)
    {
        out.write(i);
    }

    public void write(String s)
    {
        out.write(s);
    }

    public void write(String s, int i, int j)
    {
        out.write(s, i, j);
    }

    public void write(char ac[])
    {
        out.write(ac);
    }

    public void write(char ac[], int i, int j)
    {
        out.write(ac, i, j);
    }
}
