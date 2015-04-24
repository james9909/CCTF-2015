// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.language.bm;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package org.apache.commons.codec.language.bm:
//            NameType, RuleType, Languages

public class Rule
{
    public static final class Phoneme
        implements PhonemeExpr
    {

        public static final Comparator COMPARATOR = new Comparator() {

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((Phoneme)obj, (Phoneme)obj1);
            }

            public int compare(Phoneme phoneme1, Phoneme phoneme2)
            {
                int i = 0;
_L8:
                if (i >= phoneme1.phonemeText.length()) goto _L2; else goto _L1
_L1:
                if (i < phoneme2.phonemeText.length()) goto _L4; else goto _L3
_L3:
                int l = 1;
_L6:
                return l;
_L4:
                int i1 = phoneme1.phonemeText.charAt(i) - phoneme2.phonemeText.charAt(i);
                if (i1 != 0)
                {
                    return i1;
                }
                i++;
                continue; /* Loop/switch isn't completed */
_L2:
                int j;
                int k;
                j = phoneme1.phonemeText.length();
                k = phoneme2.phonemeText.length();
                l = 0;
                if (j >= k) goto _L6; else goto _L5
_L5:
                return -1;
                if (true) goto _L8; else goto _L7
_L7:
            }

        };
        private final Languages.LanguageSet languages;
        private final CharSequence phonemeText;

        public Phoneme append(CharSequence charsequence)
        {
            return new Phoneme((new StringBuilder()).append(phonemeText.toString()).append(charsequence.toString()).toString(), languages);
        }

        public Languages.LanguageSet getLanguages()
        {
            return languages;
        }

        public CharSequence getPhonemeText()
        {
            return phonemeText;
        }

        public Iterable getPhonemes()
        {
            return Collections.singleton(this);
        }

        public Phoneme join(Phoneme phoneme1)
        {
            return new Phoneme((new StringBuilder()).append(phonemeText.toString()).append(phoneme1.phonemeText.toString()).toString(), languages.restrictTo(phoneme1.languages));
        }



        public Phoneme(CharSequence charsequence, Languages.LanguageSet languageset)
        {
            phonemeText = charsequence;
            languages = languageset;
        }
    }

    public static interface PhonemeExpr
    {

        public abstract Iterable getPhonemes();
    }

    public static final class PhonemeList
        implements PhonemeExpr
    {

        private final List phonemes;

        public volatile Iterable getPhonemes()
        {
            return getPhonemes();
        }

        public List getPhonemes()
        {
            return phonemes;
        }

        public PhonemeList(List list)
        {
            phonemes = list;
        }
    }

    public static interface RPattern
    {

        public abstract boolean isMatch(CharSequence charsequence);
    }


    public static final String ALL = "ALL";
    public static final RPattern ALL_STRINGS_RMATCHER = new RPattern() {

        public boolean isMatch(CharSequence charsequence)
        {
            return true;
        }

    };
    private static final String DOUBLE_QUOTE = "\"";
    private static final String HASH_INCLUDE = "#include";
    private static final Map RULES;
    private final RPattern lContext;
    private final String pattern;
    private final PhonemeExpr phoneme;
    private final RPattern rContext;

    public Rule(String s, String s1, String s2, PhonemeExpr phonemeexpr)
    {
        pattern = s;
        lContext = pattern((new StringBuilder()).append(s1).append("$").toString());
        rContext = pattern((new StringBuilder()).append("^").append(s2).toString());
        phoneme = phonemeexpr;
    }

    private static boolean contains(CharSequence charsequence, char c)
    {
        int i = 0;
        do
        {
label0:
            {
                int j = charsequence.length();
                boolean flag = false;
                if (i < j)
                {
                    if (charsequence.charAt(i) != c)
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    private static String createResourceName(NameType nametype, RuleType ruletype, String s)
    {
        Object aobj[] = new Object[3];
        aobj[0] = nametype.getName();
        aobj[1] = ruletype.getName();
        aobj[2] = s;
        return String.format("org/apache/commons/codec/language/bm/%s_%s_%s.txt", aobj);
    }

    private static Scanner createScanner(String s)
    {
        String s1 = String.format("org/apache/commons/codec/language/bm/%s.txt", new Object[] {
            s
        });
        java.io.InputStream inputstream = org/apache/commons/codec/language/bm/Languages.getClassLoader().getResourceAsStream(s1);
        if (inputstream == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unable to load resource: ").append(s1).toString());
        } else
        {
            return new Scanner(inputstream, "UTF-8");
        }
    }

    private static Scanner createScanner(NameType nametype, RuleType ruletype, String s)
    {
        String s1 = createResourceName(nametype, ruletype, s);
        java.io.InputStream inputstream = org/apache/commons/codec/language/bm/Languages.getClassLoader().getResourceAsStream(s1);
        if (inputstream == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unable to load resource: ").append(s1).toString());
        } else
        {
            return new Scanner(inputstream, "UTF-8");
        }
    }

    private static boolean endsWith(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence1.length() <= charsequence.length()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = -1 + charsequence.length();
        int j = -1 + charsequence1.length();
label0:
        do
        {
label1:
            {
                if (j < 0)
                {
                    break label1;
                }
                if (charsequence.charAt(i) != charsequence1.charAt(j))
                {
                    break label0;
                }
                i--;
                j--;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static List getInstance(NameType nametype, RuleType ruletype, String s)
    {
        List list = (List)((Map)((Map)RULES.get(nametype)).get(ruletype)).get(s);
        if (list == null)
        {
            Object aobj[] = new Object[3];
            aobj[0] = nametype.getName();
            aobj[1] = ruletype.getName();
            aobj[2] = s;
            throw new IllegalArgumentException(String.format("No rules found for %s, %s, %s.", aobj));
        } else
        {
            return list;
        }
    }

    public static List getInstance(NameType nametype, RuleType ruletype, Languages.LanguageSet languageset)
    {
        if (languageset.isSingleton())
        {
            return getInstance(nametype, ruletype, languageset.getAny());
        } else
        {
            return getInstance(nametype, ruletype, "any");
        }
    }

    private static Phoneme parsePhoneme(String s)
    {
        int i = s.indexOf("[");
        if (i >= 0)
        {
            if (!s.endsWith("]"))
            {
                throw new IllegalArgumentException("Phoneme expression contains a '[' but does not end in ']'");
            } else
            {
                return new Phoneme(s.substring(0, i), Languages.LanguageSet.from(new HashSet(Arrays.asList(s.substring(i + 1, -1 + s.length()).split("[+]")))));
            }
        } else
        {
            return new Phoneme(s, Languages.ANY_LANGUAGE);
        }
    }

    private static PhonemeExpr parsePhonemeExpr(String s)
    {
        if (s.startsWith("("))
        {
            if (!s.endsWith(")"))
            {
                throw new IllegalArgumentException("Phoneme starts with '(' so must end with ')'");
            }
            ArrayList arraylist = new ArrayList();
            String s1 = s.substring(1, -1 + s.length());
            String as[] = s1.split("[|]");
            int i = as.length;
            for (int j = 0; j < i; j++)
            {
                arraylist.add(parsePhoneme(as[j]));
            }

            if (s1.startsWith("|") || s1.endsWith("|"))
            {
                arraylist.add(new Phoneme("", Languages.ANY_LANGUAGE));
            }
            return new PhonemeList(arraylist);
        } else
        {
            return parsePhoneme(s);
        }
    }

    private static List parseRules(Scanner scanner, String s)
    {
        ArrayList arraylist;
        boolean flag;
        int i;
        arraylist = new ArrayList();
        flag = false;
        i = 0;
_L2:
        if (!scanner.hasNextLine())
        {
            break MISSING_BLOCK_LABEL_371;
        }
        i++;
        String s1 = scanner.nextLine();
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        int j;
        String s2;
        String s3;
        String as[];
        IllegalArgumentException illegalargumentexception;
        boolean flag1;
        String s4;
        if (s1.endsWith("*/"))
        {
            flag1 = false;
        } else
        {
            flag1 = flag;
        }
_L3:
        flag = flag1;
        if (true) goto _L2; else goto _L1
_L1:
label0:
        {
            if (!s1.startsWith("/*"))
            {
                break label0;
            }
            flag1 = true;
        }
          goto _L3
        j = s1.indexOf("//");
        if (j >= 0)
        {
            s2 = s1.substring(0, j);
        } else
        {
            s2 = s1;
        }
        s3 = s2.trim();
        if (s3.length() == 0) goto _L2; else goto _L4
_L4:
        if (s3.startsWith("#include"))
        {
            s4 = s3.substring("#include".length()).trim();
            if (s4.contains(" "))
            {
                System.err.println((new StringBuilder()).append("Warining: malformed import statement: ").append(s1).toString());
            } else
            {
                arraylist.addAll(parseRules(createScanner(s4), (new StringBuilder()).append(s).append("->").append(s4).toString()));
            }
            flag1 = flag;
        } else
        {
            as = s3.split("\\s+");
            if (as.length != 4)
            {
                System.err.println((new StringBuilder()).append("Warning: malformed rule statement split into ").append(as.length).append(" parts: ").append(s1).toString());
                flag1 = flag;
            } else
            {
                try
                {
                    arraylist.add(new Rule(stripQuotes(as[0]), stripQuotes(as[1]), stripQuotes(as[2]), parsePhonemeExpr(stripQuotes(as[3])), i, s) {

                        private final String loc;
                        private final int myLine;
                        final int val$cLine;
                        final String val$location;

                        public String toString()
                        {
                            StringBuilder stringbuilder = new StringBuilder();
                            stringbuilder.append("Rule");
                            stringbuilder.append("{line=").append(myLine);
                            stringbuilder.append(", loc='").append(loc).append('\'');
                            stringbuilder.append('}');
                            return stringbuilder.toString();
                        }

            
            {
                cLine = i;
                location = s3;
                super(s, s1, s2, phonemeexpr);
                myLine = cLine;
                loc = location;
            }
                    });
                }
                // Misplaced declaration of an exception variable
                catch (IllegalArgumentException illegalargumentexception)
                {
                    throw new IllegalStateException((new StringBuilder()).append("Problem parsing line ").append(i).toString(), illegalargumentexception);
                }
                flag1 = flag;
            }
        }
          goto _L3
        return arraylist;
    }

    private static RPattern pattern(String s)
    {
        boolean flag = true;
        boolean flag1 = s.startsWith("^");
        boolean flag2 = s.endsWith("$");
        int i;
        int j;
        String s1;
        if (flag1)
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 0;
        }
        if (flag2)
        {
            j = -1 + s.length();
        } else
        {
            j = s.length();
        }
        s1 = s.substring(i, j);
        if (!s1.contains("["))
        {
            if (flag1 && flag2)
            {
                if (s1.length() == 0)
                {
                    return new RPattern() {

                        public boolean isMatch(CharSequence charsequence)
                        {
                            return charsequence.length() == 0;
                        }

                    };
                } else
                {
                    return new RPattern(s1) {

                        final String val$content;

                        public boolean isMatch(CharSequence charsequence)
                        {
                            return charsequence.equals(content);
                        }

            
            {
                content = s;
                super();
            }
                    };
                }
            }
            if ((flag1 || flag2) && s1.length() == 0)
            {
                return ALL_STRINGS_RMATCHER;
            }
            if (flag1)
            {
                return new RPattern(s1) {

                    final String val$content;

                    public boolean isMatch(CharSequence charsequence)
                    {
                        return Rule.startsWith(charsequence, content);
                    }

            
            {
                content = s;
                super();
            }
                };
            }
            if (flag2)
            {
                return new RPattern(s1) {

                    final String val$content;

                    public boolean isMatch(CharSequence charsequence)
                    {
                        return Rule.endsWith(charsequence, content);
                    }

            
            {
                content = s;
                super();
            }
                };
            }
        } else
        {
            boolean flag3 = s1.startsWith("[");
            boolean flag4 = s1.endsWith("]");
            if (flag3 && flag4)
            {
                String s2 = s1.substring(flag, -1 + s1.length());
                if (!s2.contains("["))
                {
                    boolean flag5 = s2.startsWith("^");
                    String s3;
                    if (flag5)
                    {
                        s3 = s2.substring(flag);
                    } else
                    {
                        s3 = s2;
                    }
                    if (flag5)
                    {
                        flag = false;
                    }
                    if (flag1 && flag2)
                    {
                        return new RPattern(s3, flag) {

                            final String val$bContent;
                            final boolean val$shouldMatch;

                            public boolean isMatch(CharSequence charsequence)
                            {
                                return charsequence.length() == 1 && Rule.contains(bContent, charsequence.charAt(0)) == shouldMatch;
                            }

            
            {
                bContent = s;
                shouldMatch = flag;
                super();
            }
                        };
                    }
                    if (flag1)
                    {
                        return new RPattern(s3, flag) {

                            final String val$bContent;
                            final boolean val$shouldMatch;

                            public boolean isMatch(CharSequence charsequence)
                            {
                                int k = charsequence.length();
                                boolean flag6 = false;
                                if (k > 0)
                                {
                                    boolean flag7 = Rule.contains(bContent, charsequence.charAt(0));
                                    boolean flag8 = shouldMatch;
                                    flag6 = false;
                                    if (flag7 == flag8)
                                    {
                                        flag6 = true;
                                    }
                                }
                                return flag6;
                            }

            
            {
                bContent = s;
                shouldMatch = flag;
                super();
            }
                        };
                    }
                    if (flag2)
                    {
                        return new RPattern(s3, flag) {

                            final String val$bContent;
                            final boolean val$shouldMatch;

                            public boolean isMatch(CharSequence charsequence)
                            {
                                return charsequence.length() > 0 && Rule.contains(bContent, charsequence.charAt(-1 + charsequence.length())) == shouldMatch;
                            }

            
            {
                bContent = s;
                shouldMatch = flag;
                super();
            }
                        };
                    }
                }
            }
        }
        return new RPattern(s) {

            Pattern pattern;
            final String val$regex;

            public boolean isMatch(CharSequence charsequence)
            {
                return pattern.matcher(charsequence).find();
            }

            
            {
                regex = s;
                super();
                pattern = Pattern.compile(regex);
            }
        };
    }

    private static boolean startsWith(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence1.length() <= charsequence.length()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= charsequence1.length())
                {
                    break label1;
                }
                if (charsequence.charAt(i) != charsequence1.charAt(i))
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    private static String stripQuotes(String s)
    {
        if (s.startsWith("\""))
        {
            s = s.substring(1);
        }
        if (s.endsWith("\""))
        {
            s = s.substring(0, -1 + s.length());
        }
        return s;
    }

    public RPattern getLContext()
    {
        return lContext;
    }

    public String getPattern()
    {
        return pattern;
    }

    public PhonemeExpr getPhoneme()
    {
        return phoneme;
    }

    public RPattern getRContext()
    {
        return rContext;
    }

    public boolean patternAndContextMatches(CharSequence charsequence, int i)
    {
        if (i < 0)
        {
            throw new IndexOutOfBoundsException("Can not match pattern at negative indexes");
        }
        int j = i + pattern.length();
        if (j <= charsequence.length())
        {
            boolean flag = charsequence.subSequence(i, j).equals(pattern);
            boolean flag1 = rContext.isMatch(charsequence.subSequence(j, charsequence.length()));
            boolean flag2 = lContext.isMatch(charsequence.subSequence(0, i));
            if (flag && flag1 && flag2)
            {
                return true;
            }
        }
        return false;
    }

    static 
    {
        RULES = new EnumMap(org/apache/commons/codec/language/bm/NameType);
        NameType anametype[] = NameType.values();
        int i = anametype.length;
        for (int j = 0; j < i; j++)
        {
            NameType nametype = anametype[j];
            EnumMap enummap = new EnumMap(org/apache/commons/codec/language/bm/RuleType);
            RuleType aruletype[] = RuleType.values();
            int k = aruletype.length;
            for (int l = 0; l < k; l++)
            {
                RuleType ruletype = aruletype[l];
                HashMap hashmap = new HashMap();
                for (Iterator iterator = Languages.getInstance(nametype).getLanguages().iterator(); iterator.hasNext();)
                {
                    String s = (String)iterator.next();
                    try
                    {
                        hashmap.put(s, parseRules(createScanner(nametype, ruletype, s), createResourceName(nametype, ruletype, s)));
                    }
                    catch (IllegalStateException illegalstateexception)
                    {
                        throw new IllegalStateException((new StringBuilder()).append("Problem processing ").append(createResourceName(nametype, ruletype, s)).toString(), illegalstateexception);
                    }
                }

                if (!ruletype.equals(RuleType.RULES))
                {
                    hashmap.put("common", parseRules(createScanner(nametype, ruletype, "common"), createResourceName(nametype, ruletype, "common")));
                }
                enummap.put(ruletype, Collections.unmodifiableMap(hashmap));
            }

            RULES.put(nametype, Collections.unmodifiableMap(enummap));
        }

    }



}
