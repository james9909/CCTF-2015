// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;


public class NotImplementedException extends UnsupportedOperationException
{

    private static final long serialVersionUID = 0x1332ccdL;
    private final String code;

    public NotImplementedException(String s)
    {
        this(s, (String)null);
    }

    public NotImplementedException(String s, String s1)
    {
        super(s);
        code = s1;
    }

    public NotImplementedException(String s, Throwable throwable)
    {
        this(s, throwable, null);
    }

    public NotImplementedException(String s, Throwable throwable, String s1)
    {
        super(s, throwable);
        code = s1;
    }

    public NotImplementedException(Throwable throwable)
    {
        this(throwable, ((String) (null)));
    }

    public NotImplementedException(Throwable throwable, String s)
    {
        super(throwable);
        code = s;
    }

    public String getCode()
    {
        return code;
    }
}
