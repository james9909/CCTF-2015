// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text.translate;

import java.io.Writer;
import java.util.Arrays;
import java.util.EnumSet;

// Referenced classes of package org.apache.commons.lang3.text.translate:
//            CharSequenceTranslator

public class NumericEntityUnescaper extends CharSequenceTranslator
{
    public static final class OPTION extends Enum
    {

        private static final OPTION $VALUES[];
        public static final OPTION errorIfNoSemiColon;
        public static final OPTION semiColonOptional;
        public static final OPTION semiColonRequired;

        public static OPTION valueOf(String s)
        {
            return (OPTION)Enum.valueOf(org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION, s);
        }

        public static OPTION[] values()
        {
            return (OPTION[])$VALUES.clone();
        }

        static 
        {
            semiColonRequired = new OPTION("semiColonRequired", 0);
            semiColonOptional = new OPTION("semiColonOptional", 1);
            errorIfNoSemiColon = new OPTION("errorIfNoSemiColon", 2);
            OPTION aoption[] = new OPTION[3];
            aoption[0] = semiColonRequired;
            aoption[1] = semiColonOptional;
            aoption[2] = errorIfNoSemiColon;
            $VALUES = aoption;
        }

        private OPTION(String s, int i)
        {
            super(s, i);
        }
    }


    private final EnumSet options;

    public transient NumericEntityUnescaper(OPTION aoption[])
    {
        if (aoption.length > 0)
        {
            options = EnumSet.copyOf(Arrays.asList(aoption));
            return;
        } else
        {
            OPTION aoption1[] = new OPTION[1];
            aoption1[0] = OPTION.semiColonRequired;
            options = EnumSet.copyOf(Arrays.asList(aoption1));
            return;
        }
    }

    public boolean isSet(OPTION option)
    {
        if (options == null)
        {
            return false;
        } else
        {
            return options.contains(option);
        }
    }

    public int translate(CharSequence charsequence, int i, Writer writer)
    {
        int j;
        int k;
        j = 1;
        k = charsequence.length();
        if (charsequence.charAt(i) != '&' || i >= k - 2 || charsequence.charAt(i + 1) != '#') goto _L2; else goto _L1
_L1:
        int l;
        int i1;
        l = i + 2;
        char c = charsequence.charAt(l);
        if (c != 'x' && c != 'X')
        {
            break MISSING_BLOCK_LABEL_409;
        }
        i1 = l + 1;
        if (i1 != k) goto _L3; else goto _L2
_L2:
        return 0;
_L3:
        int j1;
        int k1;
        j1 = i1;
        k1 = j;
_L5:
        int l1;
        int i2;
        for (l1 = j1; l1 < k && (charsequence.charAt(l1) >= '0' && charsequence.charAt(l1) <= '9' || charsequence.charAt(l1) >= 'a' && charsequence.charAt(l1) <= 'f' || charsequence.charAt(l1) >= 'A' && charsequence.charAt(l1) <= 'F'); l1++) { }
        if (l1 != k && charsequence.charAt(l1) == ';')
        {
            i2 = j;
        } else
        {
            i2 = 0;
        }
        if (i2 != 0)
        {
            break MISSING_BLOCK_LABEL_257;
        }
        if (isSet(OPTION.semiColonRequired)) goto _L2; else goto _L4
_L4:
        if (isSet(OPTION.errorIfNoSemiColon))
        {
            throw new IllegalArgumentException("Semi-colon required at end of numeric entity");
        }
label0:
        {
            {
                if (k1 == 0)
                {
                    break label0;
                }
                int j2;
                int k2;
                int l2;
                int i3;
                int j3;
                char ac[];
                int k3;
                try
                {
                    k3 = Integer.parseInt(charsequence.subSequence(j1, l1).toString(), 16);
                }
                catch (NumberFormatException numberformatexception)
                {
                    return 0;
                }
                k2 = k3;
            }
            if (k2 > 65535)
            {
                ac = Character.toChars(k2);
                writer.write(ac[0]);
                writer.write(ac[j]);
            } else
            {
                writer.write(k2);
            }
            l2 = (l1 + 2) - j1;
            if (k1 != 0)
            {
                i3 = j;
            } else
            {
                i3 = 0;
            }
            j3 = i3 + l2;
            if (i2 == 0)
            {
                j = 0;
            }
            return j3 + j;
        }
        j2 = Integer.parseInt(charsequence.subSequence(j1, l1).toString(), 10);
        k2 = j2;
        break MISSING_BLOCK_LABEL_288;
        j1 = l;
        k1 = 0;
          goto _L5
    }
}
