// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;

public class ProxyWriter extends FilterWriter
{

    public ProxyWriter(Writer writer)
    {
        super(writer);
    }

    protected void afterWrite(int i)
    {
    }

    public Writer append(char c)
    {
        try
        {
            beforeWrite(1);
            out.append(c);
            afterWrite(1);
        }
        catch (IOException ioexception)
        {
            handleIOException(ioexception);
            return this;
        }
        return this;
    }

    public Writer append(CharSequence charsequence)
    {
        int i;
        i = 0;
        if (charsequence == null)
        {
            break MISSING_BLOCK_LABEL_13;
        }
        i = charsequence.length();
        beforeWrite(i);
        out.append(charsequence);
        afterWrite(i);
        return this;
        IOException ioexception;
        ioexception;
        handleIOException(ioexception);
        return this;
    }

    public Writer append(CharSequence charsequence, int i, int j)
    {
        int k = j - i;
        try
        {
            beforeWrite(k);
            out.append(charsequence, i, j);
            afterWrite(j - i);
        }
        catch (IOException ioexception)
        {
            handleIOException(ioexception);
            return this;
        }
        return this;
    }

    public volatile Appendable append(char c)
    {
        return append(c);
    }

    public volatile Appendable append(CharSequence charsequence)
    {
        return append(charsequence);
    }

    public volatile Appendable append(CharSequence charsequence, int i, int j)
    {
        return append(charsequence, i, j);
    }

    protected void beforeWrite(int i)
    {
    }

    public void close()
    {
        try
        {
            out.close();
            return;
        }
        catch (IOException ioexception)
        {
            handleIOException(ioexception);
        }
    }

    public void flush()
    {
        try
        {
            out.flush();
            return;
        }
        catch (IOException ioexception)
        {
            handleIOException(ioexception);
        }
    }

    protected void handleIOException(IOException ioexception)
    {
        throw ioexception;
    }

    public void write(int i)
    {
        try
        {
            beforeWrite(1);
            out.write(i);
            afterWrite(1);
            return;
        }
        catch (IOException ioexception)
        {
            handleIOException(ioexception);
        }
    }

    public void write(String s)
    {
        int i;
        i = 0;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_11;
        }
        i = s.length();
        beforeWrite(i);
        out.write(s);
        afterWrite(i);
        return;
        IOException ioexception;
        ioexception;
        handleIOException(ioexception);
        return;
    }

    public void write(String s, int i, int j)
    {
        try
        {
            beforeWrite(j);
            out.write(s, i, j);
            afterWrite(j);
            return;
        }
        catch (IOException ioexception)
        {
            handleIOException(ioexception);
        }
    }

    public void write(char ac[])
    {
        int i;
        i = 0;
        if (ac == null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        i = ac.length;
        beforeWrite(i);
        out.write(ac);
        afterWrite(i);
        return;
        IOException ioexception;
        ioexception;
        handleIOException(ioexception);
        return;
    }

    public void write(char ac[], int i, int j)
    {
        try
        {
            beforeWrite(j);
            out.write(ac, i, j);
            afterWrite(j);
            return;
        }
        catch (IOException ioexception)
        {
            handleIOException(ioexception);
        }
    }
}
