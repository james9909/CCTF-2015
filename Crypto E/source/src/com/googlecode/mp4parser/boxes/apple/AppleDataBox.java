// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import java.util.HashMap;
import org.aspectj.runtime.reflect.Factory;

public abstract class AppleDataBox extends AbstractBox
{

    private static HashMap d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    int a;
    int b;
    int c;

    protected AppleDataBox(String s, int i)
    {
        super(s);
        a = i;
    }

    private static void c()
    {
        Factory factory = new Factory("AppleDataBox.java", com/googlecode/mp4parser/boxes/apple/AppleDataBox);
        e = factory.a("method-execution", factory.a("1", "getLanguageString", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "java.lang.String"), 25);
        n = factory.a("method-execution", factory.a("1", "getDataType", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 43);
        o = factory.a("method-execution", factory.a("1", "getDataCountry", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 47);
        p = factory.a("method-execution", factory.a("1", "setDataCountry", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "int", "dataCountry", "", "void"), 51);
        q = factory.a("method-execution", factory.a("1", "getDataLanguage", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 55);
        r = factory.a("method-execution", factory.a("1", "setDataLanguage", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "int", "dataLanguage", "", "void"), 59);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        c(d(bytebuffer));
    }

    protected abstract byte[] a();

    protected abstract int b();

    protected void b(ByteBuffer bytebuffer)
    {
        e(bytebuffer);
        bytebuffer.put(a());
    }

    protected abstract void c(ByteBuffer bytebuffer);

    protected long d()
    {
        return (long)(16 + b());
    }

    protected ByteBuffer d(ByteBuffer bytebuffer)
    {
        int i = bytebuffer.getInt();
        bytebuffer.getInt();
        a = bytebuffer.getInt();
        b = bytebuffer.getShort();
        if (b < 0)
        {
            b = 0x10000 + b;
        }
        c = bytebuffer.getShort();
        if (c < 0)
        {
            c = 0x10000 + c;
        }
        ByteBuffer bytebuffer1 = (ByteBuffer)bytebuffer.duplicate().slice().limit(i - 16);
        bytebuffer.position((i - 16) + bytebuffer.position());
        return bytebuffer1;
    }

    protected void e(ByteBuffer bytebuffer)
    {
        bytebuffer.putInt(16 + b());
        bytebuffer.put("data".getBytes());
        bytebuffer.putInt(a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
    }

    static 
    {
        c();
        d = new HashMap();
        d.put("0", "English");
        d.put("1", "French");
        d.put("2", "German");
        d.put("3", "Italian");
        d.put("4", "Dutch");
        d.put("5", "Swedish");
        d.put("6", "Spanish");
        d.put("7", "Danish");
        d.put("8", "Portuguese");
        d.put("9", "Norwegian");
        d.put("10", "Hebrew");
        d.put("11", "Japanese");
        d.put("12", "Arabic");
        d.put("13", "Finnish");
        d.put("14", "Greek");
        d.put("15", "Icelandic");
        d.put("16", "Maltese");
        d.put("17", "Turkish");
        d.put("18", "Croatian");
        d.put("19", "Traditional_Chinese");
        d.put("20", "Urdu");
        d.put("21", "Hindi");
        d.put("22", "Thai");
        d.put("23", "Korean");
        d.put("24", "Lithuanian");
        d.put("25", "Polish");
        d.put("26", "Hungarian");
        d.put("27", "Estonian");
        d.put("28", "Lettish");
        d.put("29", "Sami");
        d.put("30", "Faroese");
        d.put("31", "Farsi");
        d.put("32", "Russian");
        d.put("33", "Simplified_Chinese");
        d.put("34", "Flemish");
        d.put("35", "Irish");
        d.put("36", "Albanian");
        d.put("37", "Romanian");
        d.put("38", "Czech");
        d.put("39", "Slovak");
        d.put("40", "Slovenian");
        d.put("41", "Yiddish");
        d.put("42", "Serbian");
        d.put("43", "Macedonian");
        d.put("44", "Bulgarian");
        d.put("45", "Ukrainian");
        d.put("46", "Belarusian");
        d.put("47", "Uzbek");
        d.put("48", "Kazakh");
        d.put("49", "Azerbaijani");
        d.put("50", "AzerbaijanAr");
        d.put("51", "Armenian");
        d.put("52", "Georgian");
        d.put("53", "Moldavian");
        d.put("54", "Kirghiz");
        d.put("55", "Tajiki");
        d.put("56", "Turkmen");
        d.put("57", "Mongolian");
        d.put("58", "MongolianCyr");
        d.put("59", "Pashto");
        d.put("60", "Kurdish");
        d.put("61", "Kashmiri");
        d.put("62", "Sindhi");
        d.put("63", "Tibetan");
        d.put("64", "Nepali");
        d.put("65", "Sanskrit");
        d.put("66", "Marathi");
        d.put("67", "Bengali");
        d.put("68", "Assamese");
        d.put("69", "Gujarati");
        d.put("70", "Punjabi");
        d.put("71", "Oriya");
        d.put("72", "Malayalam");
        d.put("73", "Kannada");
        d.put("74", "Tamil");
        d.put("75", "Telugu");
        d.put("76", "Sinhala");
        d.put("77", "Burmese");
        d.put("78", "Khmer");
        d.put("79", "Lao");
        d.put("80", "Vietnamese");
        d.put("81", "Indonesian");
        d.put("82", "Tagalog");
        d.put("83", "MalayRoman");
        d.put("84", "MalayArabic");
        d.put("85", "Amharic");
        d.put("87", "Galla");
        d.put("87", "Oromo");
        d.put("88", "Somali");
        d.put("89", "Swahili");
        d.put("90", "Kinyarwanda");
        d.put("91", "Rundi");
        d.put("92", "Nyanja");
        d.put("93", "Malagasy");
        d.put("94", "Esperanto");
        d.put("128", "Welsh");
        d.put("129", "Basque");
        d.put("130", "Catalan");
        d.put("131", "Latin");
        d.put("132", "Quechua");
        d.put("133", "Guarani");
        d.put("134", "Aymara");
        d.put("135", "Tatar");
        d.put("136", "Uighur");
        d.put("137", "Dzongkha");
        d.put("138", "JavaneseRom");
        d.put("32767", "Unspecified");
    }
}
