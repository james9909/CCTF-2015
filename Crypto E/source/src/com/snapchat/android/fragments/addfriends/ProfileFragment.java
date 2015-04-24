// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.Timber;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.settings.SettingsFragment;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.ui.EditTextDialog;
import com.snapchat.android.util.EditNameDialog;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.NumberFormatUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.bitmap.BitmapRecycling;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.FriendsWhoAddedMeUpdatedEvent;
import com.snapchat.android.util.eventbus.ProfileImageCacheUpdatedEvent;
import com.snapchat.android.util.eventbus.ProfileViewFlipEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.eventbus.UserLoadedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddedMeFragment, AddFriendsMenuFragment, FriendsContactsToggleFragment, SnapTagHelpFragment

public class ProfileFragment extends SnapchatFragment
    implements android.content.SharedPreferences.OnSharedPreferenceChangeListener, android.support.v4.app.LoaderManager.LoaderCallbacks, android.view.View.OnClickListener
{
    static final class SnapTagStatus extends Enum
    {

        public static final SnapTagStatus a;
        public static final SnapTagStatus b;
        public static final SnapTagStatus c;
        private static final SnapTagStatus d[];

        public static SnapTagStatus valueOf(String s1)
        {
            return (SnapTagStatus)Enum.valueOf(com/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus, s1);
        }

        public static SnapTagStatus[] values()
        {
            return (SnapTagStatus[])d.clone();
        }

        static 
        {
            a = new SnapTagStatus("NO_BITMAP_AVAILABLE", 0);
            b = new SnapTagStatus("NEW_BITMAP_LOADED", 1);
            c = new SnapTagStatus("DUPLICATED_BITMAP_LOADED", 2);
            SnapTagStatus asnaptagstatus[] = new SnapTagStatus[3];
            asnaptagstatus[0] = a;
            asnaptagstatus[1] = b;
            asnaptagstatus[2] = c;
            d = asnaptagstatus;
        }

        private SnapTagStatus(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private static final com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext p;
    private TextView a;
    private TextView b;
    private View c;
    private TextView d;
    private View e;
    private View f;
    private ImageView g;
    private View h;
    private View i;
    private View j;
    private ImageView k;
    private Bitmap l;
    private ImageView m;
    private ColorStateList n;
    private ColorStateList o;
    private final UserPrefs q;
    private final BitmapRecycling r;
    private final ExecutorService s;
    private final Provider t;

    public ProfileFragment()
    {
        this(UserPrefs.a(), new BitmapRecycling(), ScExecutors.c, User.UNSAFE_USER_PROVIDER);
    }

    ProfileFragment(UserPrefs userprefs, BitmapRecycling bitmaprecycling, ExecutorService executorservice, Provider provider)
    {
        q = userprefs;
        r = bitmaprecycling;
        s = executorservice;
        t = provider;
    }

    static ImageView a(ProfileFragment profilefragment)
    {
        return profilefragment.k;
    }

    private SnapTagStatus a(Bitmap bitmap)
    {
        ThreadUtils.b();
        if (bitmap == null)
        {
            return SnapTagStatus.a;
        }
        if (b(bitmap))
        {
            return SnapTagStatus.b;
        } else
        {
            return SnapTagStatus.c;
        }
    }

    static SnapTagStatus a(ProfileFragment profilefragment, Bitmap bitmap)
    {
        return profilefragment.a(bitmap);
    }

    static Bitmap b(ProfileFragment profilefragment, Bitmap bitmap)
    {
        profilefragment.l = bitmap;
        return bitmap;
    }

    static BitmapRecycling b(ProfileFragment profilefragment)
    {
        return profilefragment.r;
    }

    private boolean b(Bitmap bitmap)
    {
        ThreadUtils.b();
        android.graphics.drawable.Drawable drawable = k.getDrawable();
        if (drawable instanceof BitmapDrawable)
        {
            return !bitmap.sameAs(((BitmapDrawable)drawable).getBitmap());
        } else
        {
            return true;
        }
    }

    static View c(ProfileFragment profilefragment)
    {
        return profilefragment.j;
    }

    private void h()
    {
        String s1 = UserPrefs.r();
        String s2 = UserPrefs.k();
        int i1 = UserPrefs.x();
        String s3 = NumberFormatUtils.b(i1);
        if (TextUtils.isEmpty(s1))
        {
            a.setText(s2);
            if (i1 > 0)
            {
                b.setVisibility(0);
                b.setText(getResources().getString(0x7f0c002e, new Object[] {
                    s3
                }));
                return;
            } else
            {
                b.setVisibility(8);
                return;
            }
        }
        a.setText(s1);
        b.setVisibility(0);
        if (i1 > 0)
        {
            String s4 = getResources().getString(0x7f0c0174, new Object[] {
                s2, s3
            });
            b.setText(s4);
            return;
        } else
        {
            b.setText(s2);
            return;
        }
    }

    private void i()
    {
        User user = (User)t.get();
        int i1;
        boolean flag;
        TextView textview;
        ColorStateList colorstatelist;
        if (user == null)
        {
            i1 = 0;
        } else
        {
            i1 = user.d();
        }
        if (i1 == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        textview = d;
        if (flag)
        {
            colorstatelist = n;
        } else
        {
            colorstatelist = o;
        }
        textview.setTextColor(colorstatelist);
        m.setImageLevel(i1);
    }

    private String k()
    {
        if (!TextUtils.isEmpty(UserPrefs.r()))
        {
            return UserPrefs.r();
        }
        if (!TextUtils.isEmpty(UserPrefs.t()))
        {
            return UserPrefs.t();
        } else
        {
            return UserPrefs.k();
        }
    }

    private void l()
    {
        EditNameDialog editnamedialog = EditNameDialog.a(getActivity(), new Friend(UserPrefs.k(), k())).a(p);
        editnamedialog.setMessage(LocalizationUtils.a(0x7f0c00da, new Object[0]));
        editnamedialog.show();
        editnamedialog.getWindow().setSoftInputMode(32);
    }

    private void n()
    {
        if (q.aI())
        {
            g.setImageResource(0x7f02019f);
            return;
        } else
        {
            g.setImageResource(0x7f0201a0);
            return;
        }
    }

    protected String a(Cursor cursor)
    {
        if (cursor.moveToFirst())
        {
            int i1 = cursor.getInt(cursor.getColumnIndex("display_name_source"));
            if (i1 == 40 || i1 == 35)
            {
                return cursor.getString(cursor.getColumnIndex("display_name"));
            }
        }
        return null;
    }

    public void a(Loader loader, Cursor cursor)
    {
        loader.getId();
        JVM INSTR tableswitch 1200 1200: default 24
    //                   1200 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        if (cursor != null)
        {
            UserPrefs.g(a(cursor));
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void b()
    {
        if ((User)t.get() == null)
        {
            return;
        } else
        {
            s.execute(new Runnable() {

                final ProfileFragment a;

                public void run()
                {
                    Bitmap bitmap = Caches.j.a(a.getActivity(), "snaptag", null);
                    ThreadUtils.a(new Runnable(this, ProfileFragment.a(a, bitmap), bitmap) {

                        final SnapTagStatus a;
                        final Bitmap b;
                        final _cls1 c;

                        public void run()
                        {
                            static class _cls2
                            {

                                static final int a[];

                                static 
                                {
                                    a = new int[SnapTagStatus.values().length];
                                    try
                                    {
                                        a[SnapTagStatus.a.ordinal()] = 1;
                                    }
                                    catch (NoSuchFieldError nosuchfielderror) { }
                                    try
                                    {
                                        a[SnapTagStatus.b.ordinal()] = 2;
                                    }
                                    catch (NoSuchFieldError nosuchfielderror1) { }
                                    try
                                    {
                                        a[SnapTagStatus.c.ordinal()] = 3;
                                    }
                                    catch (NoSuchFieldError nosuchfielderror2)
                                    {
                                        return;
                                    }
                                }
                            }

                            _cls2.a[a.ordinal()];
                            JVM INSTR tableswitch 1 3: default 36
                        //                                       1 51
                        //                                       2 108
                        //                                       3 191;
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
                c = _pcls1;
                a = snaptagstatus;
                b = bitmap;
                super();
            }
                    });
                }

            
            {
                a = ProfileFragment.this;
                super();
            }
            });
            return;
        }
    }

    protected boolean c_()
    {
        return super.isAdded();
    }

    protected void d()
    {
        h();
        i();
        b();
        n();
    }

    public void onClick(View view)
    {
        if (view == c)
        {
            BusProvider.a().a(new StartFragmentEvent(new AddedMeFragment()));
        } else
        {
            if (view == e)
            {
                BusProvider.a().a(new StartFragmentEvent(new AddFriendsMenuFragment()));
                return;
            }
            if (view == f)
            {
                BusProvider.a().a(new StartFragmentEvent(new FriendsContactsToggleFragment()));
                return;
            }
            if (view == g)
            {
                if (q.aI())
                {
                    q.e(System.currentTimeMillis());
                    q.B(false);
                }
                BusProvider.a().a(new StartFragmentEvent(new SettingsFragment(), com/snapchat/android/fragments/settings/SettingsFragment.getSimpleName(), null));
                return;
            }
            if (view == h)
            {
                BusProvider.a().a(new StartFragmentEvent(new SnapTagHelpFragment()));
                return;
            }
            if (view == i)
            {
                BusProvider.a().a(new ProfileViewFlipEvent(1));
                return;
            }
            if (view == b || view == a)
            {
                l();
                return;
            }
        }
    }

    public Loader onCreateLoader(int i1, Bundle bundle)
    {
        Uri uri;
        switch (i1)
        {
        default:
            return null;

        case 1200: 
            uri = Uri.withAppendedPath(android.provider.ContactsContract.Profile.CONTENT_URI, "data");
            break;
        }
        String as[] = {
            "display_name", "display_name_source"
        };
        return new CursorLoader(getActivity(), uri, as, null, null, null);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        TimeLogger.a();
        x = layoutinflater.inflate(0x7f04006e, viewgroup, false);
        b = (TextView)d(0x7f0a006a);
        b.setOnClickListener(this);
        a = (TextView)d(0x7f0a0255);
        a.setOnClickListener(this);
        d = (TextView)d(0x7f0a0259);
        c = d(0x7f0a0257);
        c.setOnClickListener(this);
        e = d(0x7f0a025a);
        e.setOnClickListener(this);
        f = d(0x7f0a025b);
        f.setOnClickListener(this);
        g = (ImageView)d(0x7f0a0256);
        g.setOnClickListener(this);
        n();
        h = d(0x7f0a0251);
        h.setOnClickListener(this);
        i = d(0x7f0a000a);
        i.setOnClickListener(this);
        j = d(0x7f0a0252);
        j.setVisibility(4);
        k = (ImageView)d(0x7f0a0254);
        m = (ImageView)d(0x7f0a0258);
        Resources resources = getResources();
        n = resources.getColorStateList(0x7f08005f);
        o = resources.getColorStateList(0x7f08005e);
        getLoaderManager().initLoader(1200, null, this);
        return x;
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        r.a(k);
    }

    public void onFriendsWhoAddedMeUpdatedEvent(FriendsWhoAddedMeUpdatedEvent friendswhoaddedmeupdatedevent)
    {
        d();
    }

    public void onLoadFinished(Loader loader, Object obj)
    {
        a(loader, (Cursor)obj);
    }

    public void onLoaderReset(Loader loader)
    {
    }

    public void onProfileImageCacheUpdatedEvent(ProfileImageCacheUpdatedEvent profileimagecacheupdatedevent)
    {
        if (TextUtils.equals(profileimagecacheupdatedevent.a(), "snaptag"))
        {
            b();
        }
    }

    public void onResume()
    {
        TimeLogger.a();
        super.onResume();
        d();
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s1)
    {
        while (!c_() || !TextUtils.equals(SharedPreferenceKey.d.a(), s1) && !TextUtils.equals(SharedPreferenceKey.e.a(), s1) && !TextUtils.equals(SharedPreferenceKey.t.a(), s1) && !TextUtils.equals(SharedPreferenceKey.bl.a(), s1)) 
        {
            return;
        }
        d();
    }

    public void onStart()
    {
        super.onStart();
        UserPrefs.a(this);
    }

    public void onStop()
    {
        super.onStop();
        UserPrefs.b(this);
    }

    public void onUserLoadedEvent(UserLoadedEvent userloadedevent)
    {
        d();
    }

    static 
    {
        p = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.PROFILE_MAIN_PAGE;
    }
}
