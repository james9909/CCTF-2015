// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.text.TextUtils;
import com.snapchat.android.fragments.stories.StoriesListItem;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.snapchat.android.model:
//            StorySnap, AnnotatedMediabryo, PostToStory, StorySnapExtra

public class StorySnapLogbook
    implements StoriesListItem, Comparable
{
    public static final class ActionState extends Enum
    {

        private static final ActionState $VALUES[];
        public static final ActionState DELETED;
        public static final ActionState DELETING;
        public static final ActionState READY;
        public static final ActionState SAVED;
        public static final ActionState SAVING;

        public static ActionState valueOf(String s)
        {
            return (ActionState)Enum.valueOf(com/snapchat/android/model/StorySnapLogbook$ActionState, s);
        }

        public static ActionState[] values()
        {
            return (ActionState[])$VALUES.clone();
        }

        static 
        {
            READY = new ActionState("READY", 0);
            SAVING = new ActionState("SAVING", 1);
            DELETING = new ActionState("DELETING", 2);
            SAVED = new ActionState("SAVED", 3);
            DELETED = new ActionState("DELETED", 4);
            ActionState aactionstate[] = new ActionState[5];
            aactionstate[0] = READY;
            aactionstate[1] = SAVING;
            aactionstate[2] = DELETING;
            aactionstate[3] = SAVED;
            aactionstate[4] = DELETED;
            $VALUES = aactionstate;
        }

        private ActionState(String s, int i1)
        {
            super(s, i1);
        }
    }

    public static interface StorySnapLogbookChangedListener
    {

        public abstract void c(StorySnapLogbook storysnaplogbook);
    }


    private transient ActionState mActionState;
    private transient StorySnapLogbookChangedListener mChangedListener;
    private transient boolean mIsDeletingAllowed;
    private transient String mStoryId;
    private StorySnap mStorySnap;
    private StorySnapExtra mStorySnapExtra;
    private List mStorySnapNotes;

    public StorySnapLogbook()
    {
        mActionState = ActionState.READY;
        mIsDeletingAllowed = true;
        mChangedListener = null;
    }

    public StorySnapLogbook(AnnotatedMediabryo annotatedmediabryo)
    {
        mActionState = ActionState.READY;
        mIsDeletingAllowed = true;
        mChangedListener = null;
        mStorySnap = new StorySnap(annotatedmediabryo);
        mStorySnapNotes = null;
        mStorySnapExtra = null;
        mStoryId = ((PostToStory)annotatedmediabryo.l().get(0)).c();
    }

    public StorySnapLogbook(StorySnap storysnap, List list, StorySnapExtra storysnapextra)
    {
        mActionState = ActionState.READY;
        mIsDeletingAllowed = true;
        mChangedListener = null;
        mStorySnap = storysnap;
        mStorySnapNotes = list;
        mStorySnapExtra = storysnapextra;
    }

    public int a(StorySnapLogbook storysnaplogbook)
    {
        return e().a(storysnaplogbook.e());
    }

    public String a()
    {
        return mStorySnap.aB();
    }

    public void a(StorySnap storysnap)
    {
        mStorySnap = storysnap;
    }

    public void a(ActionState actionstate)
    {
        mActionState = actionstate;
        if (mChangedListener != null)
        {
            mChangedListener.c(this);
        }
    }

    public void a(StorySnapLogbookChangedListener storysnaplogbookchangedlistener)
    {
        mChangedListener = storysnaplogbookchangedlistener;
    }

    public void a(String s)
    {
        mStoryId = s;
    }

    public void a(boolean flag)
    {
        mIsDeletingAllowed = flag;
        if (mChangedListener != null)
        {
            mChangedListener.c(this);
        }
    }

    public String b()
    {
        return null;
    }

    public int compareTo(Object obj)
    {
        return a((StorySnapLogbook)obj);
    }

    public String d()
    {
        return mStoryId;
    }

    public StorySnap e()
    {
        return mStorySnap;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof StorySnapLogbook))
        {
            return false;
        } else
        {
            StorySnapLogbook storysnaplogbook = (StorySnapLogbook)obj;
            return TextUtils.equals(mStorySnap.ay(), storysnaplogbook.e().ay());
        }
    }

    public List f()
    {
        return mStorySnapNotes;
    }

    public boolean g()
    {
        return true;
    }

    public com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType h()
    {
        return com.snapchat.android.util.BuildPieSliceTask.StoryThumbnailType.a;
    }

    public int hashCode()
    {
        return 527 + mStorySnap.ay().hashCode();
    }

    public StorySnapExtra i()
    {
        return mStorySnapExtra;
    }

    public long j()
    {
        return mStorySnap.ae();
    }

    public ActionState k()
    {
        return mActionState;
    }

    public boolean l()
    {
        return mActionState == ActionState.SAVING || mActionState == ActionState.DELETING;
    }

    public boolean m()
    {
        return mIsDeletingAllowed;
    }

    public boolean r_()
    {
        return false;
    }
}
