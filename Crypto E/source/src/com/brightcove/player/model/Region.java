// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;


// Referenced classes of package com.brightcove.player.model:
//            StyledElement, Length

public class Region extends StyledElement
{
    public static final class DisplayAlign extends Enum
    {

        private static final DisplayAlign $VALUES[];
        public static final DisplayAlign AFTER;
        public static final DisplayAlign BEFORE;
        public static final DisplayAlign CENTER;

        public static DisplayAlign fromString(String s)
        {
            return valueOf(s.toUpperCase());
        }

        public static DisplayAlign valueOf(String s)
        {
            return (DisplayAlign)Enum.valueOf(com/brightcove/player/model/Region$DisplayAlign, s);
        }

        public static DisplayAlign[] values()
        {
            return (DisplayAlign[])$VALUES.clone();
        }

        static 
        {
            BEFORE = new DisplayAlign("BEFORE", 0);
            CENTER = new DisplayAlign("CENTER", 1);
            AFTER = new DisplayAlign("AFTER", 2);
            DisplayAlign adisplayalign[] = new DisplayAlign[3];
            adisplayalign[0] = BEFORE;
            adisplayalign[1] = CENTER;
            adisplayalign[2] = AFTER;
            $VALUES = adisplayalign;
        }

        private DisplayAlign(String s, int i)
        {
            super(s, i);
        }
    }


    private DisplayAlign displayAlign;
    private Length extentX;
    private Length extentY;
    private Length originX;
    private Length originY;

    public Region()
    {
    }

    public DisplayAlign getDisplayAlign()
    {
        return displayAlign;
    }

    public Length getExtentX()
    {
        return extentX;
    }

    public Length getExtentY()
    {
        return extentY;
    }

    public Length getOriginX()
    {
        return originX;
    }

    public Length getOriginY()
    {
        return originY;
    }

    public void setDisplayAlign(DisplayAlign displayalign)
    {
        displayAlign = displayalign;
    }

    public void setExtentX(Length length)
    {
        extentX = length;
    }

    public void setExtentY(Length length)
    {
        extentY = length;
    }

    public void setOriginX(Length length)
    {
        originX = length;
    }

    public void setOriginY(Length length)
    {
        originY = length;
    }
}
