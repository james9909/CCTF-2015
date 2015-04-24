// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import java.util.HashMap;
import java.util.Map;

public class Iso639
{

    static Map a = new HashMap();
    static Map b = new HashMap();

    public Iso639()
    {
    }

    private static void a(String s, String s1)
    {
        a.put(s, s1);
        b.put(s1, s);
    }

    static 
    {
        a("ab", "abk");
        a("aa", "aar");
        a("af", "afr");
        a("ak", "aka");
        a("sq", "sqi");
        a("am", "amh");
        a("ar", "ara");
        a("an", "arg");
        a("hy", "hye");
        a("as", "asm");
        a("av", "ava");
        a("ae", "ave");
        a("ay", "aym");
        a("az", "aze");
        a("bm", "bam");
        a("ba", "bak");
        a("eu", "eus");
        a("be", "bel");
        a("bn", "ben");
        a("bh", "bih");
        a("bi", "bis");
        a("bs", "bos");
        a("br", "bre");
        a("bg", "bul");
        a("my", "mya");
        a("ca", "cat");
        a("ch", "cha");
        a("ce", "che");
        a("ny", "nya");
        a("zh", "zho");
        a("cv", "chv");
        a("kw", "cor");
        a("co", "cos");
        a("cr", "cre");
        a("hr", "hrv");
        a("cs", "ces");
        a("da", "dan");
        a("dv", "div");
        a("nl", "nld");
        a("dz", "dzo");
        a("en", "eng");
        a("eo", "epo");
        a("et", "est");
        a("ee", "ewe");
        a("fo", "fao");
        a("fj", "fij");
        a("fi", "fin");
        a("fr", "fra");
        a("ff", "ful");
        a("gl", "glg");
        a("ka", "kat");
        a("de", "deu");
        a("el", "ell");
        a("gn", "grn");
        a("gu", "guj");
        a("ht", "hat");
        a("ha", "hau");
        a("he", "heb");
        a("hz", "her");
        a("hi", "hin");
        a("ho", "hmo");
        a("hu", "hun");
        a("ia", "ina");
        a("id", "ind");
        a("ie", "ile");
        a("ga", "gle");
        a("ig", "ibo");
        a("ik", "ipk");
        a("io", "ido");
        a("is", "isl");
        a("it", "ita");
        a("iu", "iku");
        a("ja", "jpn");
        a("jv", "jav");
        a("kl", "kal");
        a("kn", "kan");
        a("kr", "kau");
        a("ks", "kas");
        a("kk", "kaz");
        a("km", "khm");
        a("ki", "kik");
        a("rw", "kin");
        a("ky", "kir");
        a("kv", "kom");
        a("kg", "kon");
        a("ko", "kor");
        a("ku", "kur");
        a("kj", "kua");
        a("la", "lat");
        a("lb", "ltz");
        a("lg", "lug");
        a("li", "lim");
        a("ln", "lin");
        a("lo", "lao");
        a("lt", "lit");
        a("lu", "lub");
        a("lv", "lav");
        a("gv", "glv");
        a("mk", "mkd");
        a("mg", "mlg");
        a("ms", "msa");
        a("ml", "mal");
        a("mt", "mlt");
        a("mi", "mri");
        a("mr", "mar");
        a("mh", "mah");
        a("mn", "mon");
        a("na", "nau");
        a("nv", "nav");
        a("nd", "nde");
        a("ne", "nep");
        a("ng", "ndo");
        a("nb", "nob");
        a("nn", "nno");
        a("no", "nor");
        a("ii", "iii");
        a("nr", "nbl");
        a("oc", "oci");
        a("oj", "oji");
        a("cu", "chu");
        a("om", "orm");
        a("or", "ori");
        a("os", "oss");
        a("pa", "pan");
        a("pi", "pli");
        a("fa", "fas");
        a("pl", "pol");
        a("ps", "pus");
        a("pt", "por");
        a("qu", "que");
        a("rm", "roh");
        a("rn", "run");
        a("ro", "ron");
        a("ru", "rus");
        a("sa", "san");
        a("sc", "srd");
        a("sd", "snd");
        a("se", "sme");
        a("sm", "smo");
        a("sg", "sag");
        a("sr", "srp");
        a("gd", "gla");
        a("sn", "sna");
        a("si", "sin");
        a("sk", "slk");
        a("sl", "slv");
        a("so", "som");
        a("st", "sot");
        a("es", "spa");
        a("su", "sun");
        a("sw", "swa");
        a("ss", "ssw");
        a("sv", "swe");
        a("ta", "tam");
        a("te", "tel");
        a("tg", "tgk");
        a("th", "tha");
        a("ti", "tir");
        a("bo", "bod");
        a("tk", "tuk");
        a("tl", "tgl");
        a("tn", "tsn");
        a("to", "ton");
        a("tr", "tur");
        a("ts", "tso");
        a("tt", "tat");
        a("tw", "twi");
        a("ty", "tah");
        a("ug", "uig");
        a("uk", "ukr");
        a("ur", "urd");
        a("uz", "uzb");
        a("ve", "ven");
        a("vi", "vie");
        a("vo", "vol");
        a("wa", "wln");
        a("cy", "cym");
        a("wo", "wol");
        a("fy", "fry");
        a("xh", "xho");
        a("yi", "yid");
        a("yo", "yor");
        a("za", "zha");
        a("zu", "zul");
    }
}
