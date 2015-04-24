// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text;

import java.text.Format;
import java.text.MessageFormat;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.Validate;

// Referenced classes of package org.apache.commons.lang3.text:
//            FormatFactory, StrMatcher

public class ExtendedMessageFormat extends MessageFormat
{

    private static final String DUMMY_PATTERN = "";
    private static final char END_FE = 125;
    private static final String ESCAPED_QUOTE = "''";
    private static final int HASH_SEED = 31;
    private static final char QUOTE = 39;
    private static final char START_FE = 123;
    private static final char START_FMT = 44;
    private static final long serialVersionUID = 0xdf38519104e1c7e1L;
    private final Map registry;
    private String toPattern;

    public ExtendedMessageFormat(String s)
    {
        this(s, Locale.getDefault());
    }

    public ExtendedMessageFormat(String s, Locale locale)
    {
        this(s, locale, null);
    }

    public ExtendedMessageFormat(String s, Locale locale, Map map)
    {
        super("");
        setLocale(locale);
        registry = map;
        applyPattern(s);
    }

    public ExtendedMessageFormat(String s, Map map)
    {
        this(s, Locale.getDefault(), map);
    }

    private StringBuilder appendQuotedString(String s, ParsePosition parseposition, StringBuilder stringbuilder, boolean flag)
    {
        int i;
        char ac[];
        i = parseposition.getIndex();
        ac = s.toCharArray();
        if (!flag || ac[i] != '\'') goto _L2; else goto _L1
_L1:
        next(parseposition);
        if (stringbuilder != null) goto _L4; else goto _L3
_L3:
        return null;
_L4:
        return stringbuilder.append('\'');
_L2:
        int j = parseposition.getIndex();
        int k = i;
        while (j < s.length()) 
        {
            if (flag && s.substring(j).startsWith("''"))
            {
                stringbuilder.append(ac, k, parseposition.getIndex() - k).append('\'');
                parseposition.setIndex(j + "''".length());
                k = parseposition.getIndex();
            } else
            {
                switch (ac[parseposition.getIndex()])
                {
                default:
                    next(parseposition);
                    break;

                case 39: // '\''
                    next(parseposition);
                    if (stringbuilder != null)
                    {
                        return stringbuilder.append(ac, k, parseposition.getIndex() - k);
                    }
                    continue; /* Loop/switch isn't completed */
                }
            }
            j++;
        }
        throw new IllegalArgumentException((new StringBuilder()).append("Unterminated quoted string at position ").append(i).toString());
        if (true) goto _L3; else goto _L5
_L5:
    }

    private boolean containsElements(Collection collection)
    {
        if (collection != null && !collection.isEmpty())
        {
            Iterator iterator = collection.iterator();
            while (iterator.hasNext()) 
            {
                if (iterator.next() != null)
                {
                    return true;
                }
            }
        }
        return false;
    }

    private Format getFormat(String s)
    {
        Map map = registry;
        Format format = null;
        if (map != null)
        {
            int i = s.indexOf(',');
            String s1;
            FormatFactory formatfactory;
            if (i > 0)
            {
                String s2 = s.substring(0, i).trim();
                String s3 = s.substring(i + 1).trim();
                s = s2;
                s1 = s3;
            } else
            {
                s1 = null;
            }
            formatfactory = (FormatFactory)registry.get(s);
            format = null;
            if (formatfactory != null)
            {
                format = formatfactory.getFormat(s, s1, getLocale());
            }
        }
        return format;
    }

    private void getQuotedString(String s, ParsePosition parseposition, boolean flag)
    {
        appendQuotedString(s, parseposition, null, flag);
    }

    private String insertFormats(String s, ArrayList arraylist)
    {
        StringBuilder stringbuilder;
        ParsePosition parseposition;
        int i;
        int j;
        if (!containsElements(arraylist))
        {
            return s;
        }
        stringbuilder = new StringBuilder(2 * s.length());
        parseposition = new ParsePosition(0);
        i = -1;
        j = 0;
_L8:
        if (parseposition.getIndex() >= s.length()) goto _L2; else goto _L1
_L1:
        char c = s.charAt(parseposition.getIndex());
        c;
        JVM INSTR lookupswitch 3: default 100
    //                   39: 117
    //                   123: 130
    //                   125: 201;
           goto _L3 _L4 _L5 _L6
_L3:
        stringbuilder.append(c);
        next(parseposition);
        continue; /* Loop/switch isn't completed */
_L4:
        appendQuotedString(s, parseposition, stringbuilder, false);
        continue; /* Loop/switch isn't completed */
_L5:
        int k = j + 1;
        stringbuilder.append('{').append(readArgumentIndex(s, next(parseposition)));
        if (k == 1)
        {
            i++;
            String s1 = (String)arraylist.get(i);
            if (s1 != null)
            {
                stringbuilder.append(',').append(s1);
            }
            j = k;
        } else
        {
            j = k;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        j--;
        if (true) goto _L3; else goto _L2
_L2:
        return stringbuilder.toString();
        if (true) goto _L8; else goto _L7
_L7:
    }

    private ParsePosition next(ParsePosition parseposition)
    {
        parseposition.setIndex(1 + parseposition.getIndex());
        return parseposition;
    }

    private String parseFormatDescription(String s, ParsePosition parseposition)
    {
        int i;
        int j;
        int k;
        i = parseposition.getIndex();
        seekNonWs(s, parseposition);
        j = parseposition.getIndex();
        k = 1;
_L6:
        if (parseposition.getIndex() >= s.length())
        {
            break MISSING_BLOCK_LABEL_116;
        }
        s.charAt(parseposition.getIndex());
        JVM INSTR lookupswitch 3: default 72
    //                   39: 106
    //                   123: 81
    //                   125: 87;
           goto _L1 _L2 _L3 _L4
_L2:
        break MISSING_BLOCK_LABEL_106;
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break; /* Loop/switch isn't completed */
_L7:
        next(parseposition);
        if (true) goto _L6; else goto _L5
_L5:
        k++;
          goto _L7
_L4:
        if (--k == 0)
        {
            return s.substring(j, parseposition.getIndex());
        }
          goto _L7
        getQuotedString(s, parseposition, false);
          goto _L7
        throw new IllegalArgumentException((new StringBuilder()).append("Unterminated format element at position ").append(i).toString());
    }

    private int readArgumentIndex(String s, ParsePosition parseposition)
    {
        int i;
        StringBuilder stringbuilder;
        boolean flag;
        i = parseposition.getIndex();
        seekNonWs(s, parseposition);
        stringbuilder = new StringBuilder();
        flag = false;
_L2:
        char c;
        if (flag || parseposition.getIndex() >= s.length())
        {
            break MISSING_BLOCK_LABEL_168;
        }
        c = s.charAt(parseposition.getIndex());
        if (!Character.isWhitespace(c))
        {
            break; /* Loop/switch isn't completed */
        }
        seekNonWs(s, parseposition);
        c = s.charAt(parseposition.getIndex());
        if (c == ',' || c == '}')
        {
            break; /* Loop/switch isn't completed */
        }
        flag = true;
_L3:
        next(parseposition);
        if (true) goto _L2; else goto _L1
_L1:
        char c1;
        c1 = c;
        if (c1 != ',' && c1 != '}' || stringbuilder.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        int j = Integer.parseInt(stringbuilder.toString());
        return j;
        NumberFormatException numberformatexception;
        numberformatexception;
        if (!Character.isDigit(c1))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        stringbuilder.append(c1);
          goto _L3
        if (flag)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid format argument index at position ").append(i).append(": ").append(s.substring(i, parseposition.getIndex())).toString());
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unterminated format element at position ").append(i).toString());
        }
    }

    private void seekNonWs(String s, ParsePosition parseposition)
    {
        char ac[] = s.toCharArray();
        int i;
        do
        {
            i = StrMatcher.splitMatcher().isMatch(ac, parseposition.getIndex());
            parseposition.setIndex(i + parseposition.getIndex());
        } while (i > 0 && parseposition.getIndex() < s.length());
    }

    public final void applyPattern(String s)
    {
        int i = 0;
        if (registry != null) goto _L2; else goto _L1
_L1:
        super.applyPattern(s);
        toPattern = super.toPattern();
_L10:
        return;
_L2:
        ArrayList arraylist;
        ArrayList arraylist1;
        StringBuilder stringbuilder;
        ParsePosition parseposition;
        char ac[];
        int j;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        stringbuilder = new StringBuilder(s.length());
        parseposition = new ParsePosition(0);
        ac = s.toCharArray();
        j = 0;
_L9:
        if (parseposition.getIndex() >= s.length()) goto _L4; else goto _L3
_L3:
        ac[parseposition.getIndex()];
        JVM INSTR lookupswitch 2: default 120
    //                   39: 144
    //                   123: 158;
           goto _L5 _L6 _L7
_L5:
        stringbuilder.append(ac[parseposition.getIndex()]);
        next(parseposition);
        continue; /* Loop/switch isn't completed */
_L6:
        appendQuotedString(s, parseposition, stringbuilder, true);
        if (true) goto _L9; else goto _L8
_L8:
_L4:
        super.applyPattern(stringbuilder.toString());
        toPattern = insertFormats(super.toPattern(), arraylist1);
        if (containsElements(arraylist))
        {
            Format aformat[] = getFormats();
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
            {
                Format format = (Format)iterator.next();
                if (format != null)
                {
                    aformat[i] = format;
                }
                i++;
            }

            super.setFormats(aformat);
            return;
        }
          goto _L10
_L7:
        int k = j + 1;
        seekNonWs(s, parseposition);
        int l = parseposition.getIndex();
        int i1 = readArgumentIndex(s, next(parseposition));
        stringbuilder.append('{').append(i1);
        seekNonWs(s, parseposition);
        String s1;
        Format format1;
        boolean flag;
        boolean flag1;
        if (ac[parseposition.getIndex()] == ',')
        {
            s1 = parseFormatDescription(s, next(parseposition));
            format1 = getFormat(s1);
            if (format1 == null)
            {
                stringbuilder.append(',').append(s1);
            }
        } else
        {
            s1 = null;
            format1 = null;
        }
        arraylist.add(format1);
        if (format1 == null)
        {
            s1 = null;
        }
        arraylist1.add(s1);
        if (arraylist.size() == k)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Validate.isTrue(flag);
        if (arraylist1.size() == k)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1);
        if (ac[parseposition.getIndex()] != '}')
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unreadable format element at position ").append(l).toString());
        }
        j = k;
          goto _L5
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (!super.equals(obj))
            {
                return false;
            }
            if (ObjectUtils.notEqual(getClass(), obj.getClass()))
            {
                return false;
            }
            ExtendedMessageFormat extendedmessageformat = (ExtendedMessageFormat)obj;
            if (ObjectUtils.notEqual(toPattern, extendedmessageformat.toPattern))
            {
                return false;
            }
            if (ObjectUtils.notEqual(registry, extendedmessageformat.registry))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (31 * super.hashCode() + ObjectUtils.hashCode(registry)) + ObjectUtils.hashCode(toPattern);
    }

    public void setFormat(int i, Format format)
    {
        throw new UnsupportedOperationException();
    }

    public void setFormatByArgumentIndex(int i, Format format)
    {
        throw new UnsupportedOperationException();
    }

    public void setFormats(Format aformat[])
    {
        throw new UnsupportedOperationException();
    }

    public void setFormatsByArgumentIndex(Format aformat[])
    {
        throw new UnsupportedOperationException();
    }

    public String toPattern()
    {
        return toPattern;
    }
}
