// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.platform;


public final class InitState extends Enum
{

    private static final InitState $VALUES[];
    public static final InitState ERROR;
    public static final InitState INITIALIZED;
    public static final InitState INITIALIZING;
    public static final InitState NOT_INITIALIZED;
    public static final InitState REALEASING;

    private InitState(String s, int i)
    {
        super(s, i);
    }

    public static InitState valueOf(String s)
    {
        return (InitState)Enum.valueOf(com/addlive/platform/InitState, s);
    }

    public static InitState[] values()
    {
        return (InitState[])$VALUES.clone();
    }

    static 
    {
        NOT_INITIALIZED = new InitState("NOT_INITIALIZED", 0);
        INITIALIZING = new InitState("INITIALIZING", 1);
        INITIALIZED = new InitState("INITIALIZED", 2);
        REALEASING = new InitState("REALEASING", 3);
        ERROR = new InitState("ERROR", 4);
        InitState ainitstate[] = new InitState[5];
        ainitstate[0] = NOT_INITIALIZED;
        ainitstate[1] = INITIALIZING;
        ainitstate[2] = INITIALIZED;
        ainitstate[3] = REALEASING;
        ainitstate[4] = ERROR;
        $VALUES = ainitstate;
    }
}
