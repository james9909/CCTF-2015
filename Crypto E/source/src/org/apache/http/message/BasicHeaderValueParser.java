// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.message;

import java.util.ArrayList;
import java.util.List;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.message:
//            HeaderValueParser, ParserCursor, BasicHeaderElement, BasicNameValuePair

public class BasicHeaderValueParser
    implements HeaderValueParser
{

    private static final char ALL_DELIMITERS[] = {
        ';', ','
    };
    public static final BasicHeaderValueParser DEFAULT = new BasicHeaderValueParser();
    private static final char ELEM_DELIMITER = 44;
    public static final BasicHeaderValueParser INSTANCE = new BasicHeaderValueParser();
    private static final char PARAM_DELIMITER = 59;

    public BasicHeaderValueParser()
    {
    }

    private static boolean isOneOf(char c, char ac[])
    {
        boolean flag = false;
        if (ac == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        i = ac.length;
        j = 0;
_L7:
        flag = false;
        if (j >= i) goto _L2; else goto _L3
_L3:
        if (c != ac[j]) goto _L5; else goto _L4
_L4:
        flag = true;
_L2:
        return flag;
_L5:
        j++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static HeaderElement[] parseElements(String s, HeaderValueParser headervalueparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        ParserCursor parsercursor = new ParserCursor(0, s.length());
        if (headervalueparser == null)
        {
            headervalueparser = INSTANCE;
        }
        return headervalueparser.parseElements(chararraybuffer, parsercursor);
    }

    public static HeaderElement parseHeaderElement(String s, HeaderValueParser headervalueparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        ParserCursor parsercursor = new ParserCursor(0, s.length());
        if (headervalueparser == null)
        {
            headervalueparser = INSTANCE;
        }
        return headervalueparser.parseHeaderElement(chararraybuffer, parsercursor);
    }

    public static NameValuePair parseNameValuePair(String s, HeaderValueParser headervalueparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        ParserCursor parsercursor = new ParserCursor(0, s.length());
        if (headervalueparser == null)
        {
            headervalueparser = INSTANCE;
        }
        return headervalueparser.parseNameValuePair(chararraybuffer, parsercursor);
    }

    public static NameValuePair[] parseParameters(String s, HeaderValueParser headervalueparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        ParserCursor parsercursor = new ParserCursor(0, s.length());
        if (headervalueparser == null)
        {
            headervalueparser = INSTANCE;
        }
        return headervalueparser.parseParameters(chararraybuffer, parsercursor);
    }

    protected HeaderElement createHeaderElement(String s, String s1, NameValuePair anamevaluepair[])
    {
        return new BasicHeaderElement(s, s1, anamevaluepair);
    }

    protected NameValuePair createNameValuePair(String s, String s1)
    {
        return new BasicNameValuePair(s, s1);
    }

    public HeaderElement[] parseElements(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        ArrayList arraylist = new ArrayList();
        do
        {
            if (parsercursor.atEnd())
            {
                break;
            }
            HeaderElement headerelement = parseHeaderElement(chararraybuffer, parsercursor);
            if (headerelement.getName().length() != 0 || headerelement.getValue() != null)
            {
                arraylist.add(headerelement);
            }
        } while (true);
        return (HeaderElement[])arraylist.toArray(new HeaderElement[arraylist.size()]);
    }

    public HeaderElement parseHeaderElement(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        NameValuePair namevaluepair = parseNameValuePair(chararraybuffer, parsercursor);
        boolean flag = parsercursor.atEnd();
        NameValuePair anamevaluepair[] = null;
        if (!flag)
        {
            char c = chararraybuffer.charAt(-1 + parsercursor.getPos());
            anamevaluepair = null;
            if (c != ',')
            {
                anamevaluepair = parseParameters(chararraybuffer, parsercursor);
            }
        }
        return createHeaderElement(namevaluepair.getName(), namevaluepair.getValue(), anamevaluepair);
    }

    public NameValuePair parseNameValuePair(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        return parseNameValuePair(chararraybuffer, parsercursor, ALL_DELIMITERS);
    }

    public NameValuePair parseNameValuePair(CharArrayBuffer chararraybuffer, ParserCursor parsercursor, char ac[])
    {
        boolean flag;
        int i;
        int j;
        int k;
        flag = true;
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        i = parsercursor.getPos();
        j = parsercursor.getPos();
        k = parsercursor.getUpperBound();
_L1:
        boolean flag1;
        String s1;
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_423;
        }
        char c1 = chararraybuffer.charAt(i);
        if (c1 == '=')
        {
            flag1 = false;
        } else
        {
label0:
            {
                if (!isOneOf(c1, ac))
                {
                    break label0;
                }
                flag1 = flag;
            }
        }
_L8:
        if (i == k)
        {
            s1 = chararraybuffer.substringTrimmed(j, k);
            flag1 = flag;
        } else
        {
            String s = chararraybuffer.substringTrimmed(j, i);
            i++;
            s1 = s;
        }
        if (flag1)
        {
            parsercursor.updatePos(i);
            return createNameValuePair(s1, null);
        }
        break MISSING_BLOCK_LABEL_142;
        i++;
          goto _L1
        boolean flag2;
        boolean flag3;
        int l;
        flag2 = false;
        flag3 = false;
        l = i;
_L6:
        if (l >= k) goto _L3; else goto _L2
_L2:
        char c = chararraybuffer.charAt(l);
        int i1;
        int j1;
        String s2;
        int k1;
        boolean flag4;
        boolean flag5;
        if (c == '"' && !flag2)
        {
            boolean flag6;
            if (!flag3)
            {
                flag6 = flag;
            } else
            {
                flag6 = false;
            }
            flag4 = flag6;
        } else
        {
            flag4 = flag3;
        }
        if (flag4 || flag2 || !isOneOf(c, ac)) goto _L5; else goto _L4
_L5:
        if (flag2)
        {
            flag5 = false;
        } else
        if (flag4 && c == '\\')
        {
            flag5 = flag;
        } else
        {
            flag5 = false;
        }
        l++;
        flag2 = flag5;
        flag3 = flag4;
          goto _L6
_L4:
        for (i1 = i; i1 < l && HTTP.isWhitespace(chararraybuffer.charAt(i1)); i1++) { }
        j1 = l;
        while (true) 
        {
            for (; j1 > i1 && HTTP.isWhitespace(chararraybuffer.charAt(j1 - 1)); j1--) { }
            if (j1 - i1 >= 2 && chararraybuffer.charAt(i1) == '"' && chararraybuffer.charAt(j1 - 1) == '"')
            {
                i1++;
                j1--;
            }
            s2 = chararraybuffer.substring(i1, j1);
            if (flag)
            {
                k1 = l + 1;
            } else
            {
                k1 = l;
            }
            parsercursor.updatePos(k1);
            return createNameValuePair(s1, s2);
        }
_L3:
        flag = flag1;
        if (true) goto _L4; else goto _L7
_L7:
        flag1 = false;
          goto _L8
    }

    public NameValuePair[] parseParameters(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        int i = parsercursor.getPos();
        for (int j = parsercursor.getUpperBound(); i < j && HTTP.isWhitespace(chararraybuffer.charAt(i)); i++) { }
        parsercursor.updatePos(i);
        if (parsercursor.atEnd())
        {
            return new NameValuePair[0];
        }
        ArrayList arraylist = new ArrayList();
        do
        {
            if (parsercursor.atEnd())
            {
                break;
            }
            arraylist.add(parseNameValuePair(chararraybuffer, parsercursor));
        } while (chararraybuffer.charAt(-1 + parsercursor.getPos()) != ',');
        return (NameValuePair[])arraylist.toArray(new NameValuePair[arraylist.size()]);
    }

}
