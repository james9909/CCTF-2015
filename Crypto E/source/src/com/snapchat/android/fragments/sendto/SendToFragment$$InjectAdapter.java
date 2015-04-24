// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import com.snapchat.android.database.HasSeenPostToOurStoryDialogLog;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToFragment

public final class I extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public SendToFragment a()
    {
        SendToFragment sendtofragment = new SendToFragment();
        a(sendtofragment);
        return sendtofragment;
    }

    public void a(SendToFragment sendtofragment)
    {
        sendtofragment.a = (HasSeenPostToOurStoryDialogLog)a.get();
        b.a(sendtofragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.database.HasSeenPostToOurStoryDialogLog", com/snapchat/android/fragments/sendto/SendToFragment, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.util.fragment.SnapchatFragment", com/snapchat/android/fragments/sendto/SendToFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SendToFragment)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
    }

    public Object get()
    {
        return a();
    }

    public I()
    {
        super("com.snapchat.android.fragments.sendto.SendToFragment", "members/com.snapchat.android.fragments.sendto.SendToFragment", false, com/snapchat/android/fragments/sendto/SendToFragment);
    }
}
