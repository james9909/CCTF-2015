// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            StoryPointer

public class StorySnapNote
    implements Comparable
{

    private StoryPointer mStoryPointer;
    private Long mTimestamp;
    private String mViewer;
    private boolean mWasScreenshot;

    public StorySnapNote()
    {
    }

    public StorySnapNote(String s, boolean flag, Long long1, StoryPointer storypointer)
    {
        mViewer = s;
        mWasScreenshot = flag;
        mTimestamp = long1;
        mStoryPointer = storypointer;
    }

    public int a(StorySnapNote storysnapnote)
    {
        return mTimestamp.intValue() - storysnapnote.c().intValue();
    }

    public boolean a()
    {
        return mWasScreenshot;
    }

    public String b()
    {
        return mViewer;
    }

    public Long c()
    {
        return mTimestamp;
    }

    public int compareTo(Object obj)
    {
        return a((StorySnapNote)obj);
    }

    public StoryPointer d()
    {
        return mStoryPointer;
    }

    public boolean equals(Object obj)
    {
        StorySnapNote storysnapnote = (StorySnapNote)obj;
        if (!(obj instanceof StorySnapNote))
        {
            return false;
        }
        if (!mViewer.equals(storysnapnote.b()))
        {
            return false;
        }
        if (mWasScreenshot != storysnapnote.a())
        {
            return false;
        }
        if (!mStoryPointer.a().equals(storysnapnote.d().a()))
        {
            return false;
        }
        if (!mStoryPointer.b().equals(storysnapnote.d().b()))
        {
            return false;
        } else
        {
            return mTimestamp.equals(storysnapnote.c());
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append(mViewer).append(" ").append(mWasScreenshot).append(" ").append(mTimestamp).append(" ").append(mStoryPointer).toString();
    }
}
