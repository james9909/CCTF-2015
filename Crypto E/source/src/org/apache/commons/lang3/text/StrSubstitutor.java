// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.apache.commons.lang3.StringUtils;

// Referenced classes of package org.apache.commons.lang3.text:
//            StrMatcher, StrLookup, StrBuilder

public class StrSubstitutor
{

    public static final char DEFAULT_ESCAPE = 36;
    public static final StrMatcher DEFAULT_PREFIX = StrMatcher.stringMatcher("${");
    public static final StrMatcher DEFAULT_SUFFIX = StrMatcher.stringMatcher("}");
    public static final StrMatcher DEFAULT_VALUE_DELIMITER = StrMatcher.stringMatcher(":-");
    private boolean enableSubstitutionInVariables;
    private char escapeChar;
    private StrMatcher prefixMatcher;
    private StrMatcher suffixMatcher;
    private StrMatcher valueDelimiterMatcher;
    private StrLookup variableResolver;

    public StrSubstitutor()
    {
        this((StrLookup)null, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public StrSubstitutor(Map map)
    {
        this(StrLookup.mapLookup(map), DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public StrSubstitutor(Map map, String s, String s1)
    {
        this(StrLookup.mapLookup(map), s, s1, '$');
    }

    public StrSubstitutor(Map map, String s, String s1, char c)
    {
        this(StrLookup.mapLookup(map), s, s1, c);
    }

    public StrSubstitutor(Map map, String s, String s1, char c, String s2)
    {
        this(StrLookup.mapLookup(map), s, s1, c, s2);
    }

    public StrSubstitutor(StrLookup strlookup)
    {
        this(strlookup, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public StrSubstitutor(StrLookup strlookup, String s, String s1, char c)
    {
        setVariableResolver(strlookup);
        setVariablePrefix(s);
        setVariableSuffix(s1);
        setEscapeChar(c);
        setValueDelimiterMatcher(DEFAULT_VALUE_DELIMITER);
    }

    public StrSubstitutor(StrLookup strlookup, String s, String s1, char c, String s2)
    {
        setVariableResolver(strlookup);
        setVariablePrefix(s);
        setVariableSuffix(s1);
        setEscapeChar(c);
        setValueDelimiter(s2);
    }

    public StrSubstitutor(StrLookup strlookup, StrMatcher strmatcher, StrMatcher strmatcher1, char c)
    {
        this(strlookup, strmatcher, strmatcher1, c, DEFAULT_VALUE_DELIMITER);
    }

    public StrSubstitutor(StrLookup strlookup, StrMatcher strmatcher, StrMatcher strmatcher1, char c, StrMatcher strmatcher2)
    {
        setVariableResolver(strlookup);
        setVariablePrefixMatcher(strmatcher);
        setVariableSuffixMatcher(strmatcher1);
        setEscapeChar(c);
        setValueDelimiterMatcher(strmatcher2);
    }

    private void checkCyclicSubstitution(String s, List list)
    {
        if (!list.contains(s))
        {
            return;
        } else
        {
            StrBuilder strbuilder = new StrBuilder(256);
            strbuilder.append("Infinite loop in property interpolation of ");
            strbuilder.append((String)list.remove(0));
            strbuilder.append(": ");
            strbuilder.appendWithSeparators(list, "->");
            throw new IllegalStateException(strbuilder.toString());
        }
    }

    public static String replace(Object obj, Map map)
    {
        return (new StrSubstitutor(map)).replace(obj);
    }

    public static String replace(Object obj, Map map, String s, String s1)
    {
        return (new StrSubstitutor(map, s, s1)).replace(obj);
    }

    public static String replace(Object obj, Properties properties)
    {
        if (properties == null)
        {
            return obj.toString();
        }
        HashMap hashmap = new HashMap();
        String s;
        for (Enumeration enumeration = properties.propertyNames(); enumeration.hasMoreElements(); hashmap.put(s, properties.getProperty(s)))
        {
            s = (String)enumeration.nextElement();
        }

        return replace(obj, ((Map) (hashmap)));
    }

    public static String replaceSystemProperties(Object obj)
    {
        return (new StrSubstitutor(StrLookup.systemPropertiesLookup())).replace(obj);
    }

    private int substitute(StrBuilder strbuilder, int i, int j, List list)
    {
        StrMatcher strmatcher;
        StrMatcher strmatcher1;
        char c;
        StrMatcher strmatcher2;
        boolean flag;
        boolean flag1;
        boolean flag2;
        int k;
        char ac[];
        int l;
        int i1;
        Object obj;
        int j1;
        int k1;
        strmatcher = getVariablePrefixMatcher();
        strmatcher1 = getVariableSuffixMatcher();
        c = getEscapeChar();
        strmatcher2 = getValueDelimiterMatcher();
        flag = isEnableSubstitutionInVariables();
        if (list == null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        flag2 = false;
        k = 0;
        ac = strbuilder.buffer;
        l = i + j;
        i1 = i;
        obj = list;
        if (i1 >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        j1 = strmatcher.isMatch(ac, i1, i, l);
        if (j1 == 0)
        {
            k1 = i1 + 1;
        } else
        {
label0:
            {
                if (i1 <= i || ac[i1 - 1] != c)
                {
                    break label0;
                }
                strbuilder.deleteCharAt(i1 - 1);
                ac = strbuilder.buffer;
                k--;
                flag2 = true;
                l--;
                k1 = i1;
            }
        }
_L3:
        i1 = k1;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_62;
        int l1;
        k1 = i1 + j1;
        l1 = 0;
_L4:
        while (k1 < l) 
        {
label1:
            {
                if (!flag)
                {
                    break label1;
                }
                int j3 = strmatcher.isMatch(ac, k1, i, l);
                if (j3 == 0)
                {
                    break label1;
                }
                l1++;
                k1 += j3;
            }
        }
          goto _L3
        int i2;
label2:
        {
            i2 = strmatcher1.isMatch(ac, k1, i, l);
            if (i2 != 0)
            {
                break label2;
            }
            k1++;
        }
          goto _L4
        if (l1 != 0) goto _L6; else goto _L5
_L5:
        String s;
        char ac1[];
        int l2;
        s = new String(ac, i1 + j1, k1 - i1 - j1);
        if (flag)
        {
            StrBuilder strbuilder1 = new StrBuilder(s);
            substitute(strbuilder1, 0, strbuilder1.length());
            s = strbuilder1.toString();
        }
        k1 += i2;
        if (strmatcher2 == null)
        {
            break MISSING_BLOCK_LABEL_600;
        }
        ac1 = s.toCharArray();
        l2 = 0;
_L7:
        String s1;
        String s2;
        String s3;
        if (l2 >= ac1.length)
        {
            break MISSING_BLOCK_LABEL_600;
        }
        int j2;
        int k2;
        if (!flag && strmatcher.isMatch(ac1, l2, l2, ac1.length) != 0)
        {
            s2 = null;
            s1 = s;
        } else
        {
label3:
            {
                int i3 = strmatcher2.isMatch(ac1, l2);
                if (i3 == 0)
                {
                    break label3;
                }
                s1 = s.substring(0, l2);
                s2 = s.substring(l2 + i3);
            }
        }
_L8:
        if (obj == null)
        {
            obj = new ArrayList();
            ((List) (obj)).add(new String(ac, i, j));
        }
        checkCyclicSubstitution(s1, ((List) (obj)));
        ((List) (obj)).add(s1);
        s3 = resolveVariable(s1, strbuilder, i1, k1);
        if (s3 != null)
        {
            s2 = s3;
        }
        if (s2 != null)
        {
            j2 = s2.length();
            strbuilder.replace(i1, k1, s2);
            flag2 = true;
            k2 = (j2 + substitute(strbuilder, i1, j2, ((List) (obj)))) - (k1 - i1);
            k1 += k2;
            l += k2;
            k += k2;
            ac = strbuilder.buffer;
        }
        ((List) (obj)).remove(-1 + ((List) (obj)).size());
          goto _L3
        l2++;
          goto _L7
_L6:
        l1--;
        k1 += i2;
          goto _L4
_L1:
        if (flag1)
        {
            return !flag2 ? 0 : 1;
        } else
        {
            return k;
        }
        s1 = s;
        s2 = null;
          goto _L8
    }

    public char getEscapeChar()
    {
        return escapeChar;
    }

    public StrMatcher getValueDelimiterMatcher()
    {
        return valueDelimiterMatcher;
    }

    public StrMatcher getVariablePrefixMatcher()
    {
        return prefixMatcher;
    }

    public StrLookup getVariableResolver()
    {
        return variableResolver;
    }

    public StrMatcher getVariableSuffixMatcher()
    {
        return suffixMatcher;
    }

    public boolean isEnableSubstitutionInVariables()
    {
        return enableSubstitutionInVariables;
    }

    public String replace(CharSequence charsequence)
    {
        if (charsequence == null)
        {
            return null;
        } else
        {
            return replace(charsequence, 0, charsequence.length());
        }
    }

    public String replace(CharSequence charsequence, int i, int j)
    {
        if (charsequence == null)
        {
            return null;
        } else
        {
            StrBuilder strbuilder = (new StrBuilder(j)).append(charsequence, i, j);
            substitute(strbuilder, 0, j);
            return strbuilder.toString();
        }
    }

    public String replace(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            StrBuilder strbuilder = (new StrBuilder()).append(obj);
            substitute(strbuilder, 0, strbuilder.length());
            return strbuilder.toString();
        }
    }

    public String replace(String s)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            StrBuilder strbuilder = new StrBuilder(s);
            if (substitute(strbuilder, 0, s.length()))
            {
                return strbuilder.toString();
            }
        }
        return s;
    }

    public String replace(String s, int i, int j)
    {
        if (s == null)
        {
            return null;
        }
        StrBuilder strbuilder = (new StrBuilder(j)).append(s, i, j);
        if (!substitute(strbuilder, 0, j))
        {
            return s.substring(i, i + j);
        } else
        {
            return strbuilder.toString();
        }
    }

    public String replace(StringBuffer stringbuffer)
    {
        if (stringbuffer == null)
        {
            return null;
        } else
        {
            StrBuilder strbuilder = (new StrBuilder(stringbuffer.length())).append(stringbuffer);
            substitute(strbuilder, 0, strbuilder.length());
            return strbuilder.toString();
        }
    }

    public String replace(StringBuffer stringbuffer, int i, int j)
    {
        if (stringbuffer == null)
        {
            return null;
        } else
        {
            StrBuilder strbuilder = (new StrBuilder(j)).append(stringbuffer, i, j);
            substitute(strbuilder, 0, j);
            return strbuilder.toString();
        }
    }

    public String replace(StrBuilder strbuilder)
    {
        if (strbuilder == null)
        {
            return null;
        } else
        {
            StrBuilder strbuilder1 = (new StrBuilder(strbuilder.length())).append(strbuilder);
            substitute(strbuilder1, 0, strbuilder1.length());
            return strbuilder1.toString();
        }
    }

    public String replace(StrBuilder strbuilder, int i, int j)
    {
        if (strbuilder == null)
        {
            return null;
        } else
        {
            StrBuilder strbuilder1 = (new StrBuilder(j)).append(strbuilder, i, j);
            substitute(strbuilder1, 0, j);
            return strbuilder1.toString();
        }
    }

    public String replace(char ac[])
    {
        if (ac == null)
        {
            return null;
        } else
        {
            StrBuilder strbuilder = (new StrBuilder(ac.length)).append(ac);
            substitute(strbuilder, 0, ac.length);
            return strbuilder.toString();
        }
    }

    public String replace(char ac[], int i, int j)
    {
        if (ac == null)
        {
            return null;
        } else
        {
            StrBuilder strbuilder = (new StrBuilder(j)).append(ac, i, j);
            substitute(strbuilder, 0, j);
            return strbuilder.toString();
        }
    }

    public boolean replaceIn(StringBuffer stringbuffer)
    {
        if (stringbuffer == null)
        {
            return false;
        } else
        {
            return replaceIn(stringbuffer, 0, stringbuffer.length());
        }
    }

    public boolean replaceIn(StringBuffer stringbuffer, int i, int j)
    {
        StrBuilder strbuilder;
        if (stringbuffer != null)
        {
            if (substitute(strbuilder = (new StrBuilder(j)).append(stringbuffer, i, j), 0, j))
            {
                stringbuffer.replace(i, i + j, strbuilder.toString());
                return true;
            }
        }
        return false;
    }

    public boolean replaceIn(StringBuilder stringbuilder)
    {
        if (stringbuilder == null)
        {
            return false;
        } else
        {
            return replaceIn(stringbuilder, 0, stringbuilder.length());
        }
    }

    public boolean replaceIn(StringBuilder stringbuilder, int i, int j)
    {
        StrBuilder strbuilder;
        if (stringbuilder != null)
        {
            if (substitute(strbuilder = (new StrBuilder(j)).append(stringbuilder, i, j), 0, j))
            {
                stringbuilder.replace(i, i + j, strbuilder.toString());
                return true;
            }
        }
        return false;
    }

    public boolean replaceIn(StrBuilder strbuilder)
    {
        if (strbuilder == null)
        {
            return false;
        } else
        {
            return substitute(strbuilder, 0, strbuilder.length());
        }
    }

    public boolean replaceIn(StrBuilder strbuilder, int i, int j)
    {
        if (strbuilder == null)
        {
            return false;
        } else
        {
            return substitute(strbuilder, i, j);
        }
    }

    protected String resolveVariable(String s, StrBuilder strbuilder, int i, int j)
    {
        StrLookup strlookup = getVariableResolver();
        if (strlookup == null)
        {
            return null;
        } else
        {
            return strlookup.lookup(s);
        }
    }

    public void setEnableSubstitutionInVariables(boolean flag)
    {
        enableSubstitutionInVariables = flag;
    }

    public void setEscapeChar(char c)
    {
        escapeChar = c;
    }

    public StrSubstitutor setValueDelimiter(char c)
    {
        return setValueDelimiterMatcher(StrMatcher.charMatcher(c));
    }

    public StrSubstitutor setValueDelimiter(String s)
    {
        if (StringUtils.isEmpty(s))
        {
            setValueDelimiterMatcher(null);
            return this;
        } else
        {
            return setValueDelimiterMatcher(StrMatcher.stringMatcher(s));
        }
    }

    public StrSubstitutor setValueDelimiterMatcher(StrMatcher strmatcher)
    {
        valueDelimiterMatcher = strmatcher;
        return this;
    }

    public StrSubstitutor setVariablePrefix(char c)
    {
        return setVariablePrefixMatcher(StrMatcher.charMatcher(c));
    }

    public StrSubstitutor setVariablePrefix(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Variable prefix must not be null!");
        } else
        {
            return setVariablePrefixMatcher(StrMatcher.stringMatcher(s));
        }
    }

    public StrSubstitutor setVariablePrefixMatcher(StrMatcher strmatcher)
    {
        if (strmatcher == null)
        {
            throw new IllegalArgumentException("Variable prefix matcher must not be null!");
        } else
        {
            prefixMatcher = strmatcher;
            return this;
        }
    }

    public void setVariableResolver(StrLookup strlookup)
    {
        variableResolver = strlookup;
    }

    public StrSubstitutor setVariableSuffix(char c)
    {
        return setVariableSuffixMatcher(StrMatcher.charMatcher(c));
    }

    public StrSubstitutor setVariableSuffix(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Variable suffix must not be null!");
        } else
        {
            return setVariableSuffixMatcher(StrMatcher.stringMatcher(s));
        }
    }

    public StrSubstitutor setVariableSuffixMatcher(StrMatcher strmatcher)
    {
        if (strmatcher == null)
        {
            throw new IllegalArgumentException("Variable suffix matcher must not be null!");
        } else
        {
            suffixMatcher = strmatcher;
            return this;
        }
    }

    protected boolean substitute(StrBuilder strbuilder, int i, int j)
    {
        return substitute(strbuilder, i, j, null) > 0;
    }

}
