// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.builder;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.SystemUtils;

public abstract class ToStringStyle
    implements Serializable
{
    static final class DefaultToStringStyle extends ToStringStyle
    {

        private static final long serialVersionUID = 1L;

        private Object readResolve()
        {
            return ToStringStyle.DEFAULT_STYLE;
        }

        DefaultToStringStyle()
        {
        }
    }

    static final class MultiLineToStringStyle extends ToStringStyle
    {

        private static final long serialVersionUID = 1L;

        private Object readResolve()
        {
            return ToStringStyle.MULTI_LINE_STYLE;
        }

        MultiLineToStringStyle()
        {
            setContentStart("[");
            setFieldSeparator((new StringBuilder()).append(SystemUtils.LINE_SEPARATOR).append("  ").toString());
            setFieldSeparatorAtStart(true);
            setContentEnd((new StringBuilder()).append(SystemUtils.LINE_SEPARATOR).append("]").toString());
        }
    }

    static final class NoFieldNameToStringStyle extends ToStringStyle
    {

        private static final long serialVersionUID = 1L;

        private Object readResolve()
        {
            return ToStringStyle.NO_FIELD_NAMES_STYLE;
        }

        NoFieldNameToStringStyle()
        {
            setUseFieldNames(false);
        }
    }

    static final class ShortPrefixToStringStyle extends ToStringStyle
    {

        private static final long serialVersionUID = 1L;

        private Object readResolve()
        {
            return ToStringStyle.SHORT_PREFIX_STYLE;
        }

        ShortPrefixToStringStyle()
        {
            setUseShortClassName(true);
            setUseIdentityHashCode(false);
        }
    }

    static final class SimpleToStringStyle extends ToStringStyle
    {

        private static final long serialVersionUID = 1L;

        private Object readResolve()
        {
            return ToStringStyle.SIMPLE_STYLE;
        }

        SimpleToStringStyle()
        {
            setUseClassName(false);
            setUseIdentityHashCode(false);
            setUseFieldNames(false);
            setContentStart("");
            setContentEnd("");
        }
    }


    public static final ToStringStyle DEFAULT_STYLE = new DefaultToStringStyle();
    public static final ToStringStyle MULTI_LINE_STYLE = new MultiLineToStringStyle();
    public static final ToStringStyle NO_FIELD_NAMES_STYLE = new NoFieldNameToStringStyle();
    private static final ThreadLocal REGISTRY = new ThreadLocal();
    public static final ToStringStyle SHORT_PREFIX_STYLE = new ShortPrefixToStringStyle();
    public static final ToStringStyle SIMPLE_STYLE = new SimpleToStringStyle();
    private static final long serialVersionUID = 0xdc15f72ff3fad694L;
    private boolean arrayContentDetail;
    private String arrayEnd;
    private String arraySeparator;
    private String arrayStart;
    private String contentEnd;
    private String contentStart;
    private boolean defaultFullDetail;
    private String fieldNameValueSeparator;
    private String fieldSeparator;
    private boolean fieldSeparatorAtEnd;
    private boolean fieldSeparatorAtStart;
    private String nullText;
    private String sizeEndText;
    private String sizeStartText;
    private String summaryObjectEndText;
    private String summaryObjectStartText;
    private boolean useClassName;
    private boolean useFieldNames;
    private boolean useIdentityHashCode;
    private boolean useShortClassName;

    public ToStringStyle()
    {
        useFieldNames = true;
        useClassName = true;
        useShortClassName = false;
        useIdentityHashCode = true;
        contentStart = "[";
        contentEnd = "]";
        fieldNameValueSeparator = "=";
        fieldSeparatorAtStart = false;
        fieldSeparatorAtEnd = false;
        fieldSeparator = ",";
        arrayStart = "{";
        arraySeparator = ",";
        arrayContentDetail = true;
        arrayEnd = "}";
        defaultFullDetail = true;
        nullText = "<null>";
        sizeStartText = "<size=";
        sizeEndText = ">";
        summaryObjectStartText = "<";
        summaryObjectEndText = ">";
    }

    static Map getRegistry()
    {
        return (Map)REGISTRY.get();
    }

    static boolean isRegistered(Object obj)
    {
        Map map = getRegistry();
        return map != null && map.containsKey(obj);
    }

    static void register(Object obj)
    {
        if (obj != null)
        {
            if (getRegistry() == null)
            {
                REGISTRY.set(new WeakHashMap());
            }
            getRegistry().put(obj, null);
        }
    }

    static void unregister(Object obj)
    {
        if (obj != null)
        {
            Map map = getRegistry();
            if (map != null)
            {
                map.remove(obj);
                if (map.isEmpty())
                {
                    REGISTRY.remove();
                }
            }
        }
    }

    public void append(StringBuffer stringbuffer, String s, byte byte0)
    {
        appendFieldStart(stringbuffer, s);
        appendDetail(stringbuffer, s, byte0);
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, char c)
    {
        appendFieldStart(stringbuffer, s);
        appendDetail(stringbuffer, s, c);
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, double d)
    {
        appendFieldStart(stringbuffer, s);
        appendDetail(stringbuffer, s, d);
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, float f)
    {
        appendFieldStart(stringbuffer, s);
        appendDetail(stringbuffer, s, f);
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, int i)
    {
        appendFieldStart(stringbuffer, s);
        appendDetail(stringbuffer, s, i);
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, long l)
    {
        appendFieldStart(stringbuffer, s);
        appendDetail(stringbuffer, s, l);
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, Object obj, Boolean boolean1)
    {
        appendFieldStart(stringbuffer, s);
        if (obj == null)
        {
            appendNullText(stringbuffer, s);
        } else
        {
            appendInternal(stringbuffer, s, obj, isFullDetail(boolean1));
        }
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, short word0)
    {
        appendFieldStart(stringbuffer, s);
        appendDetail(stringbuffer, s, word0);
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, boolean flag)
    {
        appendFieldStart(stringbuffer, s);
        appendDetail(stringbuffer, s, flag);
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, byte abyte0[], Boolean boolean1)
    {
        appendFieldStart(stringbuffer, s);
        if (abyte0 == null)
        {
            appendNullText(stringbuffer, s);
        } else
        if (isFullDetail(boolean1))
        {
            appendDetail(stringbuffer, s, abyte0);
        } else
        {
            appendSummary(stringbuffer, s, abyte0);
        }
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, char ac[], Boolean boolean1)
    {
        appendFieldStart(stringbuffer, s);
        if (ac == null)
        {
            appendNullText(stringbuffer, s);
        } else
        if (isFullDetail(boolean1))
        {
            appendDetail(stringbuffer, s, ac);
        } else
        {
            appendSummary(stringbuffer, s, ac);
        }
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, double ad[], Boolean boolean1)
    {
        appendFieldStart(stringbuffer, s);
        if (ad == null)
        {
            appendNullText(stringbuffer, s);
        } else
        if (isFullDetail(boolean1))
        {
            appendDetail(stringbuffer, s, ad);
        } else
        {
            appendSummary(stringbuffer, s, ad);
        }
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, float af[], Boolean boolean1)
    {
        appendFieldStart(stringbuffer, s);
        if (af == null)
        {
            appendNullText(stringbuffer, s);
        } else
        if (isFullDetail(boolean1))
        {
            appendDetail(stringbuffer, s, af);
        } else
        {
            appendSummary(stringbuffer, s, af);
        }
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, int ai[], Boolean boolean1)
    {
        appendFieldStart(stringbuffer, s);
        if (ai == null)
        {
            appendNullText(stringbuffer, s);
        } else
        if (isFullDetail(boolean1))
        {
            appendDetail(stringbuffer, s, ai);
        } else
        {
            appendSummary(stringbuffer, s, ai);
        }
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, long al[], Boolean boolean1)
    {
        appendFieldStart(stringbuffer, s);
        if (al == null)
        {
            appendNullText(stringbuffer, s);
        } else
        if (isFullDetail(boolean1))
        {
            appendDetail(stringbuffer, s, al);
        } else
        {
            appendSummary(stringbuffer, s, al);
        }
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, Object aobj[], Boolean boolean1)
    {
        appendFieldStart(stringbuffer, s);
        if (aobj == null)
        {
            appendNullText(stringbuffer, s);
        } else
        if (isFullDetail(boolean1))
        {
            appendDetail(stringbuffer, s, aobj);
        } else
        {
            appendSummary(stringbuffer, s, aobj);
        }
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, short aword0[], Boolean boolean1)
    {
        appendFieldStart(stringbuffer, s);
        if (aword0 == null)
        {
            appendNullText(stringbuffer, s);
        } else
        if (isFullDetail(boolean1))
        {
            appendDetail(stringbuffer, s, aword0);
        } else
        {
            appendSummary(stringbuffer, s, aword0);
        }
        appendFieldEnd(stringbuffer, s);
    }

    public void append(StringBuffer stringbuffer, String s, boolean aflag[], Boolean boolean1)
    {
        appendFieldStart(stringbuffer, s);
        if (aflag == null)
        {
            appendNullText(stringbuffer, s);
        } else
        if (isFullDetail(boolean1))
        {
            appendDetail(stringbuffer, s, aflag);
        } else
        {
            appendSummary(stringbuffer, s, aflag);
        }
        appendFieldEnd(stringbuffer, s);
    }

    protected void appendClassName(StringBuffer stringbuffer, Object obj)
    {
label0:
        {
            if (useClassName && obj != null)
            {
                register(obj);
                if (!useShortClassName)
                {
                    break label0;
                }
                stringbuffer.append(getShortClassName(obj.getClass()));
            }
            return;
        }
        stringbuffer.append(obj.getClass().getName());
    }

    protected void appendContentEnd(StringBuffer stringbuffer)
    {
        stringbuffer.append(contentEnd);
    }

    protected void appendContentStart(StringBuffer stringbuffer)
    {
        stringbuffer.append(contentStart);
    }

    protected void appendCyclicObject(StringBuffer stringbuffer, String s, Object obj)
    {
        ObjectUtils.identityToString(stringbuffer, obj);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, byte byte0)
    {
        stringbuffer.append(byte0);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, char c)
    {
        stringbuffer.append(c);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, double d)
    {
        stringbuffer.append(d);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, float f)
    {
        stringbuffer.append(f);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, int i)
    {
        stringbuffer.append(i);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, long l)
    {
        stringbuffer.append(l);
    }

    public void appendDetail(StringBuffer stringbuffer, String s, Object obj)
    {
        stringbuffer.append(obj);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, Collection collection)
    {
        stringbuffer.append(collection);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, Map map)
    {
        stringbuffer.append(map);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, short word0)
    {
        stringbuffer.append(word0);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, boolean flag)
    {
        stringbuffer.append(flag);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, byte abyte0[])
    {
        stringbuffer.append(arrayStart);
        for (int i = 0; i < abyte0.length; i++)
        {
            if (i > 0)
            {
                stringbuffer.append(arraySeparator);
            }
            appendDetail(stringbuffer, s, abyte0[i]);
        }

        stringbuffer.append(arrayEnd);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, char ac[])
    {
        stringbuffer.append(arrayStart);
        for (int i = 0; i < ac.length; i++)
        {
            if (i > 0)
            {
                stringbuffer.append(arraySeparator);
            }
            appendDetail(stringbuffer, s, ac[i]);
        }

        stringbuffer.append(arrayEnd);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, double ad[])
    {
        stringbuffer.append(arrayStart);
        for (int i = 0; i < ad.length; i++)
        {
            if (i > 0)
            {
                stringbuffer.append(arraySeparator);
            }
            appendDetail(stringbuffer, s, ad[i]);
        }

        stringbuffer.append(arrayEnd);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, float af[])
    {
        stringbuffer.append(arrayStart);
        for (int i = 0; i < af.length; i++)
        {
            if (i > 0)
            {
                stringbuffer.append(arraySeparator);
            }
            appendDetail(stringbuffer, s, af[i]);
        }

        stringbuffer.append(arrayEnd);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, int ai[])
    {
        stringbuffer.append(arrayStart);
        for (int i = 0; i < ai.length; i++)
        {
            if (i > 0)
            {
                stringbuffer.append(arraySeparator);
            }
            appendDetail(stringbuffer, s, ai[i]);
        }

        stringbuffer.append(arrayEnd);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, long al[])
    {
        stringbuffer.append(arrayStart);
        for (int i = 0; i < al.length; i++)
        {
            if (i > 0)
            {
                stringbuffer.append(arraySeparator);
            }
            appendDetail(stringbuffer, s, al[i]);
        }

        stringbuffer.append(arrayEnd);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, Object aobj[])
    {
        stringbuffer.append(arrayStart);
        int i = 0;
        while (i < aobj.length) 
        {
            Object obj = aobj[i];
            if (i > 0)
            {
                stringbuffer.append(arraySeparator);
            }
            if (obj == null)
            {
                appendNullText(stringbuffer, s);
            } else
            {
                appendInternal(stringbuffer, s, obj, arrayContentDetail);
            }
            i++;
        }
        stringbuffer.append(arrayEnd);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, short aword0[])
    {
        stringbuffer.append(arrayStart);
        for (int i = 0; i < aword0.length; i++)
        {
            if (i > 0)
            {
                stringbuffer.append(arraySeparator);
            }
            appendDetail(stringbuffer, s, aword0[i]);
        }

        stringbuffer.append(arrayEnd);
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, boolean aflag[])
    {
        stringbuffer.append(arrayStart);
        for (int i = 0; i < aflag.length; i++)
        {
            if (i > 0)
            {
                stringbuffer.append(arraySeparator);
            }
            appendDetail(stringbuffer, s, aflag[i]);
        }

        stringbuffer.append(arrayEnd);
    }

    public void appendEnd(StringBuffer stringbuffer, Object obj)
    {
        if (!fieldSeparatorAtEnd)
        {
            removeLastFieldSeparator(stringbuffer);
        }
        appendContentEnd(stringbuffer);
        unregister(obj);
    }

    protected void appendFieldEnd(StringBuffer stringbuffer, String s)
    {
        appendFieldSeparator(stringbuffer);
    }

    protected void appendFieldSeparator(StringBuffer stringbuffer)
    {
        stringbuffer.append(fieldSeparator);
    }

    protected void appendFieldStart(StringBuffer stringbuffer, String s)
    {
        if (useFieldNames && s != null)
        {
            stringbuffer.append(s);
            stringbuffer.append(fieldNameValueSeparator);
        }
    }

    protected void appendIdentityHashCode(StringBuffer stringbuffer, Object obj)
    {
        if (isUseIdentityHashCode() && obj != null)
        {
            register(obj);
            stringbuffer.append('@');
            stringbuffer.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    protected void appendInternal(StringBuffer stringbuffer, String s, Object obj, boolean flag)
    {
        if (isRegistered(obj) && !(obj instanceof Number) && !(obj instanceof Boolean) && !(obj instanceof Character))
        {
            appendCyclicObject(stringbuffer, s, obj);
            return;
        }
        register(obj);
        if (!(obj instanceof Collection)) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        appendDetail(stringbuffer, s, (Collection)obj);
_L5:
        unregister(obj);
        return;
_L4:
        appendSummarySize(stringbuffer, s, ((Collection)obj).size());
          goto _L5
        Exception exception;
        exception;
        unregister(obj);
        throw exception;
_L2:
        if (!(obj instanceof Map))
        {
            break MISSING_BLOCK_LABEL_137;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        appendDetail(stringbuffer, s, (Map)obj);
          goto _L5
        appendSummarySize(stringbuffer, s, ((Map)obj).size());
          goto _L5
        if (!(obj instanceof long[]))
        {
            break MISSING_BLOCK_LABEL_181;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        appendDetail(stringbuffer, s, (long[])(long[])obj);
          goto _L5
        appendSummary(stringbuffer, s, (long[])(long[])obj);
          goto _L5
        if (!(obj instanceof int[]))
        {
            break MISSING_BLOCK_LABEL_225;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_209;
        }
        appendDetail(stringbuffer, s, (int[])(int[])obj);
          goto _L5
        appendSummary(stringbuffer, s, (int[])(int[])obj);
          goto _L5
        if (!(obj instanceof short[]))
        {
            break MISSING_BLOCK_LABEL_269;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_253;
        }
        appendDetail(stringbuffer, s, (short[])(short[])obj);
          goto _L5
        appendSummary(stringbuffer, s, (short[])(short[])obj);
          goto _L5
        if (!(obj instanceof byte[]))
        {
            break MISSING_BLOCK_LABEL_313;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_297;
        }
        appendDetail(stringbuffer, s, (byte[])(byte[])obj);
          goto _L5
        appendSummary(stringbuffer, s, (byte[])(byte[])obj);
          goto _L5
        if (!(obj instanceof char[]))
        {
            break MISSING_BLOCK_LABEL_357;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_341;
        }
        appendDetail(stringbuffer, s, (char[])(char[])obj);
          goto _L5
        appendSummary(stringbuffer, s, (char[])(char[])obj);
          goto _L5
        if (!(obj instanceof double[]))
        {
            break MISSING_BLOCK_LABEL_401;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_385;
        }
        appendDetail(stringbuffer, s, (double[])(double[])obj);
          goto _L5
        appendSummary(stringbuffer, s, (double[])(double[])obj);
          goto _L5
        if (!(obj instanceof float[]))
        {
            break MISSING_BLOCK_LABEL_445;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_429;
        }
        appendDetail(stringbuffer, s, (float[])(float[])obj);
          goto _L5
        appendSummary(stringbuffer, s, (float[])(float[])obj);
          goto _L5
        if (!(obj instanceof boolean[]))
        {
            break MISSING_BLOCK_LABEL_489;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_473;
        }
        appendDetail(stringbuffer, s, (boolean[])(boolean[])obj);
          goto _L5
        appendSummary(stringbuffer, s, (boolean[])(boolean[])obj);
          goto _L5
        if (!obj.getClass().isArray())
        {
            break MISSING_BLOCK_LABEL_536;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_520;
        }
        appendDetail(stringbuffer, s, (Object[])(Object[])obj);
          goto _L5
        appendSummary(stringbuffer, s, (Object[])(Object[])obj);
          goto _L5
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_551;
        }
        appendDetail(stringbuffer, s, obj);
          goto _L5
        appendSummary(stringbuffer, s, obj);
          goto _L5
    }

    protected void appendNullText(StringBuffer stringbuffer, String s)
    {
        stringbuffer.append(nullText);
    }

    public void appendStart(StringBuffer stringbuffer, Object obj)
    {
        if (obj != null)
        {
            appendClassName(stringbuffer, obj);
            appendIdentityHashCode(stringbuffer, obj);
            appendContentStart(stringbuffer);
            if (fieldSeparatorAtStart)
            {
                appendFieldSeparator(stringbuffer);
            }
        }
    }

    protected void appendSummary(StringBuffer stringbuffer, String s, Object obj)
    {
        stringbuffer.append(summaryObjectStartText);
        stringbuffer.append(getShortClassName(obj.getClass()));
        stringbuffer.append(summaryObjectEndText);
    }

    protected void appendSummary(StringBuffer stringbuffer, String s, byte abyte0[])
    {
        appendSummarySize(stringbuffer, s, abyte0.length);
    }

    protected void appendSummary(StringBuffer stringbuffer, String s, char ac[])
    {
        appendSummarySize(stringbuffer, s, ac.length);
    }

    protected void appendSummary(StringBuffer stringbuffer, String s, double ad[])
    {
        appendSummarySize(stringbuffer, s, ad.length);
    }

    protected void appendSummary(StringBuffer stringbuffer, String s, float af[])
    {
        appendSummarySize(stringbuffer, s, af.length);
    }

    protected void appendSummary(StringBuffer stringbuffer, String s, int ai[])
    {
        appendSummarySize(stringbuffer, s, ai.length);
    }

    protected void appendSummary(StringBuffer stringbuffer, String s, long al[])
    {
        appendSummarySize(stringbuffer, s, al.length);
    }

    protected void appendSummary(StringBuffer stringbuffer, String s, Object aobj[])
    {
        appendSummarySize(stringbuffer, s, aobj.length);
    }

    protected void appendSummary(StringBuffer stringbuffer, String s, short aword0[])
    {
        appendSummarySize(stringbuffer, s, aword0.length);
    }

    protected void appendSummary(StringBuffer stringbuffer, String s, boolean aflag[])
    {
        appendSummarySize(stringbuffer, s, aflag.length);
    }

    protected void appendSummarySize(StringBuffer stringbuffer, String s, int i)
    {
        stringbuffer.append(sizeStartText);
        stringbuffer.append(i);
        stringbuffer.append(sizeEndText);
    }

    public void appendSuper(StringBuffer stringbuffer, String s)
    {
        appendToString(stringbuffer, s);
    }

    public void appendToString(StringBuffer stringbuffer, String s)
    {
        if (s != null)
        {
            int i = s.indexOf(contentStart) + contentStart.length();
            int j = s.lastIndexOf(contentEnd);
            if (i != j && i >= 0 && j >= 0)
            {
                String s1 = s.substring(i, j);
                if (fieldSeparatorAtStart)
                {
                    removeLastFieldSeparator(stringbuffer);
                }
                stringbuffer.append(s1);
                appendFieldSeparator(stringbuffer);
            }
        }
    }

    protected String getArrayEnd()
    {
        return arrayEnd;
    }

    protected String getArraySeparator()
    {
        return arraySeparator;
    }

    protected String getArrayStart()
    {
        return arrayStart;
    }

    protected String getContentEnd()
    {
        return contentEnd;
    }

    protected String getContentStart()
    {
        return contentStart;
    }

    protected String getFieldNameValueSeparator()
    {
        return fieldNameValueSeparator;
    }

    protected String getFieldSeparator()
    {
        return fieldSeparator;
    }

    protected String getNullText()
    {
        return nullText;
    }

    public String getShortClassName(Class class1)
    {
        return ClassUtils.getShortClassName(class1);
    }

    protected String getSizeEndText()
    {
        return sizeEndText;
    }

    protected String getSizeStartText()
    {
        return sizeStartText;
    }

    protected String getSummaryObjectEndText()
    {
        return summaryObjectEndText;
    }

    protected String getSummaryObjectStartText()
    {
        return summaryObjectStartText;
    }

    protected boolean isArrayContentDetail()
    {
        return arrayContentDetail;
    }

    protected boolean isDefaultFullDetail()
    {
        return defaultFullDetail;
    }

    protected boolean isFieldSeparatorAtEnd()
    {
        return fieldSeparatorAtEnd;
    }

    protected boolean isFieldSeparatorAtStart()
    {
        return fieldSeparatorAtStart;
    }

    protected boolean isFullDetail(Boolean boolean1)
    {
        if (boolean1 == null)
        {
            return defaultFullDetail;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    protected boolean isUseClassName()
    {
        return useClassName;
    }

    protected boolean isUseFieldNames()
    {
        return useFieldNames;
    }

    protected boolean isUseIdentityHashCode()
    {
        return useIdentityHashCode;
    }

    protected boolean isUseShortClassName()
    {
        return useShortClassName;
    }

    protected void reflectionAppendArrayDetail(StringBuffer stringbuffer, String s, Object obj)
    {
        stringbuffer.append(arrayStart);
        int i = Array.getLength(obj);
        int j = 0;
        while (j < i) 
        {
            Object obj1 = Array.get(obj, j);
            if (j > 0)
            {
                stringbuffer.append(arraySeparator);
            }
            if (obj1 == null)
            {
                appendNullText(stringbuffer, s);
            } else
            {
                appendInternal(stringbuffer, s, obj1, arrayContentDetail);
            }
            j++;
        }
        stringbuffer.append(arrayEnd);
    }

    protected void removeLastFieldSeparator(StringBuffer stringbuffer)
    {
        int i;
        int j;
        i = stringbuffer.length();
        j = fieldSeparator.length();
        if (i <= 0 || j <= 0 || i < j) goto _L2; else goto _L1
_L1:
        int k = 0;
_L5:
        boolean flag;
        char c;
        char c1;
        if (k >= j)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        c = stringbuffer.charAt(i - 1 - k);
        c1 = fieldSeparator.charAt(j - 1 - k);
        flag = false;
        if (c == c1) goto _L4; else goto _L3
_L3:
        if (flag)
        {
            stringbuffer.setLength(i - j);
        }
_L2:
        return;
_L4:
        k++;
          goto _L5
        flag = true;
          goto _L3
    }

    public void setArrayContentDetail(boolean flag)
    {
        arrayContentDetail = flag;
    }

    public void setArrayEnd(String s)
    {
        if (s == null)
        {
            s = "";
        }
        arrayEnd = s;
    }

    protected void setArraySeparator(String s)
    {
        if (s == null)
        {
            s = "";
        }
        arraySeparator = s;
    }

    public void setArrayStart(String s)
    {
        if (s == null)
        {
            s = "";
        }
        arrayStart = s;
    }

    public void setContentEnd(String s)
    {
        if (s == null)
        {
            s = "";
        }
        contentEnd = s;
    }

    public void setContentStart(String s)
    {
        if (s == null)
        {
            s = "";
        }
        contentStart = s;
    }

    public void setDefaultFullDetail(boolean flag)
    {
        defaultFullDetail = flag;
    }

    protected void setFieldNameValueSeparator(String s)
    {
        if (s == null)
        {
            s = "";
        }
        fieldNameValueSeparator = s;
    }

    public void setFieldSeparator(String s)
    {
        if (s == null)
        {
            s = "";
        }
        fieldSeparator = s;
    }

    protected void setFieldSeparatorAtEnd(boolean flag)
    {
        fieldSeparatorAtEnd = flag;
    }

    protected void setFieldSeparatorAtStart(boolean flag)
    {
        fieldSeparatorAtStart = flag;
    }

    protected void setNullText(String s)
    {
        if (s == null)
        {
            s = "";
        }
        nullText = s;
    }

    protected void setSizeEndText(String s)
    {
        if (s == null)
        {
            s = "";
        }
        sizeEndText = s;
    }

    protected void setSizeStartText(String s)
    {
        if (s == null)
        {
            s = "";
        }
        sizeStartText = s;
    }

    protected void setSummaryObjectEndText(String s)
    {
        if (s == null)
        {
            s = "";
        }
        summaryObjectEndText = s;
    }

    protected void setSummaryObjectStartText(String s)
    {
        if (s == null)
        {
            s = "";
        }
        summaryObjectStartText = s;
    }

    public void setUseClassName(boolean flag)
    {
        useClassName = flag;
    }

    protected void setUseFieldNames(boolean flag)
    {
        useFieldNames = flag;
    }

    public void setUseIdentityHashCode(boolean flag)
    {
        useIdentityHashCode = flag;
    }

    public void setUseShortClassName(boolean flag)
    {
        useShortClassName = flag;
    }

}
