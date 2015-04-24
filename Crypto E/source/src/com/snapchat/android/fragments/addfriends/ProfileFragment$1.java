// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.bitmap.BitmapRecycling;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.threading.ThreadUtils;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            ProfileFragment

class a
    implements Runnable
{

    final ProfileFragment a;

    public void run()
    {
        Bitmap bitmap = Caches.j.a(a.getActivity(), "snaptag", null);
        ThreadUtils.a(new Runnable(ProfileFragment.a(a, bitmap), bitmap) {

            final ProfileFragment.SnapTagStatus a;
            final Bitmap b;
            final ProfileFragment._cls1 c;

            public void run()
            {
                ProfileFragment._cls2.a[a.ordinal()];
                JVM INSTR tableswitch 1 3: default 36
            //                           1 51
            //                           2 108
            //                           3 191;
                   goto _L1 _L2 _L3 _L4
_L1:
                ProfileFragment.c(c.a).setVisibility(0);
                return;
_L2:
                if (!TextUtils.isEmpty(UserPrefs.aE()))
                {
                    Timber.c("ProfileFragment", "Downloading snap tag...", new Object[0]);
                    SnapchatServiceManager.a().f(c.a.getActivity(), UserPrefs.aE());
                } else
                {
                    Timber.c("ProfileFragment", "The image ID for snap tag is empty. Cannot download the snap tag.", new Object[0]);
                }
                continue; /* Loop/switch isn't completed */
_L3:
                Timber.c("ProfileFragment", "Display a new snap tag image", new Object[0]);
                ProfileFragment.b(c.a).a(ProfileFragment.a(c.a));
                ProfileFragment.b(c.a, b);
                ProfileFragment.a(c.a).setImageBitmap(b);
                ProfileFragment.a(c.a).setBackgroundColor(0);
                continue; /* Loop/switch isn't completed */
_L4:
                Timber.c("ProfileFragment", "No need to set the same snap tag image", new Object[0]);
                if (true) goto _L1; else goto _L5
_L5:
            }

            
            {
                c = ProfileFragment._cls1.this;
                a = snaptagstatus;
                b = bitmap;
                super();
            }
        });
    }

    _cls1.b(ProfileFragment profilefragment)
    {
        a = profilefragment;
        super();
    }
}
