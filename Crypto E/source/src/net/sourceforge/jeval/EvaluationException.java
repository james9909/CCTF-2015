// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval;


public class EvaluationException extends Exception
{

    public EvaluationException(String s)
    {
        super(s);
    }

    public EvaluationException(String s, Exception exception)
    {
        super(s, exception);
    }
}
