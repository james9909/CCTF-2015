// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import com.snapchat.android.cash.SendingCashManager;
import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.model.chat:
//            ChatConversation

public final class  extends Binding
    implements MembersInjector
{

    private Binding mGsonWrapper;
    private Binding mSendingCashManager;
    private Binding mSlightlySecurePreferences;

    public void a(ChatConversation chatconversation)
    {
        chatconversation.mSlightlySecurePreferences = (SlightlySecurePreferences)mSlightlySecurePreferences.get();
        chatconversation.mSendingCashManager = (SendingCashManager)mSendingCashManager.get();
        chatconversation.mGsonWrapper = (GsonWrapper)mGsonWrapper.get();
    }

    public void a(Linker linker)
    {
        mSlightlySecurePreferences = linker.a("com.snapchat.android.util.crypto.SlightlySecurePreferences", com/snapchat/android/model/chat/ChatConversation, getClass().getClassLoader());
        mSendingCashManager = linker.a("com.snapchat.android.cash.SendingCashManager", com/snapchat/android/model/chat/ChatConversation, getClass().getClassLoader());
        mGsonWrapper = linker.a("com.snapchat.android.util.GsonWrapper", com/snapchat/android/model/chat/ChatConversation, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((ChatConversation)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mSlightlySecurePreferences);
        set1.add(mSendingCashManager);
        set1.add(mGsonWrapper);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.model.chat.ChatConversation", false, com/snapchat/android/model/chat/ChatConversation);
    }
}
