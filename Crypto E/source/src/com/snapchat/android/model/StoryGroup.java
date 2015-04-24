// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.util.SnapUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

// Referenced classes of package com.snapchat.android.model:
//            StorySnapLogbook, SnapWomb

public class StoryGroup
{
    public static final class ActionState extends Enum
    {

        private static final ActionState $VALUES[];
        public static final ActionState READY;
        public static final ActionState SAVED;
        public static final ActionState SAVING;

        public static ActionState valueOf(String s)
        {
            return (ActionState)Enum.valueOf(com/snapchat/android/model/StoryGroup$ActionState, s);
        }

        public static ActionState[] values()
        {
            return (ActionState[])$VALUES.clone();
        }

        static 
        {
            READY = new ActionState("READY", 0);
            SAVING = new ActionState("SAVING", 1);
            SAVED = new ActionState("SAVED", 2);
            ActionState aactionstate[] = new ActionState[3];
            aactionstate[0] = READY;
            aactionstate[1] = SAVING;
            aactionstate[2] = SAVED;
            $VALUES = aactionstate;
        }

        private ActionState(String s, int i1)
        {
            super(s, i1);
        }
    }

    public static class Builder
    {

        private String mCustomDescription;
        private String mDisplayName;
        private boolean mShouldFetchCustomDescription;
        private String mStoryId;

        static String a(Builder builder)
        {
            return builder.mStoryId;
        }

        static String b(Builder builder)
        {
            return builder.mDisplayName;
        }

        static boolean c(Builder builder)
        {
            return builder.mShouldFetchCustomDescription;
        }

        static String d(Builder builder)
        {
            return builder.mCustomDescription;
        }

        public Builder a(String s)
        {
            mDisplayName = s;
            return this;
        }

        public Builder a(boolean flag)
        {
            mShouldFetchCustomDescription = flag;
            return this;
        }

        public StoryGroup a()
        {
            return new StoryGroup(this);
        }

        public Builder b(String s)
        {
            mCustomDescription = s;
            return this;
        }

        public Builder(String s)
        {
            mStoryId = s;
        }
    }

    public static interface StoryGroupChangedListener
    {

        public abstract void a(StoryGroup storygroup);
    }


    private transient ActionState mActionState;
    private transient List mAllStorySnapLogbooks;
    private transient StoryGroupChangedListener mChangedListener;
    protected String mCustomDescription;
    protected String mCustomTitle;
    protected String mDisplayName;
    private transient int mSaveProgress;
    protected boolean mShouldFetchCustomDescription;
    protected String mStoryId;
    protected List mStorySnapLogbooks;

    public StoryGroup()
    {
        mStorySnapLogbooks = new ArrayList();
        mActionState = ActionState.READY;
        mSaveProgress = 0;
        mChangedListener = null;
    }

    private StoryGroup(Builder builder)
    {
        mStorySnapLogbooks = new ArrayList();
        mActionState = ActionState.READY;
        mSaveProgress = 0;
        mChangedListener = null;
        mStoryId = Builder.a(builder);
        mDisplayName = Builder.b(builder);
        mShouldFetchCustomDescription = Builder.c(builder);
        mCustomDescription = Builder.d(builder);
    }


    public StoryGroup(String s)
    {
        mStorySnapLogbooks = new ArrayList();
        mActionState = ActionState.READY;
        mSaveProgress = 0;
        mChangedListener = null;
        mStoryId = s;
    }

    public StoryGroup(String s, String s1)
    {
        mStorySnapLogbooks = new ArrayList();
        mActionState = ActionState.READY;
        mSaveProgress = 0;
        mChangedListener = null;
        mStoryId = s;
        mDisplayName = s1;
    }

    private void a()
    {
        if (mChangedListener != null)
        {
            mChangedListener.a(this);
        }
    }

    public List a(boolean flag)
    {
        if (flag)
        {
            List list = k();
            List list1 = l();
            List list2 = i();
            mAllStorySnapLogbooks = new ArrayList(list.size() + list1.size() + list2.size());
            mAllStorySnapLogbooks.addAll(SnapUtils.a(list, mStoryId));
            mAllStorySnapLogbooks.addAll(SnapUtils.a(list1, mStoryId));
            mAllStorySnapLogbooks.addAll(i());
        }
        return mAllStorySnapLogbooks;
    }

    public void a(int i1)
    {
        if (i1 < 0 || i1 > 100)
        {
            throw new IllegalArgumentException("Save progress out of range.");
        } else
        {
            mSaveProgress = i1;
            a();
            return;
        }
    }

    public void a(ActionState actionstate)
    {
        mActionState = actionstate;
        a();
    }

    public void a(StoryGroupChangedListener storygroupchangedlistener)
    {
        mChangedListener = storygroupchangedlistener;
    }

    public void a(String s)
    {
        mCustomDescription = s;
        a();
    }

    public void b(String s)
    {
        mCustomTitle = s;
        a();
    }

    public String c()
    {
        return mStoryId;
    }

    public String d()
    {
        return mDisplayName;
    }

    public String e()
    {
        if (mDisplayName == null || mDisplayName.equals(""))
        {
            return mStoryId;
        } else
        {
            return mDisplayName;
        }
    }

    public boolean f()
    {
        return mShouldFetchCustomDescription;
    }

    public String g()
    {
        return mCustomDescription;
    }

    public String h()
    {
        return mCustomTitle;
    }

    public List i()
    {
        for (Iterator iterator = mStorySnapLogbooks.iterator(); iterator.hasNext(); ((StorySnapLogbook)iterator.next()).a(mStoryId)) { }
        return mStorySnapLogbooks;
    }

    public int j()
    {
        return mStorySnapLogbooks.size();
    }

    public List k()
    {
        return new ArrayList(SnapWomb.a().a(mStoryId).values());
    }

    public List l()
    {
        return new ArrayList(SnapWomb.a().b(mStoryId).values());
    }

    public int m()
    {
        SnapWomb snapwomb = SnapWomb.a();
        return mStorySnapLogbooks.size() + snapwomb.a(mStoryId).size() + snapwomb.b(mStoryId).size();
    }

    public ActionState n()
    {
        return mActionState;
    }

    public int o()
    {
        return mSaveProgress;
    }
}
