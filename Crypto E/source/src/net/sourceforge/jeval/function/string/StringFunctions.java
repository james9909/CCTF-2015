// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function.string;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.sourceforge.jeval.Evaluator;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionGroup;

// Referenced classes of package net.sourceforge.jeval.function.string:
//            CharAt, CompareTo, CompareToIgnoreCase, Concat, 
//            EndsWith, Equals, EqualsIgnoreCase, Eval, 
//            IndexOf, LastIndexOf, Length, Replace, 
//            StartsWith, Substring, ToLowerCase, ToUpperCase, 
//            Trim

public class StringFunctions
    implements FunctionGroup
{

    private List a;

    public StringFunctions()
    {
        a = new ArrayList();
        a.add(new CharAt());
        a.add(new CompareTo());
        a.add(new CompareToIgnoreCase());
        a.add(new Concat());
        a.add(new EndsWith());
        a.add(new Equals());
        a.add(new EqualsIgnoreCase());
        a.add(new Eval());
        a.add(new IndexOf());
        a.add(new LastIndexOf());
        a.add(new Length());
        a.add(new Replace());
        a.add(new StartsWith());
        a.add(new Substring());
        a.add(new ToLowerCase());
        a.add(new ToUpperCase());
        a.add(new Trim());
    }

    public void a(Evaluator evaluator)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); evaluator.a((Function)iterator.next())) { }
    }
}
