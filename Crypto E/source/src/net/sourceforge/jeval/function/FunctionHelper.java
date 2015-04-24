// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function;

import java.util.ArrayList;
import net.sourceforge.jeval.ArgumentTokenizer;

// Referenced classes of package net.sourceforge.jeval.function:
//            FunctionException

public class FunctionHelper
{

    public FunctionHelper()
    {
    }

    public static String a(String s, char c1)
    {
        String s1 = s.trim();
        if (s1.charAt(0) == c1)
        {
            String s2 = s1.substring(1, s1.length());
            if (s2.charAt(-1 + s2.length()) == c1)
            {
                return s2.substring(0, -1 + s2.length());
            } else
            {
                throw new FunctionException("Value does not end with a quote.");
            }
        } else
        {
            throw new FunctionException("Value does not start with a quote.");
        }
    }

    public static ArrayList b(String s, char c1)
    {
        ArrayList arraylist = new ArrayList();
        try
        {
            for (ArgumentTokenizer argumenttokenizer = new ArgumentTokenizer(s, c1); argumenttokenizer.a(); arraylist.add(new Double(argumenttokenizer.b().trim()))) { }
        }
        catch (Exception exception)
        {
            throw new FunctionException("Invalid values in string.", exception);
        }
        return arraylist;
    }

    public static ArrayList c(String s, char c1)
    {
        ArrayList arraylist = new ArrayList();
        try
        {
            for (ArgumentTokenizer argumenttokenizer = new ArgumentTokenizer(s, c1); argumenttokenizer.a(); arraylist.add(argumenttokenizer.b())) { }
        }
        catch (Exception exception)
        {
            throw new FunctionException("Invalid values in string.", exception);
        }
        return arraylist;
    }

    public static ArrayList d(String s, char c1)
    {
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        ArgumentTokenizer argumenttokenizer;
        try
        {
            argumenttokenizer = new ArgumentTokenizer(s, c1);
        }
        catch (Exception exception)
        {
            throw new FunctionException("Invalid values in string.", exception);
        }
        i = 0;
_L2:
        if (!argumenttokenizer.a())
        {
            break MISSING_BLOCK_LABEL_107;
        }
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        arraylist.add(argumenttokenizer.b());
        break MISSING_BLOCK_LABEL_109;
        if (i != 1)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        arraylist.add(new Integer((new Double(argumenttokenizer.b().trim())).intValue()));
        break MISSING_BLOCK_LABEL_109;
        throw new FunctionException("Invalid values in string.");
        return arraylist;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static ArrayList e(String s, char c1)
    {
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        ArgumentTokenizer argumenttokenizer;
        try
        {
            argumenttokenizer = new ArgumentTokenizer(s, c1);
        }
        catch (Exception exception)
        {
            throw new FunctionException("Invalid values in string.", exception);
        }
        i = 0;
_L2:
        if (!argumenttokenizer.a())
        {
            break MISSING_BLOCK_LABEL_113;
        }
        if (i != 0 && i != 1)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        arraylist.add(argumenttokenizer.b());
        break MISSING_BLOCK_LABEL_115;
        if (i != 2)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        arraylist.add(new Integer((new Double(argumenttokenizer.b().trim())).intValue()));
        break MISSING_BLOCK_LABEL_115;
        throw new FunctionException("Invalid values in string.");
        return arraylist;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static ArrayList f(String s, char c1)
    {
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        ArgumentTokenizer argumenttokenizer;
        try
        {
            argumenttokenizer = new ArgumentTokenizer(s, c1);
        }
        catch (Exception exception)
        {
            throw new FunctionException("Invalid values in string.", exception);
        }
        i = 0;
_L6:
        if (!argumenttokenizer.a()) goto _L2; else goto _L1
_L1:
        if (i != 0) goto _L4; else goto _L3
_L3:
        arraylist.add(argumenttokenizer.b().trim());
          goto _L5
_L7:
        arraylist.add(new Integer((new Double(argumenttokenizer.b().trim())).intValue()));
          goto _L5
_L8:
        throw new FunctionException("Invalid values in string.");
_L2:
        return arraylist;
_L5:
        i++;
          goto _L6
_L4:
        if (i != 1 && i != 2) goto _L8; else goto _L7
    }
}
