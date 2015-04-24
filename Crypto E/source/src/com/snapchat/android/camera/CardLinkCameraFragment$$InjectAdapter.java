// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import com.snapchat.android.cash.CardBlockerManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.camera:
//            CardLinkCameraFragment

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public CardLinkCameraFragment a()
    {
        CardLinkCameraFragment cardlinkcamerafragment = new CardLinkCameraFragment();
        a(cardlinkcamerafragment);
        return cardlinkcamerafragment;
    }

    public void a(CardLinkCameraFragment cardlinkcamerafragment)
    {
        cardlinkcamerafragment.l = (CardBlockerManager)a.get();
        b.a(cardlinkcamerafragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.cash.CardBlockerManager", com/snapchat/android/camera/CardLinkCameraFragment, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.camera.BaseCameraFragment", com/snapchat/android/camera/CardLinkCameraFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((CardLinkCameraFragment)obj);
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

    public ()
    {
        super("com.snapchat.android.camera.CardLinkCameraFragment", "members/com.snapchat.android.camera.CardLinkCameraFragment", false, com/snapchat/android/camera/CardLinkCameraFragment);
    }
}
