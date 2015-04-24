// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionException;
import net.sourceforge.jeval.function.FunctionGroup;
import net.sourceforge.jeval.function.FunctionResult;
import net.sourceforge.jeval.function.math.MathFunctions;
import net.sourceforge.jeval.function.string.StringFunctions;
import net.sourceforge.jeval.operator.AdditionOperator;
import net.sourceforge.jeval.operator.BooleanAndOperator;
import net.sourceforge.jeval.operator.BooleanNotOperator;
import net.sourceforge.jeval.operator.BooleanOrOperator;
import net.sourceforge.jeval.operator.ClosedParenthesesOperator;
import net.sourceforge.jeval.operator.DivisionOperator;
import net.sourceforge.jeval.operator.EqualOperator;
import net.sourceforge.jeval.operator.GreaterThanOperator;
import net.sourceforge.jeval.operator.GreaterThanOrEqualOperator;
import net.sourceforge.jeval.operator.LessThanOperator;
import net.sourceforge.jeval.operator.LessThanOrEqualOperator;
import net.sourceforge.jeval.operator.ModulusOperator;
import net.sourceforge.jeval.operator.MultiplicationOperator;
import net.sourceforge.jeval.operator.NotEqualOperator;
import net.sourceforge.jeval.operator.OpenParenthesesOperator;
import net.sourceforge.jeval.operator.Operator;
import net.sourceforge.jeval.operator.SubtractionOperator;

// Referenced classes of package net.sourceforge.jeval:
//            EvaluationException, ExpressionOperand, NextOperator, ExpressionOperator, 
//            ExpressionTree, ParsedFunction, VariableResolver, EvaluationHelper, 
//            EvaluationConstants, ArgumentTokenizer

public class Evaluator
{

    private List a;
    private Map b;
    private Map c;
    private char d;
    private Operator e;
    private Operator f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private String k;
    private Stack l;
    private Stack m;
    private Stack n;
    private Stack o;
    private VariableResolver p;

    public Evaluator()
    {
        this('\'', true, true, true, true);
    }

    public Evaluator(char c1, boolean flag, boolean flag1, boolean flag2, boolean flag3)
    {
        a = new ArrayList();
        b = new HashMap();
        c = new HashMap();
        d = '\'';
        e = new OpenParenthesesOperator();
        f = new ClosedParenthesesOperator();
        k = null;
        l = null;
        m = null;
        n = null;
        o = null;
        p = null;
        f();
        g = flag;
        h();
        h = flag1;
        i = flag2;
        g();
        a(c1);
        j = flag3;
    }

    private int a(int i1, Operator operator)
    {
        return i1 + operator.a().length();
    }

    private int a(String s, int i1, int j1, Stack stack, Operator operator)
    {
        String s1;
        if (j1 == -1)
        {
            s1 = s.substring(i1).trim();
            j1 = s.length();
        } else
        {
            s1 = s.substring(i1, j1).trim();
        }
        if (s1.length() == 0)
        {
            throw new EvaluationException("Expression is invalid.");
        } else
        {
            stack.push(new ExpressionOperand(s1, operator));
            return j1;
        }
    }

    private int a(String s, int i1, Operator operator, Stack stack, Stack stack1, boolean flag, Operator operator1)
    {
        if (!flag || !(operator instanceof OpenParenthesesOperator)) goto _L2; else goto _L1
_L1:
        int j1;
        NextOperator nextoperator1;
        NextOperator nextoperator = a(s, i1, stack1);
        Operator operator2 = nextoperator.a();
        j1 = nextoperator.b() + operator2.c();
        nextoperator1 = a(s, j1, ((Operator) (null)));
        if (nextoperator1 == null) goto _L4; else goto _L3
_L3:
        operator = nextoperator1.a();
        i1 = nextoperator1.b();
_L2:
        if (!(operator instanceof OpenParenthesesOperator)) goto _L6; else goto _L5
_L5:
        stack.push(new ExpressionOperator(operator, operator1));
_L8:
        j1 = i1 + operator.c();
_L4:
        return j1;
_L6:
        if (operator instanceof ClosedParenthesesOperator)
        {
            ExpressionOperator expressionoperator;
            ExpressionOperator expressionoperator1;
            ExpressionOperator expressionoperator2;
            if (stack.size() > 0)
            {
                expressionoperator1 = (ExpressionOperator)stack.peek();
            } else
            {
                expressionoperator1 = null;
            }
            while (expressionoperator1 != null && !(expressionoperator1.a() instanceof OpenParenthesesOperator)) 
            {
                a(stack1, stack);
                if (stack.size() > 0)
                {
                    expressionoperator1 = (ExpressionOperator)stack.peek();
                } else
                {
                    expressionoperator1 = null;
                }
            }
            if (stack.isEmpty())
            {
                throw new EvaluationException("Expression is invalid.");
            }
            expressionoperator2 = (ExpressionOperator)stack.pop();
            if (!(expressionoperator2.a() instanceof OpenParenthesesOperator))
            {
                throw new EvaluationException("Expression is invalid.");
            }
            if (expressionoperator2.b() != null)
            {
                stack1.push(new ExpressionTree(this, stack1.pop(), null, null, expressionoperator2.b()));
            }
        } else
        {
            if (stack.size() > 0)
            {
                for (expressionoperator = (ExpressionOperator)stack.peek(); expressionoperator != null && expressionoperator.a().b() >= operator.b();)
                {
                    a(stack1, stack);
                    if (stack.size() > 0)
                    {
                        expressionoperator = (ExpressionOperator)stack.peek();
                    } else
                    {
                        expressionoperator = null;
                    }
                }

            }
            stack.push(new ExpressionOperator(operator, operator1));
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    private String a(Stack stack, Stack stack1, boolean flag)
    {
        Object obj;
        for (; stack.size() > 0; a(stack1, stack)) { }
        if (stack1.size() != 1)
        {
            throw new EvaluationException("Expression is invalid.");
        }
        obj = stack1.pop();
        if (!(obj instanceof ExpressionTree)) goto _L2; else goto _L1
_L1:
        String s3 = ((ExpressionTree)obj).a(flag);
_L5:
        return s3;
_L2:
        if (!(obj instanceof ExpressionOperand)) goto _L4; else goto _L3
_L3:
        ExpressionOperand expressionoperand = (ExpressionOperand)obj;
        s3 = f(((ExpressionOperand)obj).a());
        if (!d(s3))
        {
            Double double3;
            Double double4;
            try
            {
                double3 = new Double(s3);
            }
            catch (Exception exception)
            {
                throw new EvaluationException("Expression is invalid.", exception);
            }
            ParsedFunction parsedfunction;
            Function function;
            String s;
            String s1;
            FunctionException functionexception;
            FunctionResult functionresult;
            String s2;
            Double double1;
            Double double2;
            if (expressionoperand.b() != null)
            {
                double4 = new Double(expressionoperand.b().a(double3.doubleValue()));
            } else
            {
                double4 = double3;
            }
            return double4.toString();
        }
        if (expressionoperand.b() != null)
        {
            throw new EvaluationException("Invalid operand for unary operator.");
        }
        if (true) goto _L5; else goto _L4
_L4:
        if (!(obj instanceof ParsedFunction)) goto _L7; else goto _L6
_L6:
        parsedfunction = (ParsedFunction)obj;
        function = parsedfunction.a();
        s = parsedfunction.b();
        if (j)
        {
            s = g(s);
        }
        s1 = f(s);
        functionresult = function.a(this, s1);
        s2 = functionresult.a();
        if (functionresult.b() != 0) goto _L9; else goto _L8
_L8:
        double1 = new Double(s2);
        if (parsedfunction.c() == null)
        {
            break MISSING_BLOCK_LABEL_401;
        }
        double2 = new Double(parsedfunction.c().a(double1.doubleValue()));
_L12:
        return double2.toString();
_L9:
        if (functionresult.b() != 1) goto _L11; else goto _L10
_L10:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_353;
        }
        s2 = (new StringBuilder()).append(d).append(s2).append(d).toString();
        if (parsedfunction.c() != null)
        {
            throw new EvaluationException("Invalid operand for unary operator.");
        }
          goto _L11
        functionexception;
        throw new EvaluationException(functionexception.getMessage(), functionexception);
_L7:
        throw new EvaluationException("Expression is invalid.");
_L11:
        return s2;
        double2 = double1;
          goto _L12
    }

    private NextOperator a(String s, int i1, Stack stack)
    {
        int j1 = 1;
        int k1 = i1;
        NextOperator nextoperator = null;
        while (j1 > 0) 
        {
            nextoperator = a(s, k1 + 1, ((Operator) (null)));
            if (nextoperator == null)
            {
                throw new EvaluationException("Function is not closed.");
            }
            if (nextoperator.a() instanceof OpenParenthesesOperator)
            {
                j1++;
            } else
            if (nextoperator.a() instanceof ClosedParenthesesOperator)
            {
                j1--;
            }
            k1 = nextoperator.b();
        }
        String s1 = s.substring(i1 + 1, k1);
        ExpressionOperand expressionoperand = (ExpressionOperand)stack.pop();
        Operator operator = expressionoperand.b();
        String s2 = expressionoperand.a();
        Function function;
        try
        {
            e(s2);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new EvaluationException((new StringBuilder()).append("Invalid function name of \"").append(s2).append("\".").toString(), illegalargumentexception);
        }
        function = (Function)b.get(s2);
        if (function == null)
        {
            throw new EvaluationException((new StringBuilder()).append("A function is not defined (index=").append(i1).append(").").toString());
        } else
        {
            stack.push(new ParsedFunction(function, s1, operator));
            return nextoperator;
        }
    }

    private NextOperator a(String s, int i1, Operator operator)
    {
        int j1;
        int k1;
        j1 = s.length();
        k1 = 0;
_L3:
        if (i1 >= j1)
        {
            break MISSING_BLOCK_LABEL_203;
        }
        int l1;
        int i2;
        int j2;
        Operator operator1;
        int k2;
        if (s.charAt(i1) == d)
        {
            l1 = k1 + 1;
        } else
        {
            l1 = k1;
        }
        if (l1 % 2 != 1) goto _L2; else goto _L1
_L1:
        i1++;
        k1 = l1;
          goto _L3
_L2:
        i2 = a.size();
        j2 = 0;
_L7:
        if (j2 >= i2) goto _L1; else goto _L4
_L4:
        operator1 = (Operator)a.get(j2);
        if (operator == null || operator.equals(operator1)) goto _L6; else goto _L5
_L5:
        j2++;
          goto _L7
_L6:
        if (operator1.c() != 2)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (i1 + 2 <= s.length())
        {
            k2 = i1 + 2;
        } else
        {
            k2 = s.length();
        }
        if (!s.substring(i1, k2).equals(operator1.a())) goto _L5; else goto _L8
_L8:
        return new NextOperator(operator1, i1);
        if (s.charAt(i1) != operator1.a().charAt(0)) goto _L5; else goto _L9
_L9:
        return new NextOperator(operator1, i1);
        return null;
    }

    private void a(Stack stack, Stack stack1)
    {
        Object obj;
        Object obj1;
        if (stack.size() > 0)
        {
            obj = stack.pop();
        } else
        {
            obj = null;
        }
        if (stack.size() > 0)
        {
            obj1 = stack.pop();
        } else
        {
            obj1 = null;
        }
        stack.push(new ExpressionTree(this, obj1, obj, ((ExpressionOperator)stack1.pop()).a(), null));
    }

    private void f()
    {
        a.add(e);
        a.add(f);
        a.add(new AdditionOperator());
        a.add(new SubtractionOperator());
        a.add(new MultiplicationOperator());
        a.add(new DivisionOperator());
        a.add(new EqualOperator());
        a.add(new NotEqualOperator());
        a.add(new LessThanOrEqualOperator());
        a.add(new LessThanOperator());
        a.add(new GreaterThanOrEqualOperator());
        a.add(new GreaterThanOperator());
        a.add(new BooleanAndOperator());
        a.add(new BooleanOrOperator());
        a.add(new BooleanNotOperator());
        a.add(new ModulusOperator());
    }

    private void g()
    {
        if (h)
        {
            (new MathFunctions()).a(this);
        }
        if (i)
        {
            (new StringFunctions()).a(this);
        }
    }

    private void h()
    {
        if (g)
        {
            a("E", (new Double(2.7182818284590451D)).toString());
            a("PI", (new Double(3.1415926535897931D)).toString());
        }
    }

    public char a()
    {
        return d;
    }

    public String a(String s)
    {
        VariableResolver variableresolver = p;
        String s1 = null;
        if (variableresolver != null)
        {
            String s2;
            try
            {
                s2 = p.a(s);
            }
            catch (FunctionException functionexception)
            {
                throw new EvaluationException(functionexception.getMessage(), functionexception);
            }
            s1 = s2;
        }
        if (s1 == null)
        {
            s1 = (String)c.get(s);
        }
        if (s1 == null)
        {
            throw new EvaluationException((new StringBuilder()).append("Can not resolve variable with name equal to \"").append(s).append("\".").toString());
        } else
        {
            return s1;
        }
    }

    public String a(String s, boolean flag, boolean flag1)
    {
        c(s);
        String s1 = a(n, o, flag1);
        if (d(s1) && !flag)
        {
            s1 = s1.substring(1, -1 + s1.length());
        }
        return s1;
    }

    public void a(char c1)
    {
        if (c1 == '\'' || c1 == '"')
        {
            d = c1;
            return;
        } else
        {
            throw new IllegalArgumentException("Invalid quote character.");
        }
    }

    public void a(String s, String s1)
    {
        e(s);
        c.put(s, s1);
    }

    public void a(Map map)
    {
        b = map;
    }

    public void a(VariableResolver variableresolver)
    {
        p = variableresolver;
    }

    public void a(Function function)
    {
        e(function.a());
        if ((Function)b.get(function.a()) == null)
        {
            b.put(function.a(), function);
            return;
        } else
        {
            throw new IllegalArgumentException("A function with the same name already exists.");
        }
    }

    public String b(String s)
    {
        return a(s, true, true);
    }

    public Map b()
    {
        return b;
    }

    public void b(Map map)
    {
        c = map;
    }

    public Map c()
    {
        return c;
    }

    public void c(String s)
    {
        boolean flag1;
        boolean flag2;
        Operator operator;
        int j1;
        int k1;
        boolean flag = true;
        int i1;
        boolean flag3;
        if (!s.equals(k))
        {
            k = s;
        } else
        {
            n = (Stack)l.clone();
            o = (Stack)m.clone();
            flag = false;
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        Operator operator2;
        int l1;
        Operator operator3;
        boolean flag4;
        NextOperator nextoperator;
        Operator operator1;
        try
        {
            o = new Stack();
            n = new Stack();
        }
        catch (Exception exception)
        {
            k = "";
            throw new EvaluationException(exception.getMessage(), exception);
        }
        flag1 = false;
        flag2 = false;
        operator = null;
        i1 = s.length();
        j1 = 0;
_L20:
        if (j1 >= i1) goto _L4; else goto _L3
_L3:
        k1 = -1;
        flag3 = EvaluationHelper.a(s.charAt(j1));
        if (flag3)
        {
            j1++;
            continue; /* Loop/switch isn't completed */
        }
        nextoperator = a(s, j1, ((Operator) (null)));
        if (nextoperator == null) goto _L6; else goto _L5
_L5:
        operator1 = nextoperator.a();
        k1 = nextoperator.b();
        operator2 = operator1;
          goto _L7
_L17:
        l1 = a(s, j1, k1, o, operator);
        flag1 = true;
        flag2 = false;
        operator3 = null;
_L16:
        if (k1 != l1) goto _L9; else goto _L8
_L8:
        if (!nextoperator.a().d() || !flag2 && l1 != 0) goto _L11; else goto _L10
_L10:
        l1 = a(k1, nextoperator.a());
        if (operator3 != null) goto _L13; else goto _L12
_L12:
        operator3 = nextoperator.a();
_L14:
        if (!(nextoperator.a() instanceof ClosedParenthesesOperator))
        {
            flag4 = true;
            flag1 = false;
            break; /* Loop/switch isn't completed */
        }
        break; /* Loop/switch isn't completed */
_L13:
        throw new EvaluationException((new StringBuilder()).append("Consecutive unary operators are not allowed (index=").append(l1).append(").").toString());
_L11:
        Stack stack = n;
        Stack stack1 = o;
        l1 = a(s, k1, operator2, stack, stack1, flag1, operator3);
        operator3 = null;
        if (true) goto _L14; else goto _L9
_L4:
        l = (Stack)n.clone();
        m = (Stack)o.clone();
_L2:
        return;
_L9:
        flag4 = flag2;
        break; /* Loop/switch isn't completed */
_L18:
        l1 = j1;
        operator3 = operator;
        if (true) goto _L16; else goto _L15
_L6:
        operator2 = null;
_L7:
        if (k1 <= j1 && k1 != -1) goto _L18; else goto _L17
_L15:
        j1 = l1;
        operator = operator3;
        flag2 = flag4;
        if (true) goto _L20; else goto _L19
_L19:
    }

    public VariableResolver d()
    {
        return p;
    }

    protected boolean d(String s)
    {
        if (s.length() > 1 && s.charAt(0) == d && s.charAt(-1 + s.length()) == d)
        {
            return true;
        }
        if (s.indexOf(d) >= 0)
        {
            throw new EvaluationException("Invalid use of quotes.");
        } else
        {
            return false;
        }
    }

    public void e(String s)
    {
        if (s.length() == 0)
        {
            throw new IllegalArgumentException("Variable is empty.");
        }
        char c1 = s.charAt(0);
        if (c1 >= '0' && c1 <= '9')
        {
            throw new IllegalArgumentException("A variable or function name can not start with a number.");
        }
        if (s.indexOf('\'') > -1)
        {
            throw new IllegalArgumentException("A variable or function name can not contain a quote character.");
        }
        if (s.indexOf('"') > -1)
        {
            throw new IllegalArgumentException("A variable or function name can not contain a quote character.");
        }
        if (s.indexOf('{') > -1)
        {
            throw new IllegalArgumentException("A variable or function name can not contain an open brace character.");
        }
        if (s.indexOf('}') > -1)
        {
            throw new IllegalArgumentException("A variable or function name can not contain a closed brace character.");
        }
        if (s.indexOf('#') > -1)
        {
            throw new IllegalArgumentException("A variable or function name can not contain a pound sign character.");
        }
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            if (s.indexOf(((Operator)iterator.next()).a()) > -1)
            {
                throw new IllegalArgumentException("A variable or function name can not contain an operator symbol.");
            }
        }

        if (s.indexOf("!") > -1)
        {
            throw new IllegalArgumentException("A variable or function name can not contain a special character.");
        }
        if (s.indexOf("~") > -1)
        {
            throw new IllegalArgumentException("A variable or function name can not contain a special character.");
        }
        if (s.indexOf("^") > -1)
        {
            throw new IllegalArgumentException("A variable or function name can not contain a special character.");
        }
        if (s.indexOf(",") > -1)
        {
            throw new IllegalArgumentException("A variable or function name can not contain a special character.");
        } else
        {
            return;
        }
    }

    public boolean e()
    {
        return j;
    }

    public String f(String s)
    {
        int i1 = s.indexOf(EvaluationConstants.a);
        if (i1 < 0)
        {
            return s;
        }
        int j1 = i1;
        String s1 = s;
        while (j1 >= 0) 
        {
            if (j1 < 0)
            {
                continue;
            }
            int l1 = s1.indexOf(EvaluationConstants.b, j1 + 1);
            if (l1 <= j1)
            {
                break;
            }
            String s2 = s1.substring(j1 + EvaluationConstants.a.length(), l1);
            String s3;
            try
            {
                e(s2);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw new EvaluationException((new StringBuilder()).append("Invalid variable name of \"").append(s2).append("\".").toString(), illegalargumentexception);
            }
            s3 = a(s2);
            s1 = EvaluationHelper.a(s1, (new StringBuilder()).append(EvaluationConstants.a).append(s2).append(EvaluationConstants.b).toString(), s3);
            j1 = s1.indexOf(EvaluationConstants.a);
        }
        int k1 = s1.indexOf(EvaluationConstants.a);
        if (k1 > -1)
        {
            throw new EvaluationException((new StringBuilder()).append("A variable has not been closed (index=").append(k1).append(").").toString());
        } else
        {
            return s1;
        }
    }

    protected String g(String s)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (s.length() > 0)
        {
            Evaluator evaluator = new Evaluator(d, g, h, i, j);
            evaluator.a(b());
            evaluator.b(c());
            evaluator.a(d());
            ArgumentTokenizer argumenttokenizer = new ArgumentTokenizer(s, ',');
            ArrayList arraylist = new ArrayList();
            while (argumenttokenizer.a()) 
            {
                String s1 = argumenttokenizer.b().trim();
                String s2;
                try
                {
                    s2 = evaluator.b(s1);
                }
                catch (Exception exception)
                {
                    throw new EvaluationException(exception.getMessage(), exception);
                }
                arraylist.add(s2);
            }
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); stringbuffer.append((String)iterator.next()))
            {
                if (stringbuffer.length() > 0)
                {
                    stringbuffer.append(',');
                }
            }

        }
        return stringbuffer.toString();
    }
}
