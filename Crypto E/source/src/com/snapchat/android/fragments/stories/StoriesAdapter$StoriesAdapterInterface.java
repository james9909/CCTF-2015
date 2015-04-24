// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.text.Editable;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.SponsoredStoryCollection;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, StoriesListItem

public static interface 
{

    public abstract void a(StoriesListItem storieslistitem);

    public abstract void a(SponsoredStoryCollection sponsoredstorycollection);

    public abstract boolean a(Friend friend);

    public abstract boolean a(String s);

    public abstract Editable b();

    public abstract void c();

    public abstract com.snapchat.android.analytics.terface d();

    public abstract String g();

    public abstract boolean h();
}
