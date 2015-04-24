// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text.translate;

import java.lang.reflect.Array;

public class EntityArrays
{

    private static final String APOS_ESCAPE[][] = {
        {
            "'", "&apos;"
        }
    };
    private static final String APOS_UNESCAPE[][] = invert(APOS_ESCAPE);
    private static final String BASIC_ESCAPE[][] = {
        {
            "\"", "&quot;"
        }, {
            "&", "&amp;"
        }, {
            "<", "&lt;"
        }, {
            ">", "&gt;"
        }
    };
    private static final String BASIC_UNESCAPE[][] = invert(BASIC_ESCAPE);
    private static final String HTML40_EXTENDED_ESCAPE[][] = {
        {
            "\u0192", "&fnof;"
        }, {
            "\u0391", "&Alpha;"
        }, {
            "\u0392", "&Beta;"
        }, {
            "\u0393", "&Gamma;"
        }, {
            "\u0394", "&Delta;"
        }, {
            "\u0395", "&Epsilon;"
        }, {
            "\u0396", "&Zeta;"
        }, {
            "\u0397", "&Eta;"
        }, {
            "\u0398", "&Theta;"
        }, {
            "\u0399", "&Iota;"
        }, {
            "\u039A", "&Kappa;"
        }, {
            "\u039B", "&Lambda;"
        }, {
            "\u039C", "&Mu;"
        }, {
            "\u039D", "&Nu;"
        }, {
            "\u039E", "&Xi;"
        }, {
            "\u039F", "&Omicron;"
        }, {
            "\u03A0", "&Pi;"
        }, {
            "\u03A1", "&Rho;"
        }, {
            "\u03A3", "&Sigma;"
        }, {
            "\u03A4", "&Tau;"
        }, {
            "\u03A5", "&Upsilon;"
        }, {
            "\u03A6", "&Phi;"
        }, {
            "\u03A7", "&Chi;"
        }, {
            "\u03A8", "&Psi;"
        }, {
            "\u03A9", "&Omega;"
        }, {
            "\u03B1", "&alpha;"
        }, {
            "\u03B2", "&beta;"
        }, {
            "\u03B3", "&gamma;"
        }, {
            "\u03B4", "&delta;"
        }, {
            "\u03B5", "&epsilon;"
        }, {
            "\u03B6", "&zeta;"
        }, {
            "\u03B7", "&eta;"
        }, {
            "\u03B8", "&theta;"
        }, {
            "\u03B9", "&iota;"
        }, {
            "\u03BA", "&kappa;"
        }, {
            "\u03BB", "&lambda;"
        }, {
            "\u03BC", "&mu;"
        }, {
            "\u03BD", "&nu;"
        }, {
            "\u03BE", "&xi;"
        }, {
            "\u03BF", "&omicron;"
        }, {
            "\u03C0", "&pi;"
        }, {
            "\u03C1", "&rho;"
        }, {
            "\u03C2", "&sigmaf;"
        }, {
            "\u03C3", "&sigma;"
        }, {
            "\u03C4", "&tau;"
        }, {
            "\u03C5", "&upsilon;"
        }, {
            "\u03C6", "&phi;"
        }, {
            "\u03C7", "&chi;"
        }, {
            "\u03C8", "&psi;"
        }, {
            "\u03C9", "&omega;"
        }, {
            "\u03D1", "&thetasym;"
        }, {
            "\u03D2", "&upsih;"
        }, {
            "\u03D6", "&piv;"
        }, {
            "\u2022", "&bull;"
        }, {
            "\u2026", "&hellip;"
        }, {
            "\u2032", "&prime;"
        }, {
            "\u2033", "&Prime;"
        }, {
            "\u203E", "&oline;"
        }, {
            "\u2044", "&frasl;"
        }, {
            "\u2118", "&weierp;"
        }, {
            "\u2111", "&image;"
        }, {
            "\u211C", "&real;"
        }, {
            "\u2122", "&trade;"
        }, {
            "\u2135", "&alefsym;"
        }, {
            "\u2190", "&larr;"
        }, {
            "\u2191", "&uarr;"
        }, {
            "\u2192", "&rarr;"
        }, {
            "\u2193", "&darr;"
        }, {
            "\u2194", "&harr;"
        }, {
            "\u21B5", "&crarr;"
        }, {
            "\u21D0", "&lArr;"
        }, {
            "\u21D1", "&uArr;"
        }, {
            "\u21D2", "&rArr;"
        }, {
            "\u21D3", "&dArr;"
        }, {
            "\u21D4", "&hArr;"
        }, {
            "\u2200", "&forall;"
        }, {
            "\u2202", "&part;"
        }, {
            "\u2203", "&exist;"
        }, {
            "\u2205", "&empty;"
        }, {
            "\u2207", "&nabla;"
        }, {
            "\u2208", "&isin;"
        }, {
            "\u2209", "&notin;"
        }, {
            "\u220B", "&ni;"
        }, {
            "\u220F", "&prod;"
        }, {
            "\u2211", "&sum;"
        }, {
            "\u2212", "&minus;"
        }, {
            "\u2217", "&lowast;"
        }, {
            "\u221A", "&radic;"
        }, {
            "\u221D", "&prop;"
        }, {
            "\u221E", "&infin;"
        }, {
            "\u2220", "&ang;"
        }, {
            "\u2227", "&and;"
        }, {
            "\u2228", "&or;"
        }, {
            "\u2229", "&cap;"
        }, {
            "\u222A", "&cup;"
        }, {
            "\u222B", "&int;"
        }, {
            "\u2234", "&there4;"
        }, {
            "\u223C", "&sim;"
        }, {
            "\u2245", "&cong;"
        }, {
            "\u2248", "&asymp;"
        }, {
            "\u2260", "&ne;"
        }, {
            "\u2261", "&equiv;"
        }, {
            "\u2264", "&le;"
        }, {
            "\u2265", "&ge;"
        }, {
            "\u2282", "&sub;"
        }, {
            "\u2283", "&sup;"
        }, {
            "\u2286", "&sube;"
        }, {
            "\u2287", "&supe;"
        }, {
            "\u2295", "&oplus;"
        }, {
            "\u2297", "&otimes;"
        }, {
            "\u22A5", "&perp;"
        }, {
            "\u22C5", "&sdot;"
        }, {
            "\u2308", "&lceil;"
        }, {
            "\u2309", "&rceil;"
        }, {
            "\u230A", "&lfloor;"
        }, {
            "\u230B", "&rfloor;"
        }, {
            "\u2329", "&lang;"
        }, {
            "\u232A", "&rang;"
        }, {
            "\u25CA", "&loz;"
        }, {
            "\u2660", "&spades;"
        }, {
            "\u2663", "&clubs;"
        }, {
            "\u2665", "&hearts;"
        }, {
            "\u2666", "&diams;"
        }, {
            "\u0152", "&OElig;"
        }, {
            "\u0153", "&oelig;"
        }, {
            "\u0160", "&Scaron;"
        }, {
            "\u0161", "&scaron;"
        }, {
            "\u0178", "&Yuml;"
        }, {
            "\u02C6", "&circ;"
        }, {
            "\u02DC", "&tilde;"
        }, {
            "\u2002", "&ensp;"
        }, {
            "\u2003", "&emsp;"
        }, {
            "\u2009", "&thinsp;"
        }, {
            "\u200C", "&zwnj;"
        }, {
            "\u200D", "&zwj;"
        }, {
            "\u200E", "&lrm;"
        }, {
            "\u200F", "&rlm;"
        }, {
            "\u2013", "&ndash;"
        }, {
            "\u2014", "&mdash;"
        }, {
            "\u2018", "&lsquo;"
        }, {
            "\u2019", "&rsquo;"
        }, {
            "\u201A", "&sbquo;"
        }, {
            "\u201C", "&ldquo;"
        }, {
            "\u201D", "&rdquo;"
        }, {
            "\u201E", "&bdquo;"
        }, {
            "\u2020", "&dagger;"
        }, {
            "\u2021", "&Dagger;"
        }, {
            "\u2030", "&permil;"
        }, {
            "\u2039", "&lsaquo;"
        }, {
            "\u203A", "&rsaquo;"
        }, {
            "\u20AC", "&euro;"
        }
    };
    private static final String HTML40_EXTENDED_UNESCAPE[][] = invert(HTML40_EXTENDED_ESCAPE);
    private static final String ISO8859_1_ESCAPE[][] = {
        {
            "\240", "&nbsp;"
        }, {
            "\241", "&iexcl;"
        }, {
            "\242", "&cent;"
        }, {
            "\243", "&pound;"
        }, {
            "\244", "&curren;"
        }, {
            "\245", "&yen;"
        }, {
            "\246", "&brvbar;"
        }, {
            "\247", "&sect;"
        }, {
            "\250", "&uml;"
        }, {
            "\251", "&copy;"
        }, {
            "\252", "&ordf;"
        }, {
            "\253", "&laquo;"
        }, {
            "\254", "&not;"
        }, {
            "\255", "&shy;"
        }, {
            "\256", "&reg;"
        }, {
            "\257", "&macr;"
        }, {
            "\260", "&deg;"
        }, {
            "\261", "&plusmn;"
        }, {
            "\262", "&sup2;"
        }, {
            "\263", "&sup3;"
        }, {
            "\264", "&acute;"
        }, {
            "\265", "&micro;"
        }, {
            "\266", "&para;"
        }, {
            "\267", "&middot;"
        }, {
            "\270", "&cedil;"
        }, {
            "\271", "&sup1;"
        }, {
            "\272", "&ordm;"
        }, {
            "\273", "&raquo;"
        }, {
            "\274", "&frac14;"
        }, {
            "\275", "&frac12;"
        }, {
            "\276", "&frac34;"
        }, {
            "\277", "&iquest;"
        }, {
            "\300", "&Agrave;"
        }, {
            "\301", "&Aacute;"
        }, {
            "\302", "&Acirc;"
        }, {
            "\303", "&Atilde;"
        }, {
            "\304", "&Auml;"
        }, {
            "\305", "&Aring;"
        }, {
            "\306", "&AElig;"
        }, {
            "\307", "&Ccedil;"
        }, {
            "\310", "&Egrave;"
        }, {
            "\311", "&Eacute;"
        }, {
            "\312", "&Ecirc;"
        }, {
            "\313", "&Euml;"
        }, {
            "\314", "&Igrave;"
        }, {
            "\315", "&Iacute;"
        }, {
            "\316", "&Icirc;"
        }, {
            "\317", "&Iuml;"
        }, {
            "\320", "&ETH;"
        }, {
            "\321", "&Ntilde;"
        }, {
            "\322", "&Ograve;"
        }, {
            "\323", "&Oacute;"
        }, {
            "\324", "&Ocirc;"
        }, {
            "\325", "&Otilde;"
        }, {
            "\326", "&Ouml;"
        }, {
            "\327", "&times;"
        }, {
            "\330", "&Oslash;"
        }, {
            "\331", "&Ugrave;"
        }, {
            "\332", "&Uacute;"
        }, {
            "\333", "&Ucirc;"
        }, {
            "\334", "&Uuml;"
        }, {
            "\335", "&Yacute;"
        }, {
            "\336", "&THORN;"
        }, {
            "\337", "&szlig;"
        }, {
            "\340", "&agrave;"
        }, {
            "\341", "&aacute;"
        }, {
            "\342", "&acirc;"
        }, {
            "\343", "&atilde;"
        }, {
            "\344", "&auml;"
        }, {
            "\345", "&aring;"
        }, {
            "\346", "&aelig;"
        }, {
            "\347", "&ccedil;"
        }, {
            "\350", "&egrave;"
        }, {
            "\351", "&eacute;"
        }, {
            "\352", "&ecirc;"
        }, {
            "\353", "&euml;"
        }, {
            "\354", "&igrave;"
        }, {
            "\355", "&iacute;"
        }, {
            "\356", "&icirc;"
        }, {
            "\357", "&iuml;"
        }, {
            "\360", "&eth;"
        }, {
            "\361", "&ntilde;"
        }, {
            "\362", "&ograve;"
        }, {
            "\363", "&oacute;"
        }, {
            "\364", "&ocirc;"
        }, {
            "\365", "&otilde;"
        }, {
            "\366", "&ouml;"
        }, {
            "\367", "&divide;"
        }, {
            "\370", "&oslash;"
        }, {
            "\371", "&ugrave;"
        }, {
            "\372", "&uacute;"
        }, {
            "\373", "&ucirc;"
        }, {
            "\374", "&uuml;"
        }, {
            "\375", "&yacute;"
        }, {
            "\376", "&thorn;"
        }, {
            "\377", "&yuml;"
        }
    };
    private static final String ISO8859_1_UNESCAPE[][] = invert(ISO8859_1_ESCAPE);
    private static final String JAVA_CTRL_CHARS_ESCAPE[][] = {
        {
            "\b", "\\b"
        }, {
            "\n", "\\n"
        }, {
            "\t", "\\t"
        }, {
            "\f", "\\f"
        }, {
            "\r", "\\r"
        }
    };
    private static final String JAVA_CTRL_CHARS_UNESCAPE[][] = invert(JAVA_CTRL_CHARS_ESCAPE);

    public EntityArrays()
    {
    }

    public static String[][] APOS_ESCAPE()
    {
        return (String[][])APOS_ESCAPE.clone();
    }

    public static String[][] APOS_UNESCAPE()
    {
        return (String[][])APOS_UNESCAPE.clone();
    }

    public static String[][] BASIC_ESCAPE()
    {
        return (String[][])BASIC_ESCAPE.clone();
    }

    public static String[][] BASIC_UNESCAPE()
    {
        return (String[][])BASIC_UNESCAPE.clone();
    }

    public static String[][] HTML40_EXTENDED_ESCAPE()
    {
        return (String[][])HTML40_EXTENDED_ESCAPE.clone();
    }

    public static String[][] HTML40_EXTENDED_UNESCAPE()
    {
        return (String[][])HTML40_EXTENDED_UNESCAPE.clone();
    }

    public static String[][] ISO8859_1_ESCAPE()
    {
        return (String[][])ISO8859_1_ESCAPE.clone();
    }

    public static String[][] ISO8859_1_UNESCAPE()
    {
        return (String[][])ISO8859_1_UNESCAPE.clone();
    }

    public static String[][] JAVA_CTRL_CHARS_ESCAPE()
    {
        return (String[][])JAVA_CTRL_CHARS_ESCAPE.clone();
    }

    public static String[][] JAVA_CTRL_CHARS_UNESCAPE()
    {
        return (String[][])JAVA_CTRL_CHARS_UNESCAPE.clone();
    }

    public static String[][] invert(String as[][])
    {
        String as1[][] = (String[][])Array.newInstance(java/lang/String, new int[] {
            as.length, 2
        });
        for (int i = 0; i < as.length; i++)
        {
            as1[i][0] = as[i][1];
            as1[i][1] = as[i][0];
        }

        return as1;
    }

}
