// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval;

import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionException;
import net.sourceforge.jeval.function.FunctionResult;
import net.sourceforge.jeval.operator.Operator;

// Referenced classes of package net.sourceforge.jeval:
//            ExpressionOperand, Evaluator, EvaluationException, ParsedFunction

public class ExpressionTree
{

    private Object a;
    private Object b;
    private Operator c;
    private Operator d;
    private Evaluator e;

    public ExpressionTree(Evaluator evaluator, Object obj, Object obj1, Operator operator, Operator operator1)
    {
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        e = evaluator;
        a = obj;
        b = obj1;
        c = operator;
        d = operator1;
    }

    public String a(boolean flag)
    {
        if (!(a instanceof ExpressionTree)) goto _L2; else goto _L1
_L1:
        String s17 = ((ExpressionTree)a).a(flag);
        Double double14 = new Double(s17);
        Double double1;
        String s;
        double1 = double14;
        s = null;
_L5:
        if (!(b instanceof ExpressionTree)) goto _L4; else goto _L3
_L3:
        String s8 = ((ExpressionTree)b).a(flag);
        Double double7 = new Double(s8);
        String s1;
        Double double2;
        s1 = null;
        double2 = double7;
        break MISSING_BLOCK_LABEL_80;
        numberformatexception5;
        s = s17;
        double1 = null;
          goto _L5
_L2:
label0:
        {
            {
                if (!(a instanceof ExpressionOperand))
                {
                    break MISSING_BLOCK_LABEL_288;
                }
                ExpressionOperand expressionoperand1 = (ExpressionOperand)a;
                String s15 = expressionoperand1.a();
                String s16 = e.f(s15);
                if (e.d(s16))
                {
                    break label0;
                }
                Double double12;
                Double double13;
                try
                {
                    double13 = new Double(s16);
                }
                catch (NumberFormatException numberformatexception4)
                {
                    throw new EvaluationException("Expression is invalid.", numberformatexception4);
                }
                ParsedFunction parsedfunction;
                Function function;
                String s2;
                String s3;
                FunctionException functionexception;
                FunctionResult functionresult;
                String s4;
                Double double3;
                Double double4;
                String s5;
                boolean flag1;
                Double double5;
                NumberFormatException numberformatexception;
                ExpressionOperand expressionoperand;
                String s6;
                String s7;
                Double double6;
                NumberFormatException numberformatexception1;
                NumberFormatException numberformatexception2;
                ParsedFunction parsedfunction1;
                Function function1;
                String s9;
                String s10;
                FunctionException functionexception1;
                FunctionResult functionresult1;
                String s11;
                Double double8;
                Double double9;
                String s12;
                String s13;
                String s14;
                Double double10;
                Double double11;
                NumberFormatException numberformatexception3;
                if (expressionoperand1.b() != null)
                {
                    double12 = new Double(expressionoperand1.b().a(double13.doubleValue()));
                    s16 = null;
                } else
                {
                    double12 = double13;
                    s16 = null;
                }
            }
            double1 = double12;
            s = s16;
        }
          goto _L5
        if (expressionoperand1.b() != null)
        {
            throw new EvaluationException("Invalid operand for unary operator.");
        }
        break MISSING_BLOCK_LABEL_1200;
        if (!(a instanceof ParsedFunction)) goto _L7; else goto _L6
_L6:
        parsedfunction1 = (ParsedFunction)a;
        function1 = parsedfunction1.a();
        s9 = parsedfunction1.b();
        s10 = e.f(s9);
        if (e.e())
        {
            s10 = e.g(s10);
        }
        functionresult1 = function1.a(e, s10);
        s11 = functionresult1.a();
        if (functionresult1.b() != 0) goto _L9; else goto _L8
_L8:
        double8 = new Double(s11);
        if (parsedfunction1.c() == null)
        {
            break MISSING_BLOCK_LABEL_1193;
        }
        double9 = new Double(parsedfunction1.c().a(double8.doubleValue()));
_L22:
        s12 = double9.toString();
        s13 = s12;
_L21:
        if (!e.d(s13))
        {
            try
            {
                double11 = new Double(s13);
            }
            // Misplaced declaration of an exception variable
            catch (NumberFormatException numberformatexception3)
            {
                throw new EvaluationException("Expression is invalid.", numberformatexception3);
            }
            double10 = double11;
            s14 = null;
        } else
        {
            s14 = s13;
            double10 = null;
        }
        double1 = double10;
        s = s14;
          goto _L5
_L9:
        if (functionresult1.b() != 1) goto _L11; else goto _L10
_L10:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_526;
        }
        s11 = (new StringBuilder()).append(e.a()).append(s11).append(e.a()).toString();
        if (parsedfunction1.c() != null)
        {
            throw new EvaluationException("Invalid operand for unary operator.");
        }
          goto _L11
        functionexception1;
        throw new EvaluationException(functionexception1.getMessage(), functionexception1);
        numberformatexception2;
        s1 = s8;
        double2 = null;
          goto _L12
_L4:
        if (!(b instanceof ExpressionOperand))
        {
            break MISSING_BLOCK_LABEL_739;
        }
label1:
        {
            expressionoperand = (ExpressionOperand)b;
            s6 = ((ExpressionOperand)b).a();
            s7 = e.f(s6);
            if (e.d(s7))
            {
                break label1;
            }
            try
            {
                double6 = new Double(s7);
            }
            // Misplaced declaration of an exception variable
            catch (NumberFormatException numberformatexception1)
            {
                throw new EvaluationException("Expression is invalid.", numberformatexception1);
            }
            if (expressionoperand.b() != null)
            {
                double2 = new Double(expressionoperand.b().a(double6.doubleValue()));
                s1 = null;
            } else
            {
                double2 = double6;
                s1 = null;
            }
        }
          goto _L12
        if (!(b instanceof ParsedFunction)) goto _L14; else goto _L13
_L13:
        parsedfunction = (ParsedFunction)b;
        function = parsedfunction.a();
        s2 = parsedfunction.b();
        s3 = e.f(s2);
        if (e.e())
        {
            s3 = e.g(s3);
        }
        functionresult = function.a(e, s3);
        s4 = functionresult.a();
        if (functionresult.b() != 0) goto _L16; else goto _L15
_L15:
        double3 = new Double(s4);
        if (parsedfunction.c() == null)
        {
            break MISSING_BLOCK_LABEL_1142;
        }
        double4 = new Double(parsedfunction.c().a(double3.doubleValue()));
_L20:
        s5 = double4.toString();
        s1 = s5;
_L19:
        flag1 = e.d(s1);
        double2 = null;
        if (!flag1)
        {
            try
            {
                double5 = new Double(s1);
            }
            // Misplaced declaration of an exception variable
            catch (NumberFormatException numberformatexception)
            {
                throw new EvaluationException("Expression is invalid.", numberformatexception);
            }
            double2 = double5;
            s1 = null;
        }
          goto _L12
_L16:
        if (functionresult.b() != 1) goto _L18; else goto _L17
_L17:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_978;
        }
        s4 = (new StringBuilder()).append(e.a()).append(s4).append(e.a()).toString();
        if (parsedfunction.c() != null)
        {
            throw new EvaluationException("Invalid operand for unary operator.");
        }
          goto _L18
        functionexception;
        throw new EvaluationException(functionexception.getMessage(), functionexception);
_L14:
        if (b == null)
        {
            s1 = null;
            double2 = null;
        } else
        {
            throw new EvaluationException("Expression is invalid.");
        }
_L12:
        NumberFormatException numberformatexception5;
        if (double1 != null && double2 != null)
        {
            double d1 = c.a(double1.doubleValue(), double2.doubleValue());
            if (a() != null)
            {
                d1 = a().a(d1);
            }
            return (new Double(d1)).toString();
        }
        if (s != null && s1 != null)
        {
            return c.a(s, s1);
        }
        if (double1 != null && double2 == null)
        {
            if (d != null)
            {
                return (new Double(d.a(double1.doubleValue()))).toString();
            } else
            {
                throw new EvaluationException("Expression is invalid.");
            }
        } else
        {
            throw new EvaluationException("Expression is invalid.");
        }
_L18:
        s1 = s4;
          goto _L19
        double4 = double3;
          goto _L20
        if (expressionoperand.b() != null)
        {
            throw new EvaluationException("Invalid operand for unary operator.");
        }
        s1 = s7;
        double2 = null;
          goto _L12
_L7:
        if (a != null)
        {
            throw new EvaluationException("Expression is invalid.");
        }
        double1 = null;
        s = null;
          goto _L5
_L11:
        s13 = s11;
          goto _L21
        double9 = double8;
          goto _L22
        double12 = null;
        break MISSING_BLOCK_LABEL_247;
    }

    public Operator a()
    {
        return d;
    }
}
