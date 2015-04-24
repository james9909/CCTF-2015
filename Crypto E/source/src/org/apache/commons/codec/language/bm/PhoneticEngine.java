// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.language.bm;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

// Referenced classes of package org.apache.commons.codec.language.bm:
//            NameType, RuleType, Lang, Rule

public class PhoneticEngine
{
    static final class PhonemeBuilder
    {

        private final Set phonemes;

        public static PhonemeBuilder empty(Languages.LanguageSet languageset)
        {
            return new PhonemeBuilder(Collections.singleton(new Rule.Phoneme("", languageset)));
        }

        public PhonemeBuilder append(CharSequence charsequence)
        {
            HashSet hashset = new HashSet();
            for (Iterator iterator = phonemes.iterator(); iterator.hasNext(); hashset.add(((Rule.Phoneme)iterator.next()).append(charsequence))) { }
            return new PhonemeBuilder(hashset);
        }

        public PhonemeBuilder apply(Rule.PhonemeExpr phonemeexpr)
        {
            HashSet hashset = new HashSet();
            for (Iterator iterator = phonemes.iterator(); iterator.hasNext();)
            {
                Rule.Phoneme phoneme = (Rule.Phoneme)iterator.next();
                Iterator iterator1 = phonemeexpr.getPhonemes().iterator();
                while (iterator1.hasNext()) 
                {
                    Rule.Phoneme phoneme1 = phoneme.join((Rule.Phoneme)iterator1.next());
                    if (!phoneme1.getLanguages().isEmpty())
                    {
                        hashset.add(phoneme1);
                    }
                }
            }

            return new PhonemeBuilder(hashset);
        }

        public Set getPhonemes()
        {
            return phonemes;
        }

        public String makeString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            Rule.Phoneme phoneme;
            for (Iterator iterator = phonemes.iterator(); iterator.hasNext(); stringbuilder.append(phoneme.getPhonemeText()))
            {
                phoneme = (Rule.Phoneme)iterator.next();
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.append("|");
                }
            }

            return stringbuilder.toString();
        }

        private PhonemeBuilder(Set set)
        {
            phonemes = set;
        }

    }

    static final class RulesApplication
    {

        private final List finalRules;
        private boolean found;
        private int i;
        private final CharSequence input;
        private PhonemeBuilder phonemeBuilder;

        public int getI()
        {
            return i;
        }

        public PhonemeBuilder getPhonemeBuilder()
        {
            return phonemeBuilder;
        }

        public RulesApplication invoke()
        {
            phonemeBuilder = phonemeBuilder.apply(rule.getPhoneme());
            found = true;
_L2:
            if (!found)
            {
                k = 1;
            }
            i = k + i;
            return this;
            int j = 0;
            found = false;
            int k;
            Rule rule;
            for (Iterator iterator = finalRules.iterator(); iterator.hasNext();)
            {
label0:
                {
                    rule = (Rule)iterator.next();
                    k = rule.getPattern().length();
                    if (rule.patternAndContextMatches(input, i))
                    {
                        break label0;
                    }
                    j = k;
                }
            }

            k = j;
            if (true) goto _L2; else goto _L1
_L1:
        }

        public boolean isFound()
        {
            return found;
        }

        public RulesApplication(List list, CharSequence charsequence, PhonemeBuilder phonemebuilder, int j)
        {
            if (list == null)
            {
                throw new NullPointerException("The finalRules argument must not be null");
            } else
            {
                finalRules = list;
                phonemeBuilder = phonemebuilder;
                input = charsequence;
                i = j;
                return;
            }
        }
    }


    private static final Map NAME_PREFIXES;
    private final boolean concat;
    private final Lang lang;
    private final NameType nameType;
    private final RuleType ruleType;

    public PhoneticEngine(NameType nametype, RuleType ruletype, boolean flag)
    {
        if (ruletype == RuleType.RULES)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("ruleType must not be ").append(RuleType.RULES).toString());
        } else
        {
            nameType = nametype;
            ruleType = ruletype;
            concat = flag;
            lang = Lang.instance(nametype);
            return;
        }
    }

    private PhonemeBuilder applyFinalRules(PhonemeBuilder phonemebuilder, List list)
    {
        if (list == null)
        {
            throw new NullPointerException("finalRules can not be null");
        }
        if (list.isEmpty())
        {
            return phonemebuilder;
        }
        TreeSet treeset = new TreeSet(Rule.Phoneme.COMPARATOR);
        PhonemeBuilder phonemebuilder1;
        for (Iterator iterator = phonemebuilder.getPhonemes().iterator(); iterator.hasNext(); treeset.addAll(phonemebuilder1.getPhonemes()))
        {
            Rule.Phoneme phoneme = (Rule.Phoneme)iterator.next();
            phonemebuilder1 = PhonemeBuilder.empty(phoneme.getLanguages());
            CharSequence charsequence = cacheSubSequence(phoneme.getPhonemeText());
            RulesApplication rulesapplication;
            for (int i = 0; i < charsequence.length(); i = rulesapplication.getI())
            {
                rulesapplication = (new RulesApplication(list, charsequence, phonemebuilder1, i)).invoke();
                boolean flag = rulesapplication.isFound();
                phonemebuilder1 = rulesapplication.getPhonemeBuilder();
                if (!flag)
                {
                    phonemebuilder1 = phonemebuilder1.append(charsequence.subSequence(i, i + 1));
                }
            }

        }

        return new PhonemeBuilder(treeset);
    }

    private static CharSequence cacheSubSequence(CharSequence charsequence)
    {
        return new CharSequence(charsequence, (CharSequence[][])Array.newInstance(java/lang/CharSequence, new int[] {
            charsequence.length(), charsequence.length()
        })) {

            final CharSequence val$cache[][];
            final CharSequence val$cached;

            public char charAt(int i)
            {
                return cached.charAt(i);
            }

            public int length()
            {
                return cached.length();
            }

            public CharSequence subSequence(int i, int j)
            {
                Object obj;
                if (i == j)
                {
                    obj = "";
                } else
                {
                    obj = cache[i][j - 1];
                    if (obj == null)
                    {
                        CharSequence charsequence1 = cached.subSequence(i, j);
                        cache[i][j - 1] = charsequence1;
                        return charsequence1;
                    }
                }
                return ((CharSequence) (obj));
            }

            
            {
                cached = charsequence;
                cache = acharsequence;
                super();
            }
        };
    }

    private static String join(Iterable iterable, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = iterable.iterator();
        if (iterator.hasNext())
        {
            stringbuilder.append((String)iterator.next());
        }
        for (; iterator.hasNext(); stringbuilder.append(s).append((String)iterator.next())) { }
        return stringbuilder.toString();
    }

    public String encode(String s)
    {
        return encode(s, lang.guessLanguages(s));
    }

    public String encode(String s, Languages.LanguageSet languageset)
    {
        List list1;
        List list2;
        List list3;
        ArrayList arraylist;
        List list;
        String s1;
label0:
        {
            list = Rule.getInstance(nameType, RuleType.RULES, languageset);
            list1 = Rule.getInstance(nameType, ruleType, "common");
            list2 = Rule.getInstance(nameType, ruleType, languageset);
            s1 = s.toLowerCase(Locale.ENGLISH).replace('-', ' ').trim();
            if (nameType != NameType.GENERIC)
            {
                break label0;
            }
            if (s1.length() >= 2 && s1.substring(0, 2).equals("d'"))
            {
                String s7 = s1.substring(2);
                String s8 = (new StringBuilder()).append("d").append(s7).toString();
                return (new StringBuilder()).append("(").append(encode(s7)).append(")-(").append(encode(s8)).append(")").toString();
            }
            Iterator iterator2 = ((Set)NAME_PREFIXES.get(nameType)).iterator();
            String s4;
            do
            {
                if (!iterator2.hasNext())
                {
                    break label0;
                }
                s4 = (String)iterator2.next();
            } while (!s1.startsWith((new StringBuilder()).append(s4).append(" ").toString()));
            String s5 = s1.substring(1 + s4.length());
            String s6 = (new StringBuilder()).append(s4).append(s5).toString();
            return (new StringBuilder()).append("(").append(encode(s5)).append(")-(").append(encode(s6)).append(")").toString();
        }
        list3 = Arrays.asList(s1.split("\\s+"));
        arraylist = new ArrayList();
        static class _cls2
        {

            static final int $SwitchMap$org$apache$commons$codec$language$bm$NameType[];

            static 
            {
                $SwitchMap$org$apache$commons$codec$language$bm$NameType = new int[NameType.values().length];
                try
                {
                    $SwitchMap$org$apache$commons$codec$language$bm$NameType[NameType.SEPHARDIC.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$apache$commons$codec$language$bm$NameType[NameType.ASHKENAZI.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$apache$commons$codec$language$bm$NameType[NameType.GENERIC.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        PhonemeBuilder phonemebuilder;
        CharSequence charsequence;
        int i;
        RulesApplication rulesapplication;
        switch (_cls2..SwitchMap.org.apache.commons.codec.language.bm.NameType[nameType.ordinal()])
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unreachable case: ").append(nameType).toString());

        case 1: // '\001'
            String as[];
            for (Iterator iterator1 = list3.iterator(); iterator1.hasNext(); arraylist.add(as[-1 + as.length]))
            {
                as = ((String)iterator1.next()).split("'");
            }

            arraylist.removeAll((Collection)NAME_PREFIXES.get(nameType));
            break;

        case 2: // '\002'
            arraylist.addAll(list3);
            arraylist.removeAll((Collection)NAME_PREFIXES.get(nameType));
            continue;

        case 3: // '\003'
            arraylist.addAll(list3);
            continue;
        }
        break;
        do
        {
            String s3;
            PhonemeBuilder phonemebuilder1;
            if (concat)
            {
                s3 = join(arraylist, " ");
            } else
            if (arraylist.size() == 1)
            {
                s3 = (String)list3.iterator().next();
            } else
            {
                StringBuilder stringbuilder = new StringBuilder();
                String s2;
                for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); stringbuilder.append("-").append(encode(s2)))
                {
                    s2 = (String)iterator.next();
                }

                return stringbuilder.substring(1);
            }
            phonemebuilder = PhonemeBuilder.empty(languageset);
            charsequence = cacheSubSequence(s3);
            i = 0;
            for (phonemebuilder1 = phonemebuilder; i < charsequence.length(); phonemebuilder1 = rulesapplication.getPhonemeBuilder())
            {
                rulesapplication = (new RulesApplication(list, charsequence, phonemebuilder1, i)).invoke();
                i = rulesapplication.getI();
            }

            return applyFinalRules(applyFinalRules(phonemebuilder1, list1), list2).makeString();
        } while (true);
    }

    public Lang getLang()
    {
        return lang;
    }

    public NameType getNameType()
    {
        return nameType;
    }

    public RuleType getRuleType()
    {
        return ruleType;
    }

    public boolean isConcat()
    {
        return concat;
    }

    static 
    {
        NAME_PREFIXES = new EnumMap(org/apache/commons/codec/language/bm/NameType);
        NAME_PREFIXES.put(NameType.ASHKENAZI, Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] {
            "bar", "ben", "da", "de", "van", "von"
        }))));
        NAME_PREFIXES.put(NameType.SEPHARDIC, Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] {
            "al", "el", "da", "dal", "de", "del", "dela", "de la", "della", "des", 
            "di", "do", "dos", "du", "van", "von"
        }))));
        NAME_PREFIXES.put(NameType.GENERIC, Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] {
            "da", "dal", "de", "del", "dela", "de la", "della", "des", "di", "do", 
            "dos", "du", "van", "von"
        }))));
    }
}
