// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function.math;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.sourceforge.jeval.Evaluator;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionGroup;

// Referenced classes of package net.sourceforge.jeval.function.math:
//            Abs, Acos, Asin, Atan, 
//            Atan2, Ceil, Cos, Exp, 
//            Floor, IEEEremainder, Log, Max, 
//            Min, Pow, Random, Rint, 
//            Round, Sin, Sqrt, Tan, 
//            ToDegrees, ToRadians

public class MathFunctions
    implements FunctionGroup
{

    private List a;

    public MathFunctions()
    {
        a = new ArrayList();
        a.add(new Abs());
        a.add(new Acos());
        a.add(new Asin());
        a.add(new Atan());
        a.add(new Atan2());
        a.add(new Ceil());
        a.add(new Cos());
        a.add(new Exp());
        a.add(new Floor());
        a.add(new IEEEremainder());
        a.add(new Log());
        a.add(new Max());
        a.add(new Min());
        a.add(new Pow());
        a.add(new Random());
        a.add(new Rint());
        a.add(new Round());
        a.add(new Sin());
        a.add(new Sqrt());
        a.add(new Tan());
        a.add(new ToDegrees());
        a.add(new ToRadians());
    }

    public void a(Evaluator evaluator)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); evaluator.a((Function)iterator.next())) { }
    }
}
