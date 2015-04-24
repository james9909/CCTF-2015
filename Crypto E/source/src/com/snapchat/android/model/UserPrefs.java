// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.UpdateUserTask;
import com.snapchat.android.api2.cash.ICashCustomerProfile;
import com.snapchat.android.api2.cash.square.data.CardBrand;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.database.ClientProperty;
import com.snapchat.android.database.ClientServerPreferenceKeyMap;
import com.snapchat.android.database.OnboardingTooltip;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.server.FeatureSettings;
import com.snapchat.android.model.server.UpdatesResponse;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CustomerProfileUpdatedEvent;
import com.squareup.otto.Bus;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.model:
//            StudySettings

public class UserPrefs
{

    public static final int DEFAULT_DELAY_RELEASE_TIME = 600;
    public static final int DEFAULT_NUM_BEST_FRIENDS = 3;
    private static final String TAG = "UserPrefs";
    private static Context sContext = null;
    private static UserPrefs sInstance = new UserPrefs();
    private static SharedPreferences sSharedPreferences;

    public UserPrefs()
    {
    }

    public static void A(boolean flag)
    {
        if (!aw() && flag)
        {
            (new UpdateUserTask(OnboardingTooltip.g)).g();
        }
        aT().putBoolean(SharedPreferenceKey.bi.a(), flag).apply();
    }

    public static boolean A()
    {
        return aS().getBoolean(SharedPreferenceKey.M.a(), false);
    }

    public static boolean B()
    {
        return aS().getBoolean(SharedPreferenceKey.N.a(), false);
    }

    public static boolean C()
    {
        return aS().getBoolean(SharedPreferenceKey.O.a(), false);
    }

    public static boolean D()
    {
        return aS().getBoolean(SharedPreferenceKey.Q.a(), false);
    }

    public static void E(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.aV.a(), flag).apply();
    }

    public static boolean E()
    {
        return aS().getBoolean(SharedPreferenceKey.aP.a(), false);
    }

    public static void F()
    {
        String s1 = String.valueOf(true);
        (new UpdateUserTask()).a(ClientProperty.a, s1).g();
        aT().putBoolean(SharedPreferenceKey.aP.a(), true).apply();
    }

    public static boolean G()
    {
        return aS().getBoolean(SharedPreferenceKey.aQ.a(), false);
    }

    public static void H()
    {
        String s1 = String.valueOf(true);
        (new UpdateUserTask()).a(ClientProperty.b, s1).g();
        aT().putBoolean(SharedPreferenceKey.aQ.a(), true).apply();
    }

    public static boolean I()
    {
        return aS().getBoolean(SharedPreferenceKey.K.a(), false);
    }

    public static boolean J()
    {
        return aS().getBoolean(SharedPreferenceKey.v.a(), false);
    }

    public static boolean K()
    {
        return aS().getBoolean(SharedPreferenceKey.V.a(), false);
    }

    public static boolean L()
    {
        return aS().getBoolean(SharedPreferenceKey.U.a(), false);
    }

    public static boolean M()
    {
        return aS().getBoolean(SharedPreferenceKey.W.a(), false);
    }

    public static long N()
    {
        return aS().getLong(SharedPreferenceKey.Y.a(), 0L);
    }

    public static int O()
    {
        return aS().getInt(SharedPreferenceKey.X.a(), 3);
    }

    public static boolean P()
    {
        return aS().getBoolean(SharedPreferenceKey.A.a(), false);
    }

    public static boolean Q()
    {
        return aS().getBoolean(SharedPreferenceKey.u.a(), false);
    }

    public static boolean R()
    {
        return aS().getBoolean(SharedPreferenceKey.Z.a(), false);
    }

    public static void S()
    {
        android.content.SharedPreferences.Editor editor = aT();
        editor.putBoolean(SharedPreferenceKey.aG.a(), false);
        editor.putString(SharedPreferenceKey.aI.a(), null);
        editor.putString(SharedPreferenceKey.aH.a(), null);
        editor.putBoolean(SharedPreferenceKey.aN.a(), false);
        editor.putBoolean(SharedPreferenceKey.aJ.a(), false);
        editor.putBoolean(SharedPreferenceKey.aK.a(), true);
        editor.apply();
        BusProvider.a().a(new CustomerProfileUpdatedEvent());
    }

    public static void T()
    {
        android.content.SharedPreferences.Editor editor = aT();
        editor.putBoolean(SharedPreferenceKey.aG.a(), false);
        editor.putString(SharedPreferenceKey.aI.a(), null);
        editor.putString(SharedPreferenceKey.aH.a(), null);
        editor.apply();
        BusProvider.a().a(new CustomerProfileUpdatedEvent());
    }

    public static void U()
    {
        aT().putBoolean(SharedPreferenceKey.aK.a(), true).apply();
    }

    public static void V()
    {
        aT().putBoolean(SharedPreferenceKey.aJ.a(), true).apply();
    }

    public static boolean W()
    {
        return aS().getBoolean(SharedPreferenceKey.aC.a(), true);
    }

    public static String X()
    {
        return aS().getString(SharedPreferenceKey.aD.a(), null);
    }

    public static String Y()
    {
        return aS().getString(SharedPreferenceKey.aE.a(), null);
    }

    public static com.snapchat.android.api2.cash.ScCashResponsePayload.Status Z()
    {
        String s1 = aS().getString(SharedPreferenceKey.aF.a(), null);
        if (s1 == null)
        {
            return com.snapchat.android.api2.cash.ScCashResponsePayload.Status.OK;
        } else
        {
            return com.snapchat.android.api2.cash.ScCashResponsePayload.Status.valueOf(s1);
        }
    }

    public static long a(Context context)
    {
        return aS().getLong(SharedPreferenceKey.aa.a(), 0L);
    }

    public static UserPrefs a()
    {
        return sInstance;
    }

    public static void a(int i1)
    {
        aT().putInt(SharedPreferenceKey.j.a(), i1).apply();
    }

    public static void a(Context context, long l1)
    {
        aT().putLong(SharedPreferenceKey.aa.a(), l1).apply();
    }

    public static void a(android.content.SharedPreferences.OnSharedPreferenceChangeListener onsharedpreferencechangelistener)
    {
        aS().registerOnSharedPreferenceChangeListener(onsharedpreferencechangelistener);
    }

    public static void a(ICashCustomerProfile icashcustomerprofile)
    {
        android.content.SharedPreferences.Editor editor = aT();
        editor.putBoolean(SharedPreferenceKey.aG.a(), icashcustomerprofile.c());
        String s1 = SharedPreferenceKey.aI.a();
        String s2;
        if (icashcustomerprofile.f() != null)
        {
            s2 = icashcustomerprofile.f().name();
        } else
        {
            s2 = null;
        }
        editor.putString(s1, s2);
        editor.putString(SharedPreferenceKey.aH.a(), icashcustomerprofile.g());
        editor.putBoolean(SharedPreferenceKey.aN.a(), icashcustomerprofile.d());
        editor.putBoolean(SharedPreferenceKey.aJ.a(), icashcustomerprofile.e());
        editor.putBoolean(SharedPreferenceKey.aK.a(), false);
        editor.apply();
        BusProvider.a().a(new CustomerProfileUpdatedEvent());
    }

    public static void a(SharedPreferenceKey sharedpreferencekey)
    {
        aT().remove(sharedpreferencekey.a()).apply();
    }

    public static void a(FeatureSettings featuresettings)
    {
        if (featuresettings == null)
        {
            return;
        } else
        {
            aT().putBoolean(SharedPreferenceKey.U.a(), featuresettings.smart_filters).putBoolean(SharedPreferenceKey.V.a(), featuresettings.replay_snaps).putBoolean(SharedPreferenceKey.W.a(), featuresettings.front_facing_flash).apply();
            return;
        }
    }

    public static void a(UpdatesResponse updatesresponse)
    {
        aT().putString(SharedPreferenceKey.i.a(), updatesresponse.auth_token).putString(SharedPreferenceKey.f.a(), updatesresponse.email).putBoolean(SharedPreferenceKey.n.a(), updatesresponse.logged).apply();
        if (updatesresponse.client_properties != null)
        {
            a(updatesresponse.client_properties);
        }
    }

    public static void a(String s1)
    {
        aT().putString(SharedPreferenceKey.g.a(), s1).apply();
        if (TextUtils.isEmpty(s1))
        {
            k(false);
        }
    }

    public static void a(List list)
    {
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            OnboardingTooltip onboardingtooltip = OnboardingTooltip.a((String)iterator.next());
            if (onboardingtooltip != OnboardingTooltip.h)
            {
                aT().putBoolean(onboardingtooltip.a(), true).apply();
            }
        } while (true);
    }

    public static void a(Map map)
    {
        SharedPreferences sharedpreferences = aS();
        UpdateUserTask updateusertask = null;
        Iterator iterator = ClientServerPreferenceKeyMap.a.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s1 = (String)entry.getValue();
            String s2 = (String)ClientServerPreferenceKeyMap.b.get(s1);
            if (sharedpreferences.contains((String)entry.getKey()))
            {
                String s3 = String.valueOf(sharedpreferences.getBoolean((String)entry.getKey(), false));
                if (!map.containsKey(s1.toLowerCase()) || !TextUtils.equals((CharSequence)map.get(s1.toLowerCase()), s3))
                {
                    boolean flag;
                    UpdateUserTask updateusertask1;
                    if (updateusertask == null)
                    {
                        updateusertask1 = new UpdateUserTask();
                    } else
                    {
                        updateusertask1 = updateusertask;
                    }
                    updateusertask1.a(ClientProperty.valueOf(s1), s3);
                    map.put(s1.toLowerCase(), s3);
                    updateusertask = updateusertask1;
                }
            }
            if (map.containsKey(s1.toLowerCase()))
            {
                flag = TextUtils.equals((CharSequence)map.get(s1.toLowerCase()), String.valueOf(true));
                aT().putBoolean(s2, flag).apply();
            }
        } while (true);
        if (updateusertask != null)
        {
            updateusertask.g();
        }
    }

    public static void a(UUID uuid)
    {
        aT().putString(SharedPreferenceKey.bw.a(), uuid.toString()).apply();
    }

    public static void a(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.G.a(), flag).apply();
    }

    public static void a(boolean flag, int i1)
    {
        if (flag)
        {
            aT().putInt(SharedPreferenceKey.ac.a(), i1).apply();
            return;
        } else
        {
            aT().putInt(SharedPreferenceKey.ab.a(), i1).apply();
            return;
        }
    }

    public static void a(boolean flag, String s1)
    {
        aT().putBoolean(SharedPreferenceKey.n.a(), flag).putString(SharedPreferenceKey.d.a(), s1).apply();
    }

    public static void a(boolean flag, String s1, String s2, String s3)
    {
        android.content.SharedPreferences.Editor editor = aT();
        editor.putBoolean(SharedPreferenceKey.aC.a(), flag);
        editor.putString(SharedPreferenceKey.aD.a(), s1);
        editor.putString(SharedPreferenceKey.aE.a(), s2);
        editor.putString(SharedPreferenceKey.aF.a(), s3);
        editor.apply();
    }

    public static String aE()
    {
        return aS().getString(SharedPreferenceKey.bj.a(), null);
    }

    public static String aF()
    {
        return aS().getString(SharedPreferenceKey.aU.a(), com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled.a.name());
    }

    public static String aG()
    {
        return aS().getString(SharedPreferenceKey.aT.a(), "");
    }

    public static String aH()
    {
        return aS().getString(SharedPreferenceKey.ba.a(), "{}");
    }

    public static String aM()
    {
        return aS().getString(SharedPreferenceKey.bv.a(), null);
    }

    public static int aO()
    {
        return aS().getInt(SharedPreferenceKey.as.a(), 600);
    }

    public static UUID aP()
    {
        String s1 = aS().getString(SharedPreferenceKey.bw.a(), null);
        if (s1 == null)
        {
            return null;
        } else
        {
            return UUID.fromString(s1);
        }
    }

    public static void aQ()
    {
        SharedPreferenceKey.a(aS());
        sContext = null;
        sSharedPreferences = null;
    }

    public static boolean aR()
    {
        return aS().getBoolean(SharedPreferenceKey.aV.a(), true);
    }

    private static SharedPreferences aS()
    {
        if (sContext == null)
        {
            sContext = SnapchatApplication.e();
        }
        if (sSharedPreferences == null)
        {
            sSharedPreferences = PreferenceManager.getDefaultSharedPreferences(sContext);
        }
        return sSharedPreferences;
    }

    private static android.content.SharedPreferences.Editor aT()
    {
        return aS().edit();
    }

    public static boolean aa()
    {
        return aS().getBoolean(SharedPreferenceKey.aG.a(), false);
    }

    public static String ab()
    {
        return aS().getString(SharedPreferenceKey.aI.a(), null);
    }

    public static String ac()
    {
        return aS().getString(SharedPreferenceKey.aH.a(), null);
    }

    public static boolean ad()
    {
        return aS().getBoolean(SharedPreferenceKey.aK.a(), true);
    }

    public static boolean ae()
    {
        return aS().getBoolean(SharedPreferenceKey.aJ.a(), false);
    }

    public static boolean af()
    {
        return aS().getBoolean(SharedPreferenceKey.aN.a(), false);
    }

    public static boolean ag()
    {
        return aS().getBoolean(SharedPreferenceKey.aL.a(), true);
    }

    public static boolean ah()
    {
        return aS().getBoolean(SharedPreferenceKey.aM.a(), true);
    }

    public static String ai()
    {
        return aS().getString(SharedPreferenceKey.I.a(), "");
    }

    public static String aj()
    {
        return aS().getString(SharedPreferenceKey.J.a(), "");
    }

    public static void ak()
    {
        m("{}");
    }

    public static void al()
    {
        l("");
    }

    public static String am()
    {
        return aS().getString(SharedPreferenceKey.B.a(), "{}");
    }

    public static boolean an()
    {
        return aS().getBoolean(SharedPreferenceKey.aO.a(), false);
    }

    public static boolean ao()
    {
        return aS().getBoolean(SharedPreferenceKey.aX.a(), false);
    }

    public static boolean ap()
    {
        return aS().getBoolean(SharedPreferenceKey.aY.a(), true);
    }

    public static boolean aq()
    {
        return aS().getBoolean(SharedPreferenceKey.aZ.a(), false);
    }

    public static boolean au()
    {
        return aS().getBoolean(SharedPreferenceKey.bg.a(), false);
    }

    public static boolean av()
    {
        return aS().getBoolean(SharedPreferenceKey.bh.a(), false);
    }

    public static boolean aw()
    {
        return aS().getBoolean(SharedPreferenceKey.bi.a(), false);
    }

    public static String b()
    {
        return aS().getString(SharedPreferenceKey.q.a(), null);
    }

    public static void b(int i1)
    {
        aT().putInt(SharedPreferenceKey.k.a(), i1).apply();
    }

    public static void b(long l1)
    {
        aT().putLong(SharedPreferenceKey.Y.a(), l1).apply();
    }

    public static void b(android.content.SharedPreferences.OnSharedPreferenceChangeListener onsharedpreferencechangelistener)
    {
        aS().unregisterOnSharedPreferenceChangeListener(onsharedpreferencechangelistener);
    }

    public static void b(UpdatesResponse updatesresponse)
    {
        int i1;
        UserPrefs userprefs;
        if (updatesresponse.story_privacy == null)
        {
            i1 = com.snapchat.android.fragments.settings.SettingsFragment.PrivacyOptions.valueOf("FRIENDS").ordinal();
        } else
        {
            i1 = com.snapchat.android.fragments.settings.SettingsFragment.PrivacyOptions.valueOf(updatesresponse.story_privacy).ordinal();
        }
        aT().putString(SharedPreferenceKey.d.a(), updatesresponse.username).putString(SharedPreferenceKey.i.a(), updatesresponse.auth_token).putString(SharedPreferenceKey.f.a(), updatesresponse.email).putBoolean(SharedPreferenceKey.n.a(), updatesresponse.logged).putString(SharedPreferenceKey.m.a(), updatesresponse.device_token).putInt(SharedPreferenceKey.j.a(), updatesresponse.received).putInt(SharedPreferenceKey.k.a(), updatesresponse.sent).putInt(SharedPreferenceKey.l.a(), updatesresponse.score).putString(SharedPreferenceKey.p.a(), updatesresponse.mobile_verification_key).putString(SharedPreferenceKey.q.a(), updatesresponse.snapchat_phone_number).putInt(SharedPreferenceKey.r.a(), updatesresponse.snap_p).putInt(SharedPreferenceKey.s.a(), i1).putBoolean(SharedPreferenceKey.u.a(), updatesresponse.searchable_by_phone_number).putInt(SharedPreferenceKey.X.a(), updatesresponse.number_of_best_friends).putLong(SharedPreferenceKey.Y.a(), updatesresponse.last_address_book_updated_date).apply();
        a(updatesresponse.mobile);
        TranscodingPreferencesWrapper.a().a(updatesresponse.enable_video_transcoding_android);
        userprefs = a();
        d(updatesresponse.birthday);
        x(updatesresponse.enable_save_story_to_gallery);
        E(updatesresponse.video_filters_enabled);
        if (updatesresponse.added_friends_timestamp > userprefs.j())
        {
            userprefs.a(updatesresponse.added_friends_timestamp);
        }
        a(updatesresponse.feature_settings);
        n(StudySettings.a().a(updatesresponse.study_settings));
        if (updatesresponse.seen_tooltips != null)
        {
            a(updatesresponse.seen_tooltips);
        }
        if (updatesresponse.client_properties != null)
        {
            a(updatesresponse.client_properties);
        }
    }

    public static void b(String s1)
    {
        aT().putString(SharedPreferenceKey.d.a(), s1).apply();
    }

    public static void b(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.o.a(), flag).apply();
    }

    public static String c()
    {
        return aS().getString(SharedPreferenceKey.p.a(), null);
    }

    public static void c(int i1)
    {
        aT().putInt(SharedPreferenceKey.r.a(), i1).apply();
    }

    public static void c(String s1)
    {
        aT().putBoolean(SharedPreferenceKey.G.a(), false).putString(SharedPreferenceKey.d.a(), s1).putBoolean(SharedPreferenceKey.o.a(), true).apply();
    }

    public static void c(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.A.a(), flag).apply();
    }

    public static int d()
    {
        return aS().getInt(SharedPreferenceKey.j.a(), 0);
    }

    public static void d(int i1)
    {
        aT().putInt(SharedPreferenceKey.s.a(), i1).apply();
    }

    public static void d(String s1)
    {
        if (!TextUtils.isEmpty(s1))
        {
            w(s1);
        }
    }

    public static void d(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.P.a(), flag).apply();
    }

    public static int e()
    {
        return aS().getInt(SharedPreferenceKey.k.a(), 0);
    }

    public static void e(int i1)
    {
        aT().putInt(SharedPreferenceKey.l.a(), i1).apply();
    }

    public static void e(String s1)
    {
        aT().putString(SharedPreferenceKey.m.a(), s1).apply();
    }

    public static void e(boolean flag)
    {
        if (!z() && flag)
        {
            (new UpdateUserTask(OnboardingTooltip.a)).g();
        }
        aT().putBoolean(SharedPreferenceKey.L.a(), flag).apply();
    }

    public static String f()
    {
        return aS().getString(SharedPreferenceKey.g.a(), "");
    }

    public static void f(int i1)
    {
        aT().putInt(SharedPreferenceKey.X.a(), i1).apply();
    }

    public static void f(String s1)
    {
        aT().putString(SharedPreferenceKey.e.a(), s1).apply();
    }

    public static void f(boolean flag)
    {
        if (!A() && flag)
        {
            (new UpdateUserTask(OnboardingTooltip.b)).g();
        }
        aT().putBoolean(SharedPreferenceKey.M.a(), flag).apply();
    }

    public static void g(String s1)
    {
        aT().putString(SharedPreferenceKey.C.a(), s1).apply();
    }

    public static void g(boolean flag)
    {
        if (!B() && flag)
        {
            (new UpdateUserTask(OnboardingTooltip.c)).g();
        }
        aT().putBoolean(SharedPreferenceKey.N.a(), flag).apply();
    }

    public static boolean g()
    {
        return !TextUtils.isEmpty(f());
    }

    public static int h()
    {
        return aS().getInt(SharedPreferenceKey.r.a(), 0);
    }

    public static void h(String s1)
    {
        aT().putString(SharedPreferenceKey.i.a(), s1).apply();
    }

    public static void h(boolean flag)
    {
        if (!C() && flag)
        {
            (new UpdateUserTask(OnboardingTooltip.d)).g();
        }
        aT().putBoolean(SharedPreferenceKey.O.a(), flag).apply();
    }

    public static int i()
    {
        return aS().getInt(SharedPreferenceKey.s.a(), 0);
    }

    public static void i(String s1)
    {
        aT().putString(SharedPreferenceKey.f.a(), s1).apply();
    }

    public static void i(boolean flag)
    {
        if (!D() && flag)
        {
            (new UpdateUserTask(OnboardingTooltip.e)).g();
        }
        aT().putBoolean(SharedPreferenceKey.Q.a(), flag).apply();
    }

    public static void j(String s1)
    {
        aT().putString(SharedPreferenceKey.p.a(), s1).apply();
    }

    public static void j(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.K.a(), flag).apply();
    }

    public static String k()
    {
        return aS().getString(SharedPreferenceKey.d.a(), null);
    }

    public static void k(String s1)
    {
        aT().putString(SharedPreferenceKey.aF.a(), s1).apply();
    }

    public static void k(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.v.a(), flag).apply();
    }

    public static void l(String s1)
    {
        aT().putString(SharedPreferenceKey.I.a(), s1).apply();
    }

    public static void l(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.V.a(), flag).apply();
    }

    public static boolean l()
    {
        boolean flag2;
label0:
        {
            boolean flag = aS().getBoolean(SharedPreferenceKey.n.a(), false);
            Timber.c("UserPrefs", (new StringBuilder()).append("Is logged in: ").append(flag).toString(), new Object[0]);
            if (!flag || k() == null)
            {
                boolean flag1 = w();
                flag2 = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag2 = true;
        }
        return flag2;
    }

    public static void m()
    {
        aT().putBoolean(SharedPreferenceKey.n.a(), false).putString(SharedPreferenceKey.d.a(), null).apply();
    }

    public static void m(String s1)
    {
        aT().putString(SharedPreferenceKey.J.a(), s1).apply();
    }

    public static void m(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.U.a(), flag).apply();
    }

    public static void n(String s1)
    {
        aT().putString(SharedPreferenceKey.B.a(), s1).apply();
    }

    public static void n(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.W.a(), flag).apply();
    }

    public static boolean n()
    {
        boolean flag = aS().getBoolean(SharedPreferenceKey.n.a(), false);
        boolean flag1 = false;
        if (flag)
        {
            String s1 = k();
            flag1 = false;
            if (s1 == null)
            {
                flag1 = true;
            }
        }
        return flag1;
    }

    public static long o()
    {
        return aS().getLong(SharedPreferenceKey.h.a(), 0L);
    }

    public static void o(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.u.a(), flag).apply();
    }

    public static void p(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.Z.a(), flag).apply();
    }

    public static boolean p()
    {
        return aS().getBoolean(SharedPreferenceKey.G.a(), false);
    }

    public static String q()
    {
        return aS().getString(SharedPreferenceKey.m.a(), null);
    }

    public static void q(String s1)
    {
        aT().putString(SharedPreferenceKey.bj.a(), s1).apply();
    }

    public static void q(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = aT();
        editor.putBoolean(SharedPreferenceKey.aK.a(), true);
        editor.putBoolean(SharedPreferenceKey.aN.a(), flag);
        editor.apply();
    }

    public static String r()
    {
        return aS().getString(SharedPreferenceKey.e.a(), null);
    }

    public static void r(String s1)
    {
        aT().putString(SharedPreferenceKey.aU.a(), s1).apply();
    }

    public static void r(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.aL.a(), flag).apply();
    }

    public static String s()
    {
        String s1 = r();
        if (TextUtils.isEmpty(s1))
        {
            s1 = k();
        }
        return s1;
    }

    public static void s(String s1)
    {
        aT().putString(SharedPreferenceKey.aT.a(), s1).apply();
    }

    public static void s(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.aM.a(), flag).apply();
    }

    public static int t(boolean flag)
    {
        if (flag)
        {
            return aS().getInt(SharedPreferenceKey.ac.a(), -1);
        } else
        {
            return aS().getInt(SharedPreferenceKey.ab.a(), -1);
        }
    }

    public static String t()
    {
        return aS().getString(SharedPreferenceKey.C.a(), null);
    }

    public static void t(String s1)
    {
        aT().putString(SharedPreferenceKey.ba.a(), s1).apply();
    }

    public static String u()
    {
        return aS().getString(SharedPreferenceKey.i.a(), null);
    }

    public static void u(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.aO.a(), flag).apply();
    }

    public static String v()
    {
        return aS().getString(SharedPreferenceKey.f.a(), null);
    }

    public static void v(String s1)
    {
        aT().putString(SharedPreferenceKey.bv.a(), s1).apply();
    }

    public static void v(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.aX.a(), flag).apply();
    }

    private static void w(String s1)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        try
        {
            long l1 = simpledateformat.parse(s1).getTime();
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(l1);
            Calendar calendar1 = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.set(calendar1.get(1), calendar.get(2), calendar.get(5), 0, 0, 0);
            aT().putLong(SharedPreferenceKey.h.a(), calendar2.getTimeInMillis()).apply();
            return;
        }
        catch (ParseException parseexception)
        {
            Timber.a("UserPrefs", parseexception);
        }
    }

    public static void w(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.aY.a(), flag).apply();
    }

    public static boolean w()
    {
        return aS().getBoolean(SharedPreferenceKey.o.a(), false);
    }

    public static int x()
    {
        return aS().getInt(SharedPreferenceKey.l.a(), 0);
    }

    public static void x(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.aZ.a(), flag).apply();
    }

    public static void y(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.bg.a(), flag).apply();
    }

    public static boolean y()
    {
        return aS().getBoolean(SharedPreferenceKey.P.a(), false);
    }

    public static void z(boolean flag)
    {
        if (!av() && flag)
        {
            (new UpdateUserTask(OnboardingTooltip.f)).g();
        }
        aT().putBoolean(SharedPreferenceKey.bh.a(), flag).apply();
    }

    public static boolean z()
    {
        return aS().getBoolean(SharedPreferenceKey.L.a(), false);
    }

    public void B(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.bl.a(), flag).apply();
    }

    public void C(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.bm.a(), flag).apply();
    }

    public void D(boolean flag)
    {
        aT().putBoolean(SharedPreferenceKey.bn.a(), flag).apply();
    }

    public void a(boolean flag, String s1, String s2, String s3, long l1)
    {
        aT().putBoolean(SharedPreferenceKey.bp.a(), flag).putString(SharedPreferenceKey.bq.a(), s1).putString(SharedPreferenceKey.br.a(), s2).putString(SharedPreferenceKey.bs.a(), s3).putLong(SharedPreferenceKey.bu.a(), l1).apply();
    }

    public boolean a(long l1)
    {
        if (l1 > j())
        {
            aT().putLong(SharedPreferenceKey.t.a(), l1).apply();
            return true;
        } else
        {
            return false;
        }
    }

    public String aA()
    {
        return aS().getString(SharedPreferenceKey.br.a(), null);
    }

    public String aB()
    {
        return aS().getString(SharedPreferenceKey.bs.a(), null);
    }

    public long aC()
    {
        return aS().getLong(SharedPreferenceKey.bt.a(), 0L);
    }

    public long aD()
    {
        return aS().getLong(SharedPreferenceKey.bu.a(), 0x240c8400L);
    }

    public boolean aI()
    {
        return aS().getBoolean(SharedPreferenceKey.bl.a(), false);
    }

    public boolean aJ()
    {
        return aS().getBoolean(SharedPreferenceKey.bm.a(), false);
    }

    public boolean aK()
    {
        return aS().getBoolean(SharedPreferenceKey.bn.a(), false);
    }

    public String aL()
    {
        return aS().getString(SharedPreferenceKey.bo.a(), null);
    }

    public long aN()
    {
        return aS().getLong(SharedPreferenceKey.bk.a(), 0L);
    }

    public long ar()
    {
        return aS().getLong(SharedPreferenceKey.bc.a(), -1L);
    }

    public String as()
    {
        return aS().getString(SharedPreferenceKey.be.a(), null);
    }

    public String at()
    {
        return aS().getString(SharedPreferenceKey.bf.a(), null);
    }

    public boolean ax()
    {
        return aS().getBoolean(SharedPreferenceKey.bp.a(), false);
    }

    public String ay()
    {
        return aS().getString(SharedPreferenceKey.bq.a(), null);
    }

    public boolean az()
    {
        return !TextUtils.isEmpty(aA());
    }

    public void c(long l1)
    {
        aT().putLong(SharedPreferenceKey.bc.a(), l1).apply();
    }

    public void d(long l1)
    {
        if (l1 > aC())
        {
            aT().putLong(SharedPreferenceKey.bt.a(), l1).apply();
        }
    }

    public void e(long l1)
    {
        aT().putLong(SharedPreferenceKey.bk.a(), l1).apply();
    }

    public long j()
    {
        return aS().getLong(SharedPreferenceKey.t.a(), 0L);
    }

    public void o(String s1)
    {
        aT().putString(SharedPreferenceKey.be.a(), s1).apply();
    }

    public void p(String s1)
    {
        aT().putString(SharedPreferenceKey.bf.a(), s1).apply();
    }

    public void u(String s1)
    {
        aT().putString(SharedPreferenceKey.bo.a(), s1).apply();
    }

}
