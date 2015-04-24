// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.lang;


public interface JoinPoint
{
    public static interface EnclosingStaticPart
        extends StaticPart
    {
    }

    public static interface StaticPart
    {

        public abstract String toString();
    }


    public abstract Object a();
}
