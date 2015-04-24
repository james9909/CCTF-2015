// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function;

import net.sourceforge.jeval.Evaluator;

// Referenced classes of package net.sourceforge.jeval.function:
//            FunctionResult

public interface Function
{

    public abstract String a();

    public abstract FunctionResult a(Evaluator evaluator, String s);
}
