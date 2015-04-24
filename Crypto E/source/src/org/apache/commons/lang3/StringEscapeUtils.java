// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.io.Writer;
import org.apache.commons.lang3.text.translate.AggregateTranslator;
import org.apache.commons.lang3.text.translate.CharSequenceTranslator;
import org.apache.commons.lang3.text.translate.EntityArrays;
import org.apache.commons.lang3.text.translate.JavaUnicodeEscaper;
import org.apache.commons.lang3.text.translate.LookupTranslator;
import org.apache.commons.lang3.text.translate.NumericEntityEscaper;
import org.apache.commons.lang3.text.translate.NumericEntityUnescaper;
import org.apache.commons.lang3.text.translate.OctalUnescaper;
import org.apache.commons.lang3.text.translate.UnicodeUnescaper;
import org.apache.commons.lang3.text.translate.UnicodeUnpairedSurrogateRemover;

// Referenced classes of package org.apache.commons.lang3:
//            StringUtils

public class StringEscapeUtils
{
    static class CsvEscaper extends CharSequenceTranslator
    {

        private static final char CSV_DELIMITER = 44;
        private static final char CSV_QUOTE = 34;
        private static final String CSV_QUOTE_STR = String.valueOf('"');
        private static final char CSV_SEARCH_CHARS[] = {
            ',', '"', '\r', '\n'
        };

        public int translate(CharSequence charsequence, int i, Writer writer)
        {
            if (i != 0)
            {
                throw new IllegalStateException("CsvEscaper should never reach the [1] index");
            }
            if (StringUtils.containsNone(charsequence.toString(), CSV_SEARCH_CHARS))
            {
                writer.write(charsequence.toString());
            } else
            {
                writer.write(34);
                writer.write(StringUtils.replace(charsequence.toString(), CSV_QUOTE_STR, (new StringBuilder()).append(CSV_QUOTE_STR).append(CSV_QUOTE_STR).toString()));
                writer.write(34);
            }
            return Character.codePointCount(charsequence, 0, charsequence.length());
        }


        CsvEscaper()
        {
        }
    }

    static class CsvUnescaper extends CharSequenceTranslator
    {

        private static final char CSV_DELIMITER = 44;
        private static final char CSV_QUOTE = 34;
        private static final String CSV_QUOTE_STR = String.valueOf('"');
        private static final char CSV_SEARCH_CHARS[] = {
            ',', '"', '\r', '\n'
        };

        public int translate(CharSequence charsequence, int i, Writer writer)
        {
            if (i != 0)
            {
                throw new IllegalStateException("CsvUnescaper should never reach the [1] index");
            }
            if (charsequence.charAt(0) != '"' || charsequence.charAt(-1 + charsequence.length()) != '"')
            {
                writer.write(charsequence.toString());
                return Character.codePointCount(charsequence, 0, charsequence.length());
            }
            String s = charsequence.subSequence(1, -1 + charsequence.length()).toString();
            if (StringUtils.containsAny(s, CSV_SEARCH_CHARS))
            {
                writer.write(StringUtils.replace(s, (new StringBuilder()).append(CSV_QUOTE_STR).append(CSV_QUOTE_STR).toString(), CSV_QUOTE_STR));
            } else
            {
                writer.write(charsequence.toString());
            }
            return Character.codePointCount(charsequence, 0, charsequence.length());
        }


        CsvUnescaper()
        {
        }
    }


    public static final CharSequenceTranslator ESCAPE_CSV = new CsvEscaper();
    public static final CharSequenceTranslator ESCAPE_ECMASCRIPT;
    public static final CharSequenceTranslator ESCAPE_HTML3;
    public static final CharSequenceTranslator ESCAPE_HTML4;
    public static final CharSequenceTranslator ESCAPE_JAVA;
    public static final CharSequenceTranslator ESCAPE_JSON;
    public static final CharSequenceTranslator ESCAPE_XML;
    public static final CharSequenceTranslator ESCAPE_XML10;
    public static final CharSequenceTranslator ESCAPE_XML11;
    public static final CharSequenceTranslator UNESCAPE_CSV = new CsvUnescaper();
    public static final CharSequenceTranslator UNESCAPE_ECMASCRIPT;
    public static final CharSequenceTranslator UNESCAPE_HTML3;
    public static final CharSequenceTranslator UNESCAPE_HTML4;
    public static final CharSequenceTranslator UNESCAPE_JAVA;
    public static final CharSequenceTranslator UNESCAPE_JSON;
    public static final CharSequenceTranslator UNESCAPE_XML;

    public StringEscapeUtils()
    {
    }

    public static final String escapeCsv(String s)
    {
        return ESCAPE_CSV.translate(s);
    }

    public static final String escapeEcmaScript(String s)
    {
        return ESCAPE_ECMASCRIPT.translate(s);
    }

    public static final String escapeHtml3(String s)
    {
        return ESCAPE_HTML3.translate(s);
    }

    public static final String escapeHtml4(String s)
    {
        return ESCAPE_HTML4.translate(s);
    }

    public static final String escapeJava(String s)
    {
        return ESCAPE_JAVA.translate(s);
    }

    public static final String escapeJson(String s)
    {
        return ESCAPE_JSON.translate(s);
    }

    public static final String escapeXml(String s)
    {
        return ESCAPE_XML.translate(s);
    }

    public static String escapeXml10(String s)
    {
        return ESCAPE_XML10.translate(s);
    }

    public static String escapeXml11(String s)
    {
        return ESCAPE_XML11.translate(s);
    }

    public static final String unescapeCsv(String s)
    {
        return UNESCAPE_CSV.translate(s);
    }

    public static final String unescapeEcmaScript(String s)
    {
        return UNESCAPE_ECMASCRIPT.translate(s);
    }

    public static final String unescapeHtml3(String s)
    {
        return UNESCAPE_HTML3.translate(s);
    }

    public static final String unescapeHtml4(String s)
    {
        return UNESCAPE_HTML4.translate(s);
    }

    public static final String unescapeJava(String s)
    {
        return UNESCAPE_JAVA.translate(s);
    }

    public static final String unescapeJson(String s)
    {
        return UNESCAPE_JSON.translate(s);
    }

    public static final String unescapeXml(String s)
    {
        return UNESCAPE_XML.translate(s);
    }

    static 
    {
        LookupTranslator lookuptranslator = new LookupTranslator(new String[][] {
            new String[] {
                "\"", "\\\""
            }, new String[] {
                "\\", "\\\\"
            }
        });
        CharSequenceTranslator acharsequencetranslator[] = new CharSequenceTranslator[1];
        acharsequencetranslator[0] = new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_ESCAPE());
        CharSequenceTranslator charsequencetranslator = lookuptranslator.with(acharsequencetranslator);
        CharSequenceTranslator acharsequencetranslator1[] = new CharSequenceTranslator[1];
        acharsequencetranslator1[0] = JavaUnicodeEscaper.outsideOf(32, 127);
        ESCAPE_JAVA = charsequencetranslator.with(acharsequencetranslator1);
        CharSequenceTranslator acharsequencetranslator2[] = new CharSequenceTranslator[3];
        acharsequencetranslator2[0] = new LookupTranslator(new String[][] {
            new String[] {
                "'", "\\'"
            }, new String[] {
                "\"", "\\\""
            }, new String[] {
                "\\", "\\\\"
            }, new String[] {
                "/", "\\/"
            }
        });
        acharsequencetranslator2[1] = new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_ESCAPE());
        acharsequencetranslator2[2] = JavaUnicodeEscaper.outsideOf(32, 127);
        ESCAPE_ECMASCRIPT = new AggregateTranslator(acharsequencetranslator2);
        CharSequenceTranslator acharsequencetranslator3[] = new CharSequenceTranslator[3];
        acharsequencetranslator3[0] = new LookupTranslator(new String[][] {
            new String[] {
                "\"", "\\\""
            }, new String[] {
                "\\", "\\\\"
            }, new String[] {
                "/", "\\/"
            }
        });
        acharsequencetranslator3[1] = new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_ESCAPE());
        acharsequencetranslator3[2] = JavaUnicodeEscaper.outsideOf(32, 127);
        ESCAPE_JSON = new AggregateTranslator(acharsequencetranslator3);
        CharSequenceTranslator acharsequencetranslator4[] = new CharSequenceTranslator[2];
        acharsequencetranslator4[0] = new LookupTranslator(EntityArrays.BASIC_ESCAPE());
        acharsequencetranslator4[1] = new LookupTranslator(EntityArrays.APOS_ESCAPE());
        ESCAPE_XML = new AggregateTranslator(acharsequencetranslator4);
        CharSequenceTranslator acharsequencetranslator5[] = new CharSequenceTranslator[6];
        acharsequencetranslator5[0] = new LookupTranslator(EntityArrays.BASIC_ESCAPE());
        acharsequencetranslator5[1] = new LookupTranslator(EntityArrays.APOS_ESCAPE());
        acharsequencetranslator5[2] = new LookupTranslator(new String[][] {
            new String[] {
                "\0", ""
            }, new String[] {
                "\001", ""
            }, new String[] {
                "\002", ""
            }, new String[] {
                "\003", ""
            }, new String[] {
                "\004", ""
            }, new String[] {
                "\005", ""
            }, new String[] {
                "\006", ""
            }, new String[] {
                "\007", ""
            }, new String[] {
                "\b", ""
            }, new String[] {
                "\013", ""
            }, new String[] {
                "\f", ""
            }, new String[] {
                "\016", ""
            }, new String[] {
                "\017", ""
            }, new String[] {
                "\020", ""
            }, new String[] {
                "\021", ""
            }, new String[] {
                "\022", ""
            }, new String[] {
                "\023", ""
            }, new String[] {
                "\024", ""
            }, new String[] {
                "\025", ""
            }, new String[] {
                "\026", ""
            }, new String[] {
                "\027", ""
            }, new String[] {
                "\030", ""
            }, new String[] {
                "\031", ""
            }, new String[] {
                "\032", ""
            }, new String[] {
                "\033", ""
            }, new String[] {
                "\034", ""
            }, new String[] {
                "\035", ""
            }, new String[] {
                "\036", ""
            }, new String[] {
                "\037", ""
            }, new String[] {
                "\uFFFE", ""
            }, new String[] {
                "\uFFFF", ""
            }
        });
        acharsequencetranslator5[3] = NumericEntityEscaper.between(127, 132);
        acharsequencetranslator5[4] = NumericEntityEscaper.between(134, 159);
        acharsequencetranslator5[5] = new UnicodeUnpairedSurrogateRemover();
        ESCAPE_XML10 = new AggregateTranslator(acharsequencetranslator5);
        CharSequenceTranslator acharsequencetranslator6[] = new CharSequenceTranslator[8];
        acharsequencetranslator6[0] = new LookupTranslator(EntityArrays.BASIC_ESCAPE());
        acharsequencetranslator6[1] = new LookupTranslator(EntityArrays.APOS_ESCAPE());
        acharsequencetranslator6[2] = new LookupTranslator(new String[][] {
            new String[] {
                "\0", ""
            }, new String[] {
                "\013", "&#11;"
            }, new String[] {
                "\f", "&#12;"
            }, new String[] {
                "\uFFFE", ""
            }, new String[] {
                "\uFFFF", ""
            }
        });
        acharsequencetranslator6[3] = NumericEntityEscaper.between(1, 8);
        acharsequencetranslator6[4] = NumericEntityEscaper.between(14, 31);
        acharsequencetranslator6[5] = NumericEntityEscaper.between(127, 132);
        acharsequencetranslator6[6] = NumericEntityEscaper.between(134, 159);
        acharsequencetranslator6[7] = new UnicodeUnpairedSurrogateRemover();
        ESCAPE_XML11 = new AggregateTranslator(acharsequencetranslator6);
        CharSequenceTranslator acharsequencetranslator7[] = new CharSequenceTranslator[2];
        acharsequencetranslator7[0] = new LookupTranslator(EntityArrays.BASIC_ESCAPE());
        acharsequencetranslator7[1] = new LookupTranslator(EntityArrays.ISO8859_1_ESCAPE());
        ESCAPE_HTML3 = new AggregateTranslator(acharsequencetranslator7);
        CharSequenceTranslator acharsequencetranslator8[] = new CharSequenceTranslator[3];
        acharsequencetranslator8[0] = new LookupTranslator(EntityArrays.BASIC_ESCAPE());
        acharsequencetranslator8[1] = new LookupTranslator(EntityArrays.ISO8859_1_ESCAPE());
        acharsequencetranslator8[2] = new LookupTranslator(EntityArrays.HTML40_EXTENDED_ESCAPE());
        ESCAPE_HTML4 = new AggregateTranslator(acharsequencetranslator8);
        CharSequenceTranslator acharsequencetranslator9[] = new CharSequenceTranslator[4];
        acharsequencetranslator9[0] = new OctalUnescaper();
        acharsequencetranslator9[1] = new UnicodeUnescaper();
        acharsequencetranslator9[2] = new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_UNESCAPE());
        acharsequencetranslator9[3] = new LookupTranslator(new String[][] {
            new String[] {
                "\\\\", "\\"
            }, new String[] {
                "\\\"", "\""
            }, new String[] {
                "\\'", "'"
            }, new String[] {
                "\\", ""
            }
        });
        UNESCAPE_JAVA = new AggregateTranslator(acharsequencetranslator9);
        UNESCAPE_ECMASCRIPT = UNESCAPE_JAVA;
        UNESCAPE_JSON = UNESCAPE_JAVA;
        CharSequenceTranslator acharsequencetranslator10[] = new CharSequenceTranslator[3];
        acharsequencetranslator10[0] = new LookupTranslator(EntityArrays.BASIC_UNESCAPE());
        acharsequencetranslator10[1] = new LookupTranslator(EntityArrays.ISO8859_1_UNESCAPE());
        acharsequencetranslator10[2] = new NumericEntityUnescaper(new org.apache.commons.lang3.text.translate.NumericEntityUnescaper.OPTION[0]);
        UNESCAPE_HTML3 = new AggregateTranslator(acharsequencetranslator10);
        CharSequenceTranslator acharsequencetranslator11[] = new CharSequenceTranslator[4];
        acharsequencetranslator11[0] = new LookupTranslator(EntityArrays.BASIC_UNESCAPE());
        acharsequencetranslator11[1] = new LookupTranslator(EntityArrays.ISO8859_1_UNESCAPE());
        acharsequencetranslator11[2] = new LookupTranslator(EntityArrays.HTML40_EXTENDED_UNESCAPE());
        acharsequencetranslator11[3] = new NumericEntityUnescaper(new org.apache.commons.lang3.text.translate.NumericEntityUnescaper.OPTION[0]);
        UNESCAPE_HTML4 = new AggregateTranslator(acharsequencetranslator11);
        CharSequenceTranslator acharsequencetranslator12[] = new CharSequenceTranslator[3];
        acharsequencetranslator12[0] = new LookupTranslator(EntityArrays.BASIC_UNESCAPE());
        acharsequencetranslator12[1] = new LookupTranslator(EntityArrays.APOS_UNESCAPE());
        acharsequencetranslator12[2] = new NumericEntityUnescaper(new org.apache.commons.lang3.text.translate.NumericEntityUnescaper.OPTION[0]);
        UNESCAPE_XML = new AggregateTranslator(acharsequencetranslator12);
    }
}
