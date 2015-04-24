// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

public class BrokenInputStream extends InputStream
{

    private final IOException exception;

    public BrokenInputStream()
    {
        this(new IOException("Broken input stream"));
    }

    public BrokenInputStream(IOException ioexception)
    {
        exception = ioexception;
    }

    public int available()
    {
        throw exception;
    }

    public void close()
    {
        throw exception;
    }

    public int read()
    {
        throw exception;
    }

    public void reset()
    {
        throw exception;
    }

    public long skip(long l)
    {
        throw exception;
    }
}
