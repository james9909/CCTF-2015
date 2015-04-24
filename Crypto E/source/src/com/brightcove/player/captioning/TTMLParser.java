// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import android.util.Log;
import android.util.Xml;
import com.brightcove.player.model.Block;
import com.brightcove.player.model.Element;
import com.brightcove.player.model.Length;
import com.brightcove.player.model.Region;
import com.brightcove.player.model.Span;
import com.brightcove.player.model.StyledElement;
import com.brightcove.player.model.TTMLDocument;
import com.brightcove.player.util.StringUtil;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaption

public class TTMLParser
{
    public static class Attributes
    {

        public static final String BEGIN = "begin";
        public static final String BG_COLOR = "backgroundColor";
        public static final String COLOR = "color";
        public static final String DISPLAY_ALIGN = "displayAlign";
        public static final String END = "end";
        public static final String EXTENT = "extent";
        public static final String FONT_SIZE = "fontSize";
        public static final String FONT_STYLE = "fontStyle";
        public static final String FONT_WEIGHT = "fontWeight";
        public static final String ID = "id";
        public static final String ORIGIN = "origin";
        public static final String REGION = "region";
        public static final String STYLE = "style";
        public static final String TEXT_ALIGN = "textAlign";
        public static final String TEXT_DECORATION = "textDecoration";

        public Attributes()
        {
        }
    }

    public static class Namespaces
    {

        public static final String DEFAULT = null;
        public static final String TTM = "http://www.w3.org/ns/ttml#metadata";
        public static final String TTS = "http://www.w3.org/ns/ttml#styling";
        public static final String XML = "http://www.w3.org/XML/1998/namespace";


        public Namespaces()
        {
        }
    }

    public static class Tags
    {

        public static final String BODY = "body";
        public static final String BR = "br";
        public static final String CAPTION = "p";
        public static final String HEAD = "head";
        public static final String LAYOUT = "layout";
        public static final String REGION = "region";
        public static final String ROOT = "tt";
        public static final String SPAN = "span";
        public static final String STYLE = "style";
        public static final String STYLING = "styling";

        public Tags()
        {
        }
    }


    private static final int HOURS = 0x36ee80;
    private static final int MINUTES = 60000;
    private static final int SECONDS = 1000;
    private static final String TAG = com/brightcove/player/captioning/TTMLParser.getSimpleName();
    private static final Pattern timeFormatPattern = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2}).(\\d{3})$");

    private TTMLParser()
    {
    }

    private static int calculateDuration(int i, int j, int k, int l)
    {
        return l + (0x36ee80 * i + 60000 * j + k * 1000);
    }

    private static String getText(StringBuilder stringbuilder)
    {
        return stringbuilder.toString();
    }

    private static void parseBlockAttributes(Block block, XmlPullParser xmlpullparser)
    {
        if (block != null)
        {
            String s = xmlpullparser.getAttributeValue(Namespaces.DEFAULT, "begin");
            String s1 = xmlpullparser.getAttributeValue(Namespaces.DEFAULT, "end");
            int i = parseTimeValue(s);
            int j = parseTimeValue(s1);
            String s2 = xmlpullparser.getAttributeValue(Namespaces.DEFAULT, "region");
            block.setBeginTime(i);
            block.setEndTime(j);
            if (!StringUtil.isEmpty(s2))
            {
                block.setRegion(s2);
                return;
            }
        }
    }

    private static BrightcoveClosedCaption parseCaption(XmlPullParser xmlpullparser)
    {
        xmlpullparser.require(2, Namespaces.DEFAULT, "p");
        BrightcoveClosedCaption brightcoveclosedcaption = new BrightcoveClosedCaption();
        parseStyledElementAttributes(brightcoveclosedcaption, xmlpullparser);
        parseBlockAttributes(brightcoveclosedcaption, xmlpullparser);
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        Span span = new Span();
        StringBuilder stringbuilder = new StringBuilder();
        do
        {
            if (xmlpullparser.next() == 3 && xmlpullparser.getName().equals("p"))
            {
                break;
            }
            int i = xmlpullparser.getEventType();
            if (i == 4)
            {
                String s1 = xmlpullparser.getText();
                if (!StringUtil.isEmpty(s1))
                {
                    if (span == null)
                    {
                        span = new Span();
                    }
                    stringbuilder.append(s1);
                }
            } else
            if (i == 2)
            {
                String s = xmlpullparser.getName();
                if (s.equals("span"))
                {
                    if (span != null)
                    {
                        span.setText(getText(stringbuilder));
                        arraylist1.add(span);
                        stringbuilder.delete(0, stringbuilder.length());
                    }
                    span = new Span();
                    parseStyledElementAttributes(span, xmlpullparser);
                } else
                if (s.equals("br"))
                {
                    if (stringbuilder.length() > 0)
                    {
                        if (span == null)
                        {
                            span = new Span();
                        }
                        span.setText(getText(stringbuilder));
                        arraylist1.add(span);
                        stringbuilder.delete(0, stringbuilder.length());
                        span = new Span(span);
                    }
                    arraylist.add(arraylist1);
                    arraylist1 = new ArrayList();
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("span"))
            {
                span.setText(getText(stringbuilder));
                arraylist1.add(span);
                stringbuilder.delete(0, stringbuilder.length());
                span = null;
            }
        } while (true);
        if (stringbuilder.length() > 0)
        {
            if (span == null)
            {
                span = new Span();
            }
            span.setText(getText(stringbuilder));
            arraylist1.add(span);
            arraylist.add(arraylist1);
        } else
        {
            arraylist.add(arraylist1);
        }
        brightcoveclosedcaption.setLines(arraylist);
        return brightcoveclosedcaption;
    }

    private static void parseID(Element element, XmlPullParser xmlpullparser)
    {
        String s;
        if (element != null)
        {
            if (!StringUtil.isEmpty(s = xmlpullparser.getAttributeValue("http://www.w3.org/XML/1998/namespace", "id")))
            {
                element.setID(s);
                return;
            }
        }
    }

    private static Map parseLayout(XmlPullParser xmlpullparser)
    {
        xmlpullparser.require(2, Namespaces.DEFAULT, "layout");
        HashMap hashmap = new HashMap();
        do
        {
            if (xmlpullparser.next() == 3 && xmlpullparser.getName().equals("layout"))
            {
                break;
            }
            if (xmlpullparser.getEventType() == 2 && xmlpullparser.getName().equals("region"))
            {
                Region region = parseRegion(xmlpullparser);
                hashmap.put(region.getID(), region);
            }
        } while (true);
        xmlpullparser.require(3, Namespaces.DEFAULT, "layout");
        return hashmap;
    }

    private static void parsePositionalAttributes(Region region, XmlPullParser xmlpullparser)
    {
        if (region != null)
        {
            String s = xmlpullparser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "origin");
            String s1 = xmlpullparser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "extent");
            String s2 = xmlpullparser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "displayAlign");
            if (!StringUtil.isEmpty(s))
            {
                String as1[] = s.split(" ");
                region.setOriginX(new Length(as1[0]));
                region.setOriginY(new Length(as1[1]));
            }
            if (!StringUtil.isEmpty(s1))
            {
                String as[] = s1.split(" ");
                region.setExtentX(new Length(as[0]));
                region.setExtentY(new Length(as[1]));
            }
            if (!StringUtil.isEmpty(s2))
            {
                region.setDisplayAlign(com.brightcove.player.model.Region.DisplayAlign.fromString(s2));
                return;
            }
        }
    }

    private static Region parseRegion(XmlPullParser xmlpullparser)
    {
        xmlpullparser.require(2, Namespaces.DEFAULT, "region");
        Region region = new Region();
        parseID(region, xmlpullparser);
        parseStyledElementAttributes(region, xmlpullparser);
        if (xmlpullparser.nextTag() == 2 && xmlpullparser.getName().equals("style"))
        {
            parseStyledElementAttributes(region, xmlpullparser);
            parsePositionalAttributes(region, xmlpullparser);
        }
        return region;
    }

    private static TTMLDocument parseRoot(XmlPullParser xmlpullparser)
    {
        Object obj = new HashMap();
        ArrayList arraylist = new ArrayList();
        xmlpullparser.require(2, Namespaces.DEFAULT, "tt");
        Block block = null;
        Map map = null;
        do
        {
            if (xmlpullparser.next() == 1)
            {
                break;
            }
            if (xmlpullparser.getEventType() == 2)
            {
                String s = xmlpullparser.getName();
                if (s.equals("styling"))
                {
                    map = parseStyling(xmlpullparser);
                } else
                if (s.equals("layout"))
                {
                    obj = parseLayout(xmlpullparser);
                } else
                if (s.equals("body"))
                {
                    block = new Block();
                    parseStyledElementAttributes(block, xmlpullparser);
                    parseBlockAttributes(block, xmlpullparser);
                } else
                if (s.equals("p"))
                {
                    arraylist.add(parseCaption(xmlpullparser));
                }
            }
        } while (true);
        xmlpullparser.require(1, Namespaces.DEFAULT, null);
        return new TTMLDocument(((Map) (obj)), map, block, arraylist);
    }

    private static StyledElement parseStyle(XmlPullParser xmlpullparser)
    {
        xmlpullparser.require(2, Namespaces.DEFAULT, "style");
        StyledElement styledelement = new StyledElement();
        parseID(styledelement, xmlpullparser);
        parseStyledElementAttributes(styledelement, xmlpullparser);
        return styledelement;
    }

    private static void parseStyledElementAttributes(StyledElement styledelement, XmlPullParser xmlpullparser)
    {
        if (styledelement != null)
        {
            String s = xmlpullparser.getAttributeValue(Namespaces.DEFAULT, "style");
            if (!StringUtil.isEmpty(s))
            {
                styledelement.setStyleName(s);
            }
            String s1 = xmlpullparser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "color");
            if (!StringUtil.isEmpty(s1))
            {
                styledelement.setColor(s1);
            }
            String s2 = xmlpullparser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "backgroundColor");
            if (!StringUtil.isEmpty(s2))
            {
                styledelement.setBackgroundColor(s2);
            }
            String s3 = xmlpullparser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "fontStyle");
            if (!StringUtil.isEmpty(s3))
            {
                styledelement.setFontStyle(com.brightcove.player.model.StyledElement.FontStyle.valueOf(s3.toUpperCase()));
            }
            String s4 = xmlpullparser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "textAlign");
            if (!StringUtil.isEmpty(s4))
            {
                styledelement.setTextAlign(com.brightcove.player.model.StyledElement.TextAlign.valueOf(s4.toUpperCase()));
            }
            String s5 = xmlpullparser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "fontWeight");
            if (!StringUtil.isEmpty(s5))
            {
                styledelement.setFontWeight(com.brightcove.player.model.StyledElement.FontWeight.valueOf(s5.toUpperCase()));
            }
            String s6 = xmlpullparser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "textDecoration");
            if (!StringUtil.isEmpty(s6))
            {
                styledelement.setTextDecoration(com.brightcove.player.model.StyledElement.TextDecoration.valueOf(s6.toUpperCase()));
            }
            String s7 = xmlpullparser.getAttributeValue("http://www.w3.org/ns/ttml#styling", "fontSize");
            if (!StringUtil.isEmpty(s7))
            {
                styledelement.setFontSize(new Length(s7));
                return;
            }
        }
    }

    private static Map parseStyling(XmlPullParser xmlpullparser)
    {
        xmlpullparser.require(2, Namespaces.DEFAULT, "styling");
        HashMap hashmap = new HashMap();
        do
        {
            if (xmlpullparser.next() == 3 && xmlpullparser.getName().equals("styling"))
            {
                break;
            }
            if (xmlpullparser.getEventType() == 2 && xmlpullparser.getName().equals("style"))
            {
                StyledElement styledelement = parseStyle(xmlpullparser);
                hashmap.put(styledelement.getID(), styledelement);
            }
        } while (true);
        xmlpullparser.require(3, Namespaces.DEFAULT, "styling");
        return hashmap;
    }

    public static int parseTimeValue(String s)
    {
        if (StringUtil.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_146;
        }
        int i;
        Matcher matcher = timeFormatPattern.matcher(s);
        if (!matcher.find() || matcher.groupCount() < 4)
        {
            break MISSING_BLOCK_LABEL_146;
        }
        String s1 = matcher.group(1);
        String s2 = matcher.group(2);
        String s3 = matcher.group(3);
        String s4 = matcher.group(4);
        if (StringUtil.isEmpty(s1) || StringUtil.isEmpty(s2) || StringUtil.isEmpty(s3) || StringUtil.isEmpty(s4))
        {
            break MISSING_BLOCK_LABEL_146;
        }
        i = calculateDuration(Integer.parseInt(s1), Integer.parseInt(s2), Integer.parseInt(s3), Integer.parseInt(s4));
        return i;
        NumberFormatException numberformatexception;
        numberformatexception;
        Log.w(TAG, (new StringBuilder()).append("got invalid time format for caption: ").append(s).toString());
        return -1;
    }

    public static TTMLDocument parseXml(InputStream inputstream, String s)
    {
        TTMLDocument ttmldocument;
        XmlPullParser xmlpullparser = XmlPullParserFactory.newInstance().newPullParser();
        xmlpullparser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        xmlpullparser.setInput(inputstream, s);
        xmlpullparser.nextTag();
        ttmldocument = parseRoot(xmlpullparser);
        if (inputstream != null)
        {
            inputstream.close();
        }
        return ttmldocument;
        Exception exception;
        exception;
        if (inputstream != null)
        {
            inputstream.close();
        }
        throw exception;
    }

    public static TTMLDocument parseXml(Reader reader)
    {
        TTMLDocument ttmldocument;
        XmlPullParser xmlpullparser = Xml.newPullParser();
        xmlpullparser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        xmlpullparser.setInput(reader);
        xmlpullparser.nextTag();
        Log.i(TAG, (new StringBuilder()).append("detected XML encoding for TTML is: ").append(xmlpullparser.getInputEncoding()).toString());
        ttmldocument = parseRoot(xmlpullparser);
        if (reader != null)
        {
            reader.close();
        }
        return ttmldocument;
        Exception exception;
        exception;
        if (reader != null)
        {
            reader.close();
        }
        throw exception;
    }

}
