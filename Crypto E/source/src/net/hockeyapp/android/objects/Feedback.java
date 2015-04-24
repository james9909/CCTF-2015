// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.objects;

import java.io.Serializable;
import java.util.ArrayList;

public class Feedback
    implements Serializable
{

    private String a;
    private String b;
    private int c;
    private String d;
    private ArrayList e;

    public Feedback()
    {
    }

    public ArrayList a()
    {
        return e;
    }

    public void a(int i)
    {
        c = i;
    }

    public void a(String s)
    {
        a = s;
    }

    public void a(ArrayList arraylist)
    {
        e = arraylist;
    }

    public void b(String s)
    {
        b = s;
    }

    public void c(String s)
    {
        d = s;
    }
}
