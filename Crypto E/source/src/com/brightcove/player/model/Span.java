// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;


// Referenced classes of package com.brightcove.player.model:
//            StyledElement

public class Span extends StyledElement
{

    private String text;

    public Span()
    {
    }

    public Span(StyledElement styledelement)
    {
        if (styledelement == null)
        {
            throw new IllegalArgumentException("must provide a StyledElement");
        } else
        {
            styleName = styledelement.getStyleName();
            color = styledelement.getColor();
            backgroundColor = styledelement.getBackgroundColor();
            fontSize = styledelement.getFontSize();
            fontStyle = styledelement.getFontStyle();
            return;
        }
    }

    public Span(String s)
    {
        text = s;
    }

    public String getText()
    {
        return text;
    }

    public void setText(String s)
    {
        text = s;
    }
}
