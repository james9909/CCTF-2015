// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.message;

import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.message:
//            HeaderValueFormatter

public class BasicHeaderValueFormatter
    implements HeaderValueFormatter
{

    public static final BasicHeaderValueFormatter DEFAULT = new BasicHeaderValueFormatter();
    public static final BasicHeaderValueFormatter INSTANCE = new BasicHeaderValueFormatter();
    public static final String SEPARATORS = " ;,:@()<>\\\"/[]?={}\t";
    public static final String UNSAFE_CHARS = "\"\\";

    public BasicHeaderValueFormatter()
    {
    }

    public static String formatElements(HeaderElement aheaderelement[], boolean flag, HeaderValueFormatter headervalueformatter)
    {
        if (headervalueformatter == null)
        {
            headervalueformatter = INSTANCE;
        }
        return headervalueformatter.formatElements(null, aheaderelement, flag).toString();
    }

    public static String formatHeaderElement(HeaderElement headerelement, boolean flag, HeaderValueFormatter headervalueformatter)
    {
        if (headervalueformatter == null)
        {
            headervalueformatter = INSTANCE;
        }
        return headervalueformatter.formatHeaderElement(null, headerelement, flag).toString();
    }

    public static String formatNameValuePair(NameValuePair namevaluepair, boolean flag, HeaderValueFormatter headervalueformatter)
    {
        if (headervalueformatter == null)
        {
            headervalueformatter = INSTANCE;
        }
        return headervalueformatter.formatNameValuePair(null, namevaluepair, flag).toString();
    }

    public static String formatParameters(NameValuePair anamevaluepair[], boolean flag, HeaderValueFormatter headervalueformatter)
    {
        if (headervalueformatter == null)
        {
            headervalueformatter = INSTANCE;
        }
        return headervalueformatter.formatParameters(null, anamevaluepair, flag).toString();
    }

    protected void doFormatValue(CharArrayBuffer chararraybuffer, String s, boolean flag)
    {
        if (!flag)
        {
            for (int j = 0; j < s.length() && !flag; j++)
            {
                flag = isSeparator(s.charAt(j));
            }

        }
        int i = 0;
        if (flag)
        {
            chararraybuffer.append('"');
        }
        for (; i < s.length(); i++)
        {
            char c = s.charAt(i);
            if (isUnsafe(c))
            {
                chararraybuffer.append('\\');
            }
            chararraybuffer.append(c);
        }

        if (flag)
        {
            chararraybuffer.append('"');
        }
    }

    protected int estimateElementsLen(HeaderElement aheaderelement[])
    {
        int i = 0;
        if (aheaderelement != null)
        {
            int j = aheaderelement.length;
            i = 0;
            if (j >= 1)
            {
                int k = 2 * (-1 + aheaderelement.length);
                int l = aheaderelement.length;
                i = k;
                int i1 = 0;
                while (i1 < l) 
                {
                    int j1 = i + estimateHeaderElementLen(aheaderelement[i1]);
                    i1++;
                    i = j1;
                }
            }
        }
        return i;
    }

    protected int estimateHeaderElementLen(HeaderElement headerelement)
    {
        if (headerelement != null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L4:
        return i;
_L2:
        i = headerelement.getName().length();
        String s = headerelement.getValue();
        if (s != null)
        {
            i += 3 + s.length();
        }
        int j = headerelement.getParameterCount();
        int k = 0;
        if (j > 0)
        {
            while (k < j) 
            {
                i += 2 + estimateNameValuePairLen(headerelement.getParameter(k));
                k++;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected int estimateNameValuePairLen(NameValuePair namevaluepair)
    {
        int i;
        if (namevaluepair == null)
        {
            i = 0;
        } else
        {
            i = namevaluepair.getName().length();
            String s = namevaluepair.getValue();
            if (s != null)
            {
                return i + (3 + s.length());
            }
        }
        return i;
    }

    protected int estimateParametersLen(NameValuePair anamevaluepair[])
    {
        int i = 0;
        if (anamevaluepair != null)
        {
            int j = anamevaluepair.length;
            i = 0;
            if (j >= 1)
            {
                int k = 2 * (-1 + anamevaluepair.length);
                int l = anamevaluepair.length;
                i = k;
                int i1 = 0;
                while (i1 < l) 
                {
                    int j1 = i + estimateNameValuePairLen(anamevaluepair[i1]);
                    i1++;
                    i = j1;
                }
            }
        }
        return i;
    }

    public CharArrayBuffer formatElements(CharArrayBuffer chararraybuffer, HeaderElement aheaderelement[], boolean flag)
    {
        Args.notNull(aheaderelement, "Header element array");
        int i = estimateElementsLen(aheaderelement);
        int j;
        if (chararraybuffer == null)
        {
            chararraybuffer = new CharArrayBuffer(i);
        } else
        {
            chararraybuffer.ensureCapacity(i);
        }
        for (j = 0; j < aheaderelement.length; j++)
        {
            if (j > 0)
            {
                chararraybuffer.append(", ");
            }
            formatHeaderElement(chararraybuffer, aheaderelement[j], flag);
        }

        return chararraybuffer;
    }

    public CharArrayBuffer formatHeaderElement(CharArrayBuffer chararraybuffer, HeaderElement headerelement, boolean flag)
    {
        Args.notNull(headerelement, "Header element");
        int i = estimateHeaderElementLen(headerelement);
        String s;
        int j;
        if (chararraybuffer == null)
        {
            chararraybuffer = new CharArrayBuffer(i);
        } else
        {
            chararraybuffer.ensureCapacity(i);
        }
        chararraybuffer.append(headerelement.getName());
        s = headerelement.getValue();
        if (s != null)
        {
            chararraybuffer.append('=');
            doFormatValue(chararraybuffer, s, flag);
        }
        j = headerelement.getParameterCount();
        if (j > 0)
        {
            for (int k = 0; k < j; k++)
            {
                chararraybuffer.append("; ");
                formatNameValuePair(chararraybuffer, headerelement.getParameter(k), flag);
            }

        }
        return chararraybuffer;
    }

    public CharArrayBuffer formatNameValuePair(CharArrayBuffer chararraybuffer, NameValuePair namevaluepair, boolean flag)
    {
        Args.notNull(namevaluepair, "Name / value pair");
        int i = estimateNameValuePairLen(namevaluepair);
        String s;
        if (chararraybuffer == null)
        {
            chararraybuffer = new CharArrayBuffer(i);
        } else
        {
            chararraybuffer.ensureCapacity(i);
        }
        chararraybuffer.append(namevaluepair.getName());
        s = namevaluepair.getValue();
        if (s != null)
        {
            chararraybuffer.append('=');
            doFormatValue(chararraybuffer, s, flag);
        }
        return chararraybuffer;
    }

    public CharArrayBuffer formatParameters(CharArrayBuffer chararraybuffer, NameValuePair anamevaluepair[], boolean flag)
    {
        Args.notNull(anamevaluepair, "Header parameter array");
        int i = estimateParametersLen(anamevaluepair);
        int j;
        if (chararraybuffer == null)
        {
            chararraybuffer = new CharArrayBuffer(i);
        } else
        {
            chararraybuffer.ensureCapacity(i);
        }
        for (j = 0; j < anamevaluepair.length; j++)
        {
            if (j > 0)
            {
                chararraybuffer.append("; ");
            }
            formatNameValuePair(chararraybuffer, anamevaluepair[j], flag);
        }

        return chararraybuffer;
    }

    protected boolean isSeparator(char c)
    {
        return " ;,:@()<>\\\"/[]?={}\t".indexOf(c) >= 0;
    }

    protected boolean isUnsafe(char c)
    {
        return "\"\\".indexOf(c) >= 0;
    }

}
