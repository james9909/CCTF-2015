// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;


// Referenced classes of package com.brightcove.player.model:
//            Element, Length

public class StyledElement extends Element
{
    public static final class FontStyle extends Enum
    {

        private static final FontStyle $VALUES[];
        public static final FontStyle ITALIC;
        public static final FontStyle NORMAL;
        public static final FontStyle UNDEFINED;

        public static FontStyle valueOf(String s)
        {
            return (FontStyle)Enum.valueOf(com/brightcove/player/model/StyledElement$FontStyle, s);
        }

        public static FontStyle[] values()
        {
            return (FontStyle[])$VALUES.clone();
        }

        static 
        {
            UNDEFINED = new FontStyle("UNDEFINED", 0);
            NORMAL = new FontStyle("NORMAL", 1);
            ITALIC = new FontStyle("ITALIC", 2);
            FontStyle afontstyle[] = new FontStyle[3];
            afontstyle[0] = UNDEFINED;
            afontstyle[1] = NORMAL;
            afontstyle[2] = ITALIC;
            $VALUES = afontstyle;
        }

        private FontStyle(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class FontWeight extends Enum
    {

        private static final FontWeight $VALUES[];
        public static final FontWeight BOLD;
        public static final FontWeight NORMAL;
        public static final FontWeight UNDEFINED;

        public static FontWeight valueOf(String s)
        {
            return (FontWeight)Enum.valueOf(com/brightcove/player/model/StyledElement$FontWeight, s);
        }

        public static FontWeight[] values()
        {
            return (FontWeight[])$VALUES.clone();
        }

        static 
        {
            UNDEFINED = new FontWeight("UNDEFINED", 0);
            NORMAL = new FontWeight("NORMAL", 1);
            BOLD = new FontWeight("BOLD", 2);
            FontWeight afontweight[] = new FontWeight[3];
            afontweight[0] = UNDEFINED;
            afontweight[1] = NORMAL;
            afontweight[2] = BOLD;
            $VALUES = afontweight;
        }

        private FontWeight(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class TextAlign extends Enum
    {

        private static final TextAlign $VALUES[];
        public static final TextAlign CENTER;
        public static final TextAlign END;
        public static final TextAlign LEFT;
        public static final TextAlign RIGHT;
        public static final TextAlign START;
        public static final TextAlign UNDEFINED;

        public static TextAlign valueOf(String s)
        {
            return (TextAlign)Enum.valueOf(com/brightcove/player/model/StyledElement$TextAlign, s);
        }

        public static TextAlign[] values()
        {
            return (TextAlign[])$VALUES.clone();
        }

        static 
        {
            UNDEFINED = new TextAlign("UNDEFINED", 0);
            START = new TextAlign("START", 1);
            LEFT = new TextAlign("LEFT", 2);
            CENTER = new TextAlign("CENTER", 3);
            RIGHT = new TextAlign("RIGHT", 4);
            END = new TextAlign("END", 5);
            TextAlign atextalign[] = new TextAlign[6];
            atextalign[0] = UNDEFINED;
            atextalign[1] = START;
            atextalign[2] = LEFT;
            atextalign[3] = CENTER;
            atextalign[4] = RIGHT;
            atextalign[5] = END;
            $VALUES = atextalign;
        }

        private TextAlign(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class TextDecoration extends Enum
    {

        private static final TextDecoration $VALUES[];
        public static final TextDecoration LINETHROUGH;
        public static final TextDecoration NOLINETHROUGH;
        public static final TextDecoration NONE;
        public static final TextDecoration NOOVERLINE;
        public static final TextDecoration NOUNDERLINE;
        public static final TextDecoration OVERLINE;
        public static final TextDecoration UNDERLINE;

        public static TextDecoration valueOf(String s)
        {
            return (TextDecoration)Enum.valueOf(com/brightcove/player/model/StyledElement$TextDecoration, s);
        }

        public static TextDecoration[] values()
        {
            return (TextDecoration[])$VALUES.clone();
        }

        static 
        {
            NONE = new TextDecoration("NONE", 0);
            UNDERLINE = new TextDecoration("UNDERLINE", 1);
            NOUNDERLINE = new TextDecoration("NOUNDERLINE", 2);
            LINETHROUGH = new TextDecoration("LINETHROUGH", 3);
            NOLINETHROUGH = new TextDecoration("NOLINETHROUGH", 4);
            OVERLINE = new TextDecoration("OVERLINE", 5);
            NOOVERLINE = new TextDecoration("NOOVERLINE", 6);
            TextDecoration atextdecoration[] = new TextDecoration[7];
            atextdecoration[0] = NONE;
            atextdecoration[1] = UNDERLINE;
            atextdecoration[2] = NOUNDERLINE;
            atextdecoration[3] = LINETHROUGH;
            atextdecoration[4] = NOLINETHROUGH;
            atextdecoration[5] = OVERLINE;
            atextdecoration[6] = NOOVERLINE;
            $VALUES = atextdecoration;
        }

        private TextDecoration(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class Unit extends Enum
    {

        private static final Unit $VALUES[];
        public static final Unit EMS;
        public static final Unit PERCENT;
        public static final Unit PX;
        public static final Unit UNDEFINED;

        public static Unit fromString(String s)
        {
            if (s == null)
            {
                return UNDEFINED;
            }
            if (s.equals("%"))
            {
                return PERCENT;
            } else
            {
                return valueOf(s);
            }
        }

        public static Unit valueOf(String s)
        {
            return (Unit)Enum.valueOf(com/brightcove/player/model/StyledElement$Unit, s);
        }

        public static Unit[] values()
        {
            return (Unit[])$VALUES.clone();
        }

        static 
        {
            UNDEFINED = new Unit("UNDEFINED", 0);
            EMS = new Unit("EMS", 1);
            PERCENT = new Unit("PERCENT", 2);
            PX = new Unit("PX", 3);
            Unit aunit[] = new Unit[4];
            aunit[0] = UNDEFINED;
            aunit[1] = EMS;
            aunit[2] = PERCENT;
            aunit[3] = PX;
            $VALUES = aunit;
        }

        private Unit(String s, int i)
        {
            super(s, i);
        }
    }


    protected String backgroundColor;
    protected String color;
    protected Length fontSize;
    protected FontStyle fontStyle;
    protected FontWeight fontWeight;
    protected String styleName;
    protected TextAlign textAlign;
    protected TextDecoration textDecoration;

    public StyledElement()
    {
    }

    public String getBackgroundColor()
    {
        return backgroundColor;
    }

    public String getColor()
    {
        return color;
    }

    public Length getFontSize()
    {
        return fontSize;
    }

    public FontStyle getFontStyle()
    {
        return fontStyle;
    }

    public FontWeight getFontWeight()
    {
        return fontWeight;
    }

    public String getStyleName()
    {
        return styleName;
    }

    public TextAlign getTextAlign()
    {
        return textAlign;
    }

    public TextDecoration getTextDecoration()
    {
        return textDecoration;
    }

    public void setBackgroundColor(String s)
    {
        backgroundColor = s;
    }

    public void setColor(String s)
    {
        color = s;
    }

    public void setFontSize(Length length)
    {
        fontSize = length;
    }

    public void setFontStyle(FontStyle fontstyle)
    {
        fontStyle = fontstyle;
    }

    public void setFontWeight(FontWeight fontweight)
    {
        fontWeight = fontweight;
    }

    public void setStyleName(String s)
    {
        styleName = s;
    }

    public void setTextAlign(TextAlign textalign)
    {
        textAlign = textalign;
    }

    public void setTextDecoration(TextDecoration textdecoration)
    {
        textDecoration = textdecoration;
    }
}
