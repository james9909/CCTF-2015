// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;


public class ChatMediaExpansionCalculator
{
    static class ChatMediaExpansionInput
    {
    }

    static class ChatMediaExpansionOutput
    {
    }

    public static final class ScrollDirection extends Enum
    {

        public static final ScrollDirection a;
        public static final ScrollDirection b;
        private static final ScrollDirection c[];

        public static ScrollDirection valueOf(String s)
        {
            return (ScrollDirection)Enum.valueOf(com/snapchat/android/fragments/chat/ChatMediaExpansionCalculator$ScrollDirection, s);
        }

        public static ScrollDirection[] values()
        {
            return (ScrollDirection[])c.clone();
        }

        static 
        {
            a = new ScrollDirection("UP", 0);
            b = new ScrollDirection("DOWN", 1);
            ScrollDirection ascrolldirection[] = new ScrollDirection[2];
            ascrolldirection[0] = a;
            ascrolldirection[1] = b;
            c = ascrolldirection;
        }

        private ScrollDirection(String s, int i)
        {
            super(s, i);
        }
    }


    public ChatMediaExpansionCalculator()
    {
    }
}
