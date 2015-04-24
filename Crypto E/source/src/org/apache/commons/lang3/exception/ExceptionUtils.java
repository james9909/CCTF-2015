// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.exception;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;

public class ExceptionUtils
{

    private static final String CAUSE_METHOD_NAMES[] = {
        "getCause", "getNextException", "getTargetException", "getException", "getSourceException", "getRootCause", "getCausedByException", "getNested", "getLinkedException", "getNestedException", 
        "getLinkedCause", "getThrowable"
    };
    static final String WRAPPED_MARKER = " [wrapped] ";

    public ExceptionUtils()
    {
    }

    public static Throwable getCause(Throwable throwable)
    {
        return getCause(throwable, CAUSE_METHOD_NAMES);
    }

    public static Throwable getCause(Throwable throwable, String as[])
    {
        if (throwable != null)
        {
            if (as == null)
            {
                as = CAUSE_METHOD_NAMES;
            }
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                String s = as[j];
                if (s != null)
                {
                    Throwable throwable1 = getCauseUsingMethodName(throwable, s);
                    if (throwable1 != null)
                    {
                        return throwable1;
                    }
                }
                j++;
            }
        }
        return null;
    }

    private static Throwable getCauseUsingMethodName(Throwable throwable, String s)
    {
        Method method;
        Throwable throwable1;
        Method method1;
        try
        {
            method1 = throwable.getClass().getMethod(s, new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            method = null;
            continue; /* Loop/switch isn't completed */
        }
        catch (SecurityException securityexception)
        {
            method = null;
            continue; /* Loop/switch isn't completed */
        }
        method = method1;
_L2:
        if (method == null || !java/lang/Throwable.isAssignableFrom(method.getReturnType()))
        {
            break; /* Loop/switch isn't completed */
        }
        throwable1 = (Throwable)method.invoke(throwable, new Object[0]);
        return throwable1;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        break; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L1:
        return null;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        continue; /* Loop/switch isn't completed */
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static String[] getDefaultCauseMethodNames()
    {
        return (String[])ArrayUtils.clone(CAUSE_METHOD_NAMES);
    }

    public static String getMessage(Throwable throwable)
    {
        if (throwable == null)
        {
            return "";
        } else
        {
            String s = ClassUtils.getShortClassName(throwable, null);
            String s1 = throwable.getMessage();
            return (new StringBuilder()).append(s).append(": ").append(StringUtils.defaultString(s1)).toString();
        }
    }

    public static Throwable getRootCause(Throwable throwable)
    {
        List list = getThrowableList(throwable);
        if (list.size() < 2)
        {
            return null;
        } else
        {
            return (Throwable)list.get(-1 + list.size());
        }
    }

    public static String getRootCauseMessage(Throwable throwable)
    {
        Throwable throwable1 = getRootCause(throwable);
        if (throwable1 != null)
        {
            throwable = throwable1;
        }
        return getMessage(throwable);
    }

    public static String[] getRootCauseStackTrace(Throwable throwable)
    {
        if (throwable == null)
        {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        Throwable athrowable[] = getThrowables(throwable);
        int i = athrowable.length;
        ArrayList arraylist = new ArrayList();
        List list = getStackFrameList(athrowable[i - 1]);
        int j = i;
        do
        {
            int k = j - 1;
            if (k >= 0)
            {
                List list1;
                int l;
                if (k != 0)
                {
                    List list2 = getStackFrameList(athrowable[k - 1]);
                    removeCommonFrames(list, list2);
                    list1 = list2;
                } else
                {
                    list1 = list;
                }
                if (k == i - 1)
                {
                    arraylist.add(athrowable[k].toString());
                } else
                {
                    arraylist.add((new StringBuilder()).append(" [wrapped] ").append(athrowable[k].toString()).toString());
                }
                for (l = 0; l < list.size(); l++)
                {
                    arraylist.add(list.get(l));
                }

                j = k;
                list = list1;
            } else
            {
                return (String[])arraylist.toArray(new String[arraylist.size()]);
            }
        } while (true);
    }

    static List getStackFrameList(Throwable throwable)
    {
        StringTokenizer stringtokenizer = new StringTokenizer(getStackTrace(throwable), SystemUtils.LINE_SEPARATOR);
        ArrayList arraylist = new ArrayList();
        boolean flag = false;
label0:
        do
        {
            do
            {
                if (!stringtokenizer.hasMoreTokens())
                {
                    break label0;
                }
                String s = stringtokenizer.nextToken();
                int i = s.indexOf("at");
                if (i == -1 || !s.substring(0, i).trim().isEmpty())
                {
                    continue label0;
                }
                flag = true;
                arraylist.add(s);
            } while (true);
        } while (!flag);
        return arraylist;
    }

    static String[] getStackFrames(String s)
    {
        StringTokenizer stringtokenizer = new StringTokenizer(s, SystemUtils.LINE_SEPARATOR);
        ArrayList arraylist = new ArrayList();
        for (; stringtokenizer.hasMoreTokens(); arraylist.add(stringtokenizer.nextToken())) { }
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    public static String[] getStackFrames(Throwable throwable)
    {
        if (throwable == null)
        {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        } else
        {
            return getStackFrames(getStackTrace(throwable));
        }
    }

    public static String getStackTrace(Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringwriter, true));
        return stringwriter.getBuffer().toString();
    }

    public static int getThrowableCount(Throwable throwable)
    {
        return getThrowableList(throwable).size();
    }

    public static List getThrowableList(Throwable throwable)
    {
        ArrayList arraylist;
        for (arraylist = new ArrayList(); throwable != null && !arraylist.contains(throwable); throwable = getCause(throwable))
        {
            arraylist.add(throwable);
        }

        return arraylist;
    }

    public static Throwable[] getThrowables(Throwable throwable)
    {
        List list = getThrowableList(throwable);
        return (Throwable[])list.toArray(new Throwable[list.size()]);
    }

    private static int indexOf(Throwable throwable, Class class1, int i, boolean flag)
    {
        if (throwable != null && class1 != null) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        Throwable athrowable[];
        if (i < 0)
        {
            i = 0;
        }
        athrowable = getThrowables(throwable);
        if (i >= athrowable.length)
        {
            return -1;
        }
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        do
        {
            if (i >= athrowable.length)
            {
                break MISSING_BLOCK_LABEL_90;
            }
            if (class1.isAssignableFrom(athrowable[i].getClass()))
            {
                break;
            }
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L6:
        i++;
_L3:
        if (i >= athrowable.length)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        if (!class1.equals(athrowable[i].getClass())) goto _L6; else goto _L5
_L5:
        return i;
        return -1;
    }

    public static int indexOfThrowable(Throwable throwable, Class class1)
    {
        return indexOf(throwable, class1, 0, false);
    }

    public static int indexOfThrowable(Throwable throwable, Class class1, int i)
    {
        return indexOf(throwable, class1, i, false);
    }

    public static int indexOfType(Throwable throwable, Class class1)
    {
        return indexOf(throwable, class1, 0, true);
    }

    public static int indexOfType(Throwable throwable, Class class1, int i)
    {
        return indexOf(throwable, class1, i, true);
    }

    public static void printRootCauseStackTrace(Throwable throwable)
    {
        printRootCauseStackTrace(throwable, System.err);
    }

    public static void printRootCauseStackTrace(Throwable throwable, PrintStream printstream)
    {
        if (throwable == null)
        {
            return;
        }
        if (printstream == null)
        {
            throw new IllegalArgumentException("The PrintStream must not be null");
        }
        String as[] = getRootCauseStackTrace(throwable);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            printstream.println(as[j]);
        }

        printstream.flush();
    }

    public static void printRootCauseStackTrace(Throwable throwable, PrintWriter printwriter)
    {
        if (throwable == null)
        {
            return;
        }
        if (printwriter == null)
        {
            throw new IllegalArgumentException("The PrintWriter must not be null");
        }
        String as[] = getRootCauseStackTrace(throwable);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            printwriter.println(as[j]);
        }

        printwriter.flush();
    }

    public static void removeCommonFrames(List list, List list1)
    {
        if (list == null || list1 == null)
        {
            throw new IllegalArgumentException("The List must not be null");
        }
        int i = -1 + list.size();
        int j = -1 + list1.size();
        int l;
        for (int k = i; k >= 0 && j >= 0; k = l)
        {
            if (((String)list.get(k)).equals((String)list1.get(j)))
            {
                list.remove(k);
            }
            l = k - 1;
            j--;
        }

    }

}
