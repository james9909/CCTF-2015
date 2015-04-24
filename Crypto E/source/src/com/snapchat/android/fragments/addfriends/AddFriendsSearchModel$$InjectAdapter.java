// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsSearchModel

public final class  extends Binding
    implements Provider
{

    public AddFriendsSearchModel a()
    {
        return new AddFriendsSearchModel();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.fragments.addfriends.AddFriendsSearchModel", "members/com.snapchat.android.fragments.addfriends.AddFriendsSearchModel", true, com/snapchat/android/fragments/addfriends/AddFriendsSearchModel);
    }
}
