// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.operator;


public interface Operator
{

    public abstract double a(double d1);

    public abstract double a(double d1, double d2);

    public abstract String a();

    public abstract String a(String s, String s1);

    public abstract int b();

    public abstract int c();

    public abstract boolean d();
}
