// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.SnapCaptureAnalytics;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.analytics.ui.SwipeImageViewAnalytics;
import com.snapchat.android.camera.transcoding.VideoTranscoder;
import com.snapchat.android.controller.SendSnapController;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.discover.model.DSnapbryo;
import com.snapchat.android.discover.ui.DSnapView;
import com.snapchat.android.discover.util.eventbus.OnShareDSnapEvent;
import com.snapchat.android.location.GeofilterManager;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.MyPostToStory;
import com.snapchat.android.model.PostToStory;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.CanvasViewBase;
import com.snapchat.android.ui.SendToBottomPanelView;
import com.snapchat.android.ui.SnapEditorView;
import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.caption.CaptionTypeEnums;
import com.snapchat.android.ui.caption.FatCaptionView;
import com.snapchat.android.ui.caption.SnapCaptionView;
import com.snapchat.android.ui.dialog.TwoButtonDialog;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.snapchat.android.util.BouncyToucher;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.cache.SaveImageToGalleryTask;
import com.snapchat.android.util.cache.SaveVideoToGalleryTask;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.CancelQuickSnapEvent;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.ClearChatTextEvent;
import com.snapchat.android.util.eventbus.ColorPickedEvent;
import com.snapchat.android.util.eventbus.DoubleTapToReplyEvent;
import com.snapchat.android.util.eventbus.DrawingEvent;
import com.snapchat.android.util.eventbus.EditCaptionEvent;
import com.snapchat.android.util.eventbus.EnableFiltersEvent;
import com.snapchat.android.util.eventbus.InChatSnapEvent;
import com.snapchat.android.util.eventbus.NoFilterEvent;
import com.snapchat.android.util.eventbus.PostToStoriesUpdatedEvent;
import com.snapchat.android.util.eventbus.QuickSnapEvent;
import com.snapchat.android.util.eventbus.SnapCapturedEvent;
import com.snapchat.android.util.eventbus.SnapReadyForRecipientsEvent;
import com.snapchat.android.util.eventbus.StorySnapPostedFromSnapPreviewEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.eventbus.UserLoadedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.media.VideoMetadataFetcher;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import net.simonvt.numberpicker.SnapchatTimePicker;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewPostToStoryAdapter, Timber, LandingPageActivity

public class SnapPreviewFragment extends SnapchatFragment
    implements SnapPreviewPostToStoryAdapter.PostToStoryCheckedCallback, com.snapchat.android.ui.SnapEditorView.SnapEditorViewInterface, com.snapchat.android.ui.SwipeController.OnScrollListener
{
    class HideButtonRunnable
        implements Runnable
    {

        final SnapPreviewFragment a;
        private boolean b;

        public void a()
        {
            b = true;
        }

        public void run()
        {
            if (!b)
            {
                SnapPreviewFragment.u(a);
            }
        }

        private HideButtonRunnable()
        {
            a = SnapPreviewFragment.this;
            super();
            b = false;
        }

    }


    private View B;
    private int C;
    private View D;
    private CheckBox E;
    private View F;
    private View G;
    private boolean H;
    private InChatSnapEvent I;
    private QuickSnapEvent J;
    private ImageButton K;
    private boolean L;
    private LinkedHashSet M;
    private View N;
    private SendToBottomPanelView O;
    private DoubleTapToReplyEvent P;
    private OnShareDSnapEvent Q;
    private boolean R;
    private DictionaryEasyMetric S;
    private final SwipeImageViewAnalytics T;
    private User U;
    private com.snapchat.android.ui.SnapEditorView.SnapEditorViewBundle V;
    private final SendSnapController W;
    private final SnapCaptureAnalytics X;
    private final NetworkAnalytics Y;
    private final VideoTranscoder Z;
    protected SnapPreviewPostToStoryAdapter a;
    private final VideoMetadataFetcher aa;
    private final GeofilterManager ab;
    private boolean ac;
    private Handler ad;
    private HideButtonRunnable ae;
    private long af;
    private SnapEditorView b;
    private CanvasViewBase c;
    private TextView d;
    private ImageButton e;
    private View f;
    private boolean g;
    private boolean h;
    private Button i;
    private ImageButton j;
    private View k;
    private View l;
    private ImageButton m;
    private View n;
    private ImageButton o;
    private ImageButton p;
    private int q;
    private SharedPreferences r;
    private AnnotatedMediabryo s;
    private SnapchatTimePicker t;
    private View u;
    private RelativeLayout v;

    public SnapPreviewFragment()
    {
        this(new SendSnapController(), SnapCaptureAnalytics.a(), NetworkAnalytics.a(), new SwipeImageViewAnalytics(), VideoTranscoder.a(), new VideoMetadataFetcher(), GeofilterManager.a());
    }

    protected SnapPreviewFragment(SendSnapController sendsnapcontroller, SnapCaptureAnalytics snapcaptureanalytics, NetworkAnalytics networkanalytics, SwipeImageViewAnalytics swipeimageviewanalytics, VideoTranscoder videotranscoder, VideoMetadataFetcher videometadatafetcher, GeofilterManager geofiltermanager)
    {
        g = false;
        h = false;
        H = true;
        L = false;
        M = new LinkedHashSet();
        ac = false;
        ad = new Handler();
        af = -1L;
        W = sendsnapcontroller;
        X = snapcaptureanalytics;
        Y = networkanalytics;
        T = swipeimageviewanalytics;
        Z = videotranscoder;
        aa = videometadatafetcher;
        ab = geofiltermanager;
    }

    private void A()
    {
        String s1 = "";
        String s2 = "";
        if (s instanceof Snapbryo)
        {
            for (Iterator iterator1 = ((Snapbryo)s).l().iterator(); iterator1.hasNext();)
            {
                PostToStory posttostory = (PostToStory)iterator1.next();
                s1 = (new StringBuilder()).append(s1).append(s2).append(posttostory.d()).toString();
                s2 = ", ";
            }

        }
        for (Iterator iterator = s.D().iterator(); iterator.hasNext();)
        {
            Friend friend = (Friend)iterator.next();
            s1 = (new StringBuilder()).append(s1).append(s2).append(friend.o()).toString();
            s2 = ", ";
        }

        O.setText(s1);
    }

    private AlertDialog B()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        View view = LayoutInflater.from(getActivity()).inflate(0x7f04006c, null);
        ((CheckBox)view.findViewById(0x7f0a0250)).setText(getString(0x7f0c012e));
        builder.setInverseBackgroundForced(true);
        builder.setView(view).setTitle(0x7f0c001e).setNegativeButton(getString(0x7f0c003d), null).setPositiveButton(getString(0x7f0c0001), new android.content.DialogInterface.OnClickListener(view) {

            final View a;
            final SnapPreviewFragment b;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                boolean flag;
                if (!((CheckBox)a.findViewById(0x7f0a0250)).isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                UserPrefs.d(flag);
                if (StoryLibrary.a().d().size() > 1)
                {
                    SnapPreviewFragment.m(b);
                    return;
                } else
                {
                    SnapPreviewFragment.n(b);
                    return;
                }
            }

            
            {
                b = SnapPreviewFragment.this;
                a = view;
                super();
            }
        });
        return builder.create();
    }

    private void C()
    {
        ac = true;
        Animation animation = AnimationUtils.loadAnimation(getActivity(), 0x7f050003);
        if (animation == null)
        {
            return;
        } else
        {
            v.setVisibility(0);
            animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final SnapPreviewFragment a;

                public void onAnimationEnd(Animation animation1)
                {
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                    AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
                    alphaanimation.setDuration(750L);
                    alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener(this) {

                        final _cls17 a;

                        public void onAnimationEnd(Animation animation)
                        {
                            SnapPreviewFragment.t(a.a).setVisibility(8);
                        }

                        public void onAnimationRepeat(Animation animation)
                        {
                        }

                        public void onAnimationStart(Animation animation)
                        {
                        }

            
            {
                a = _pcls17;
                super();
            }
                    });
                    SnapPreviewFragment.t(a).startAnimation(alphaanimation);
                }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
            });
            v.startAnimation(animation);
            return;
        }
    }

    private void D()
    {
        k();
        if (!(s instanceof Snapbryo))
        {
            return;
        }
        Snapbryo snapbryo = (Snapbryo)s;
        boolean flag;
        if (N.getVisibility() == 0)
        {
            snapbryo.a(new ArrayList(M));
        } else
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(MyPostToStory.a());
            snapbryo.a(arraylist);
        }
        if (P != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        AnalyticsEvents.a(snapbryo, flag, flag, "PREVIEW_SCREEN");
        W.a(snapbryo);
        Y.e();
        BusProvider.a().a(new StorySnapPostedFromSnapPreviewEvent());
        BusProvider.a().a(new CameraStateEvent(true));
    }

    private void E()
    {
        k();
        if (s == null)
        {
            return;
        }
        if (J != null)
        {
            BusProvider.a().a(new CameraStateEvent(true));
        }
        BusProvider.a().a(new SnapReadyForRecipientsEvent(s));
    }

    private void F()
    {
        b.getCaptionView().f();
        boolean flag;
        if (!g)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
        c.setDrawingEnabled(g);
        a(g);
    }

    private void K()
    {
        FragmentActivity fragmentactivity = getActivity();
        Bitmap bitmap;
        if (b != null)
        {
            if ((bitmap = b.a(fragmentactivity)) != null)
            {
                (new SaveImageToGalleryTask(fragmentactivity, bitmap)).executeOnExecutor(ScExecutors.c, new Void[0]);
                return;
            }
        }
    }

    private void L()
    {
        Uri uri;
        if (s == null)
        {
            uri = null;
        } else
        {
            uri = s.I();
        }
        (new SaveVideoToGalleryTask(getActivity(), uri)).executeOnExecutor(ScExecutors.c, new Void[0]);
    }

    private void M()
    {
        c.c();
        if (c.getNumberOfStrokes() > 0)
        {
            f.setBackgroundColor(c.getColor());
            D.setBackgroundColor(c.getLastColor());
            return;
        } else
        {
            m.setVisibility(8);
            D.setVisibility(8);
            return;
        }
    }

    private void N()
    {
        String as[] = new String[10];
        int i1 = 0;
        while (i1 < 10) 
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(i1 + 1).append("        ");
            String s1;
            if (i1 == 9)
            {
                s1 = "  ";
            } else
            {
                s1 = "";
            }
            as[i1] = stringbuilder.append(s1).toString();
            i1++;
        }
        t.setMinValue(1);
        t.setMaxValue(as.length);
        t.setDisplayedValues(as);
        t.setFocusable(true);
        t.setFocusableInTouchMode(true);
        t.setWrapSelectorWheel(false);
        t.setValue(P());
        O();
        t.setOnTimeSelectedListener(new net.simonvt.numberpicker.SnapchatTimePicker.OnTimeSelectedListener() {

            final SnapPreviewFragment a;

            public void a()
            {
                a.m();
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
    }

    private void O()
    {
        int i1 = P();
        C = i1;
        d.setText(String.valueOf(i1));
    }

    private int P()
    {
        int i1 = 3;
        if (r != null)
        {
            i1 = r.getInt(SharedPreferenceKey.ai.a(), i1);
        }
        return i1;
    }

    private void Q()
    {
        a(t.getValue());
    }

    private void R()
    {
        Button button = i;
        byte byte0;
        if (g)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        button.setVisibility(byte0);
        if (b.getSwipeFilterType() == FilterPageType.e)
        {
            q();
        }
        c.a(q);
        q = ViewUtils.c(getActivity());
    }

    private void S()
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(400L);
        alphaanimation.setFillAfter(true);
        af = System.nanoTime();
        k.startAnimation(alphaanimation);
        n.startAnimation(alphaanimation);
        o.startAnimation(alphaanimation);
        if (O.getVisibility() == 0)
        {
            O.startAnimation(alphaanimation);
        }
    }

    private void T()
    {
        if (af != -1L)
        {
            float f1 = (1E+12F * (float)(System.nanoTime() - af)) / 400F;
            af = -1L;
            if (f1 > 1.0F)
            {
                f1 = 1.0F;
            }
            AlphaAnimation alphaanimation = new AlphaAnimation(f1 * 0.0F, 1.0F);
            alphaanimation.setDuration(400L);
            k.startAnimation(alphaanimation);
            n.startAnimation(alphaanimation);
            o.startAnimation(alphaanimation);
            if (O.getVisibility() == 0)
            {
                O.startAnimation(alphaanimation);
                return;
            }
        }
    }

    static ImageButton a(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.o;
    }

    static User a(SnapPreviewFragment snappreviewfragment, User user)
    {
        snappreviewfragment.U = user;
        return user;
    }

    static Object a(SnapPreviewFragment snappreviewfragment, String s1)
    {
        return snappreviewfragment.b(s1);
    }

    private void a(float f1)
    {
        if (f1 == 0.0F)
        {
            b(8);
        } else
        {
            b(0);
        }
        o.setAlpha(f1);
        e.setAlpha(f1);
        n.setAlpha(f1);
        i.setAlpha(f1);
    }

    private void a(int i1)
    {
        C = i1;
        d.setText(Integer.toString(C));
        android.content.SharedPreferences.Editor editor = r.edit();
        editor.putInt(SharedPreferenceKey.ai.a(), C);
        editor.apply();
    }

    private void a(Bitmap bitmap)
    {
        if (bitmap == null)
        {
            throw new NullPointerException("Image Snap with no image? Ruh-roh");
        }
        s.a(bitmap);
        if (s instanceof Snapbryo)
        {
            ((Snapbryo)s).a(C);
        }
    }

    private void a(Bitmap bitmap, com.snapchat.videotranscoder.video.ShaderText.Type type)
    {
        s.a(bitmap);
        if (s instanceof Snapbryo)
        {
            Snapbryo snapbryo = (Snapbryo)s;
            if (E.isChecked())
            {
                snapbryo.f(true);
            }
            snapbryo.a(a(s.I()));
        }
        if (s instanceof SnapVideobryo)
        {
            ((SnapVideobryo)s).a(type);
            Z.a((SnapVideobryo)s);
        }
    }

    static void a(SnapPreviewFragment snappreviewfragment, int i1)
    {
        snappreviewfragment.a(i1);
    }

    private void a(boolean flag)
    {
label0:
        {
            View view = k;
            int i1;
            ImageButton imagebutton;
            byte byte0;
            Button button;
            byte byte1;
            if (flag)
            {
                i1 = 0;
            } else
            {
                i1 = 8;
            }
            view.setVisibility(i1);
            imagebutton = e;
            if (flag)
            {
                byte0 = 8;
            } else
            {
                byte0 = 0;
            }
            imagebutton.setVisibility(byte0);
            button = i;
            if (flag)
            {
                byte1 = 8;
            } else
            {
                byte1 = 0;
            }
            button.setVisibility(byte1);
            if (flag)
            {
                l.setVisibility(4);
                if (c.getNumberOfStrokes() <= 0)
                {
                    break label0;
                }
                m.setVisibility(0);
                D.setVisibility(0);
            }
            return;
        }
        D.setVisibility(8);
        m.setVisibility(8);
    }

    static boolean a(SnapPreviewFragment snappreviewfragment, boolean flag)
    {
        snappreviewfragment.h = flag;
        return flag;
    }

    static SnapEditorView b(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.b;
    }

    private void b(float f1)
    {
        if (b() && !s.D().isEmpty())
        {
            if (f1 == 0.0F)
            {
                O.setVisibility(4);
                O.setClickable(false);
            } else
            {
                O.setVisibility(0);
                O.setClickable(true);
            }
            O.setAlpha(f1);
        }
    }

    private void b(int i1)
    {
        o.setVisibility(i1);
        e.setVisibility(i1);
        p.setVisibility(i1);
        n.setVisibility(i1);
        i.setVisibility(i1);
    }

    static boolean b(SnapPreviewFragment snappreviewfragment, boolean flag)
    {
        snappreviewfragment.L = flag;
        return flag;
    }

    static void c(SnapPreviewFragment snappreviewfragment)
    {
        snappreviewfragment.F();
    }

    static void d(SnapPreviewFragment snappreviewfragment)
    {
        snappreviewfragment.M();
    }

    static AnnotatedMediabryo e(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.s;
    }

    static void f(SnapPreviewFragment snappreviewfragment)
    {
        snappreviewfragment.L();
    }

    static void g(SnapPreviewFragment snappreviewfragment)
    {
        snappreviewfragment.K();
    }

    static RelativeLayout h(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.v;
    }

    static boolean i(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.g;
    }

    static void j(SnapPreviewFragment snappreviewfragment)
    {
        snappreviewfragment.C();
    }

    static int k(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.P();
    }

    static AlertDialog l(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.B();
    }

    static void m(SnapPreviewFragment snappreviewfragment)
    {
        snappreviewfragment.w();
    }

    private void n()
    {
        if (c())
        {
            u.setVisibility(8);
            d.setVisibility(8);
            E.setVisibility(8);
        }
    }

    static void n(SnapPreviewFragment snappreviewfragment)
    {
        snappreviewfragment.D();
    }

    private void o()
    {
        if (b() && !s.D().isEmpty())
        {
            b_();
            A();
            x();
            B.setVisibility(8);
            if (!c())
            {
                O.a();
            }
            return;
        }
        if (s instanceof DSnapbryo)
        {
            u();
            y();
            if (SnapUtils.a(s))
            {
                u.setVisibility(4);
            } else
            {
                u.setVisibility(8);
            }
            d.setVisibility(8);
            B.setVisibility(8);
            return;
        }
        v();
        if (!R && N.getVisibility() != 0)
        {
            y();
        }
        B.setVisibility(0);
    }

    static boolean o(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.L;
    }

    private void p()
    {
        if (getActivity() != null)
        {
            Window window = G();
            if (window != null)
            {
                android.view.WindowManager.LayoutParams layoutparams = window.getAttributes();
                layoutparams.flags = 0xfffffdff & layoutparams.flags;
                window.setAttributes(layoutparams);
            }
        }
    }

    static void p(SnapPreviewFragment snappreviewfragment)
    {
        snappreviewfragment.E();
    }

    static NetworkAnalytics q(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.Y;
    }

    private void q()
    {
        if (ae != null)
        {
            ae.a();
            ae = null;
        }
        e.setVisibility(8);
        n.setVisibility(8);
        o.setVisibility(8);
    }

    static User r(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.U;
    }

    private void r()
    {
        if (ae != null)
        {
            ae.a();
            ae = null;
        }
        e.setVisibility(0);
        n.setVisibility(0);
        o.setVisibility(0);
    }

    static SendToBottomPanelView s(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.O;
    }

    private void s()
    {
        u.setVisibility(4);
        d.setVisibility(8);
        E.setVisibility(0);
    }

    static View t(SnapPreviewFragment snappreviewfragment)
    {
        return snappreviewfragment.n;
    }

    private void t()
    {
        o.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapPreviewFragment a;

            public void onClick(View view)
            {
                ((InputMethodManager)SnapPreviewFragment.a(a, "input_method")).hideSoftInputFromWindow(SnapPreviewFragment.a(a).getApplicationWindowToken(), 0);
                a.getActivity().onBackPressed();
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
        i.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapPreviewFragment a;

            public void onClick(View view)
            {
                if (SnapPreviewFragment.b(a).getCaptionView().j() && !SnapPreviewFragment.b(a).getCaptionView().g())
                {
                    SnapPreviewFragment.b(a).getCaptionView().e();
                    return;
                } else
                {
                    SnapPreviewFragment.b(a).b(true);
                    return;
                }
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
        e.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapPreviewFragment a;

            public void onClick(View view)
            {
                AnalyticsEvents.i();
                SnapPreviewFragment.c(a);
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
        j.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapPreviewFragment a;

            public void onClick(View view)
            {
                SnapPreviewFragment.c(a);
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
        m.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapPreviewFragment a;

            public void onClick(View view)
            {
                SnapPreviewFragment.d(a);
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
        p.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapPreviewFragment a;

            public void onClick(View view)
            {
                if (SnapUtils.a(SnapPreviewFragment.e(a)))
                {
                    SnapPreviewFragment.f(a);
                    return;
                } else
                {
                    SnapPreviewFragment.g(a);
                    return;
                }
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
        if (H)
        {
            u.setOnClickListener(new android.view.View.OnClickListener() {

                final SnapPreviewFragment a;

                public void onClick(View view)
                {
                    if (SnapPreviewFragment.h(a).getVisibility() == 8)
                    {
                        if (SnapPreviewFragment.i(a))
                        {
                            SnapPreviewFragment.c(a);
                        }
                        SnapPreviewFragment.j(a);
                    }
                }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
            });
        } else
        {
            O();
            u.setOnClickListener(new android.view.View.OnClickListener() {

                final SnapPreviewFragment a;

                public void onClick(View view)
                {
                    android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getActivity());
                    builder.setSingleChoiceItems(0x7f07000e, -1 + SnapPreviewFragment.k(a), new android.content.DialogInterface.OnClickListener(this) {

                        final _cls9 a;

                        public void onClick(DialogInterface dialoginterface, int i1)
                        {
                            SnapPreviewFragment.a(a.a, i1 + 1);
                            dialoginterface.dismiss();
                        }

            
            {
                a = _pcls9;
                super();
            }
                    }).setInverseBackgroundForced(true);
                    builder.show();
                }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
            });
        }
        B.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapPreviewFragment a;

            public void onClick(View view)
            {
                if (UserPrefs.y())
                {
                    SnapPreviewFragment.l(a).show();
                    return;
                }
                if (StoryLibrary.a().d().size() > 1)
                {
                    SnapPreviewFragment.m(a);
                    return;
                } else
                {
                    SnapPreviewFragment.n(a);
                    return;
                }
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
        o();
        K.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapPreviewFragment a;

            public void onClick(View view)
            {
                if (!SnapPreviewFragment.o(a))
                {
                    SnapPreviewFragment.p(a);
                }
                SnapPreviewFragment.b(a, true);
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
        E.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final SnapPreviewFragment a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                SnapEditorView snapeditorview = SnapPreviewFragment.b(a);
                boolean flag1;
                if (!flag)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                snapeditorview.a(flag1);
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
    }

    private void u()
    {
        O.setClickable(false);
        O.setOnClickListener(null);
    }

    static void u(SnapPreviewFragment snappreviewfragment)
    {
        snappreviewfragment.S();
    }

    private void v()
    {
        O.setBackgroundColor(getResources().getColor(0x7f080005));
        O.setSendButtonOnClickListener(new android.view.View.OnClickListener() {

            final SnapPreviewFragment a;

            public void onClick(View view)
            {
                SnapPreviewFragment.n(a);
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
        u();
    }

    private void w()
    {
        n.setVisibility(8);
        if (M.isEmpty())
        {
            M.add(MyPostToStory.a());
        }
        a.notifyDataSetChanged();
        i();
        N.setVisibility(0);
        x();
    }

    private void x()
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)n.getLayoutParams();
        layoutparams.addRule(12, 0);
        layoutparams.addRule(2, 0x7f0a0277);
        n.setLayoutParams(layoutparams);
        O.setVisibility(0);
        O.setAlpha(1.0F);
        K.setVisibility(8);
    }

    private void y()
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)n.getLayoutParams();
        layoutparams.addRule(12, 1);
        layoutparams.addRule(2, 0);
        n.setLayoutParams(layoutparams);
        K.setVisibility(0);
        O.setVisibility(8);
    }

    protected double a(Uri uri)
    {
        MediaMetadataRetriever mediametadataretriever = new MediaMetadataRetriever();
        int j1 = aa.a(mediametadataretriever, getActivity(), uri);
        int i1;
        i1 = j1;
        mediametadataretriever.release();
_L1:
        return (double)i1 / 1000D;
        Object obj;
        obj;
_L2:
        Timber.e("SnapPreviewFragment", (new StringBuilder()).append(((RuntimeException) (obj)).getMessage()).append(" from MetadataFetcher").toString(), new Object[0]);
        mediametadataretriever.release();
        i1 = 0;
          goto _L1
        Exception exception;
        exception;
        mediametadataretriever.release();
        throw exception;
        obj;
          goto _L2
    }

    public void a(OnShareDSnapEvent onsharedsnapevent)
    {
        Q = onsharedsnapevent;
    }

    public void a(PostToStory posttostory, boolean flag)
    {
        if (flag)
        {
            M.add(posttostory);
        } else
        {
            M.remove(posttostory);
        }
        i();
    }

    public void a(SwipeImageView swipeimageview)
    {
        if (!UserPrefs.L())
        {
            FilterPageType filterpagetype = swipeimageview.getLeftSwipeFilterPageType();
            FilterPageType filterpagetype1 = swipeimageview.getRightSwipeFilterPageType();
            if (filterpagetype == FilterPageType.e)
            {
                a(1.0F - swipeimageview.getScrollOffset());
                b(1.0F - swipeimageview.getScrollOffset());
                return;
            }
            if (filterpagetype1 == FilterPageType.e)
            {
                a(swipeimageview.getScrollOffset());
                b(swipeimageview.getScrollOffset());
                return;
            }
        }
    }

    public void a(SwipeImageView swipeimageview, boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        if (G.getVisibility() != 0) goto _L4; else goto _L3
_L3:
        G.setVisibility(8);
        UserPrefs.g(true);
_L2:
        if (UserPrefs.L())
        {
            return;
        }
        break; /* Loop/switch isn't completed */
_L4:
        if (e.getVisibility() == 8)
        {
            r();
        }
        if (true) goto _L2; else goto _L5
_L5:
        if (swipeimageview.a(swipeimageview.getPageIndex()) == FilterPageType.e)
        {
            a(0.0F);
            return;
        } else
        {
            a(1.0F);
            return;
        }
    }

    public void a(DoubleTapToReplyEvent doubletaptoreplyevent)
    {
        P = doubletaptoreplyevent;
    }

    public boolean a(PostToStory posttostory)
    {
        return M.contains(posttostory);
    }

    public void a_()
    {
        boolean flag = true;
        BusProvider.a().a(new TitleBarEvent(false));
        SnapEditorView snapeditorview;
        if (SnapUtils.a(s))
        {
            s();
            if (getUserVisibleHint())
            {
                BusProvider.a().a(new ChangeOrientationEvent(flag));
            }
        } else
        {
            if (getUserVisibleHint())
            {
                BusProvider.a().a(new ChangeOrientationEvent(-1));
            }
            n();
        }
        t();
        b.getCaptionView().setIsVideoSnap(SnapUtils.a(s));
        if (V == null)
        {
            b.setMediabryo(s);
        } else
        {
            b.a(V);
            V = null;
        }
        snapeditorview = b;
        if (E.isChecked())
        {
            flag = false;
        }
        snapeditorview.a(flag);
        R();
        X.b(ViewUtils.b(q));
        T.a(s.b());
    }

    public void b(SwipeImageView swipeimageview)
    {
        while (UserPrefs.L() || ae == null) 
        {
            return;
        }
        ae.a();
        ae = null;
    }

    protected boolean b()
    {
        return P != null || I != null || J != null;
    }

    protected void b_()
    {
        O.setBackgroundColor(getResources().getColor(0x7f080002));
        O.setSendButtonOnClickListener(new android.view.View.OnClickListener() {

            final SnapPreviewFragment a;

            public void onClick(View view)
            {
                SnapPreviewFragment.q(a).f();
                a.k();
                if (!SnapPreviewFragment.e(a).D().isEmpty())
                {
                    SnapPreviewFragment.a(a, User.a(a.getActivity()));
                    SnapPreviewFragment.r(a).a();
                }
                if (SnapPreviewFragment.e(a) instanceof Snapbryo)
                {
                    Snapbryo snapbryo = (Snapbryo)SnapPreviewFragment.e(a);
                    if (!snapbryo.l().isEmpty())
                    {
                        boolean flag;
                        if (!SnapPreviewFragment.e(a).D().isEmpty())
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        AnalyticsEvents.a(snapbryo, true, flag, "SEND_TO_SCREEN");
                    }
                }
                BusProvider.a().a(new CameraStateEvent(true));
                BusProvider.a().a(new ClearChatTextEvent());
                BusProvider.a().a(new SnapReadyForRecipientsEvent(SnapPreviewFragment.e(a)));
                SnapPreviewFragment.s(a).setSendButtonOnClickListener(null);
            }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
        });
        if (c())
        {
            O.setClickable(false);
            O.setOnClickListener(null);
            return;
        } else
        {
            O.setClickable(true);
            O.setOnClickListener(new android.view.View.OnClickListener() {

                final SnapPreviewFragment a;

                public void onClick(View view)
                {
                    a.k();
                    BusProvider.a().a(new SnapReadyForRecipientsEvent(SnapPreviewFragment.e(a), true));
                    (new EasyMetric("TAP_RECIPIENTS_IN_PREVIEW")).c();
                    SnapPreviewFragment.s(a).setOnClickListener(null);
                }

            
            {
                a = SnapPreviewFragment.this;
                super();
            }
            });
            return;
        }
    }

    protected boolean c()
    {
        return (s instanceof Snapbryo) && s.j();
    }

    public boolean e()
    {
        if (N != null && N.getVisibility() == 0)
        {
            h();
            return true;
        }
        if (ac)
        {
            m();
            return true;
        }
        if (h || b == null || b.getCaptionView() == null || c == null)
        {
            return false;
        }
        if (b.getCaptionView().g() && b.getCaptionType() == CaptionTypeEnums.b)
        {
            b.getCaptionView().f();
            return true;
        }
        if (c.d())
        {
            (new TwoButtonDialog(getActivity(), getString(0x7f0c002d)) {

                final SnapPreviewFragment a;

                protected void a()
                {
                }

                protected void b()
                {
                    SnapPreviewFragment.a(a, true);
                    FragmentActivity fragmentactivity = a.getActivity();
                    if (fragmentactivity != null)
                    {
                        fragmentactivity.onBackPressed();
                    }
                }

            
            {
                a = SnapPreviewFragment.this;
                super(context, s1);
            }
            }).show();
            return true;
        }
        if (s != null && SnapUtils.a(s))
        {
            CameraEventAnalytics.a().a(com.snapchat.android.analytics.CameraEventAnalytics.CameraContext.CANCEL_PREVIEW);
        }
        f();
        if (Q != null)
        {
            Q.a().b();
        }
        BusProvider.a().a(new CameraStateEvent(true));
        if (J != null)
        {
            BusProvider.a().a(new CancelQuickSnapEvent());
            return true;
        } else
        {
            return false;
        }
    }

    protected void f()
    {
        if (s == null || Q != null)
        {
            return;
        } else
        {
            W.l(s);
            return;
        }
    }

    public boolean h()
    {
        if (N.getVisibility() != 0)
        {
            return false;
        } else
        {
            N.setVisibility(8);
            n.setVisibility(0);
            y();
            return true;
        }
    }

    public void i()
    {
        Iterator iterator = M.iterator();
        String s1 = "";
        for (String s2 = ""; iterator.hasNext(); s2 = ", ")
        {
            PostToStory posttostory = (PostToStory)iterator.next();
            s1 = (new StringBuilder()).append(s1).append(s2).append(posttostory.d()).toString();
        }

        O.setText(s1);
    }

    protected void k()
    {
        if (s != null && (s.b() != 0 || s.G() != null)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Bitmap bitmap;
        com.snapchat.videotranscoder.video.ShaderText.Type type;
        FragmentActivity fragmentactivity = getActivity();
        bitmap = b.a(fragmentactivity);
        type = b.getVideoFilter();
        if (!SnapUtils.a(s))
        {
            break MISSING_BLOCK_LABEL_251;
        }
        b.c();
        if (s.I() == null || s.I().getPath() == null) goto _L1; else goto _L3
_L3:
        a(bitmap, type);
_L4:
        if (!b.getCaptionView().j())
        {
            s.h(b.getCaptionView().getText());
        }
        AnnotatedMediabryo annotatedmediabryo = s;
        boolean flag;
        if (c.getNumberOfStrokes() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        annotatedmediabryo.d(flag);
        s.e(T.c());
        s.a(T.a());
        s.b(T.b());
        s.f(T.e());
        s.c(T.d());
        s.g(b.getCaptionStyleDescription());
        s.a(b.getCaptionAnalyticsDetails());
        return;
        a(bitmap);
          goto _L4
    }

    public int l()
    {
        return o.getBottom();
    }

    public boolean m()
    {
        if (!ac)
        {
            return false;
        }
        ac = false;
        Animation animation = AnimationUtils.loadAnimation(getActivity(), 0x7f050002);
        if (animation != null)
        {
            v.startAnimation(animation);
        }
        n.setVisibility(0);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(350L);
        n.startAnimation(alphaanimation);
        v.setVisibility(8);
        Q();
        return true;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (x == null)
        {
            return;
        }
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity != null)
        {
            r = PreferenceManager.getDefaultSharedPreferences(fragmentactivity);
        }
        D = d(0x7f0a02c5);
        f = d(0x7f0a02c3);
        o = (ImageButton)d(0x7f0a02c0);
        i = (Button)d(0x7f0a02cd);
        e = (ImageButton)d(0x7f0a02c1);
        j = (ImageButton)d(0x7f0a02c4);
        m = (ImageButton)d(0x7f0a02c6);
        p = (ImageButton)d(0x7f0a02c9);
        k = d(0x7f0a02c2);
        l = d(0x7f0a02ca);
        d = (TextView)d(0x7f0a02d0);
        u = d(0x7f0a02cf);
        B = d(0x7f0a02d1);
        E = (CheckBox)d(0x7f0a02ce);
        F = d(0x7f0a02d3);
        G = d(0x7f0a02d4);
        K = (ImageButton)d(0x7f0a02d2);
        N = d(0x7f0a02d5);
        O = (SendToBottomPanelView)d(0x7f0a0277);
        o.setOnTouchListener(new BouncyToucher(o));
        e.setOnTouchListener(new BouncyToucher(e));
        u.setOnTouchListener(new BouncyToucher(u));
        p.setOnTouchListener(new BouncyToucher(p));
        B.setOnTouchListener(new BouncyToucher(B));
        E.setOnTouchListener(new BouncyToucher(E));
        K.setOnTouchListener(new BouncyToucher(K));
        ListView listview;
        if (UserPrefs.e() == 0 && !UserPrefs.A())
        {
            F.setVisibility(0);
        } else
        if (!UserPrefs.B())
        {
            G.setVisibility(0);
        }
        try
        {
            v = (RelativeLayout)((LayoutInflater)b("layout_inflater")).inflate(0x7f040082, null);
            ((RelativeLayout)x).addView(v);
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)v.getLayoutParams();
            layoutparams.addRule(12);
            v.setLayoutParams(layoutparams);
            t = (SnapchatTimePicker)v.findViewById(0x7f0a02d9);
            N();
            H = true;
        }
        catch (Exception exception)
        {
            H = false;
            (new ErrorMetric("numberPicker failed to inflate")).a(exception).c();
        }
        n = d(0x7f0a02c8);
        b = (SnapEditorView)d(0x7f0a02bf);
        b.setInterface(this);
        b.setSwipeImageViewAnalytics(T);
        b.setSwipeImageViewOnScrollListener(this);
        c = b.getCanvasView();
        a_();
        f.setBackgroundColor(c.getColor());
        c.setColor(c.getColor());
        D.setBackgroundColor(c.getLastColor());
        listview = (ListView)d(0x7f0a02d6);
        a = new SnapPreviewPostToStoryAdapter(getActivity(), 0x7f04006d, StoryLibrary.a().d(), this);
        listview.setAdapter(a);
    }

    public void onColorPickedEvent(ColorPickedEvent colorpickedevent)
    {
        SnapCaptionView snapcaptionview = b.getCaptionView();
        if ((snapcaptionview instanceof FatCaptionView) && snapcaptionview.g())
        {
            return;
        } else
        {
            c.setColor(colorpickedevent.a());
            f.setBackgroundColor(c.getColor());
            return;
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        V = b.a();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        p();
        FragmentActivity fragmentactivity = getActivity();
        S = DictionaryEasyMetric.a();
        if (s == null && (fragmentactivity instanceof LandingPageActivity))
        {
            SnapCapturedEvent snapcapturedevent = ((LandingPageActivity)fragmentactivity).s();
            if (snapcapturedevent == null || !(snapcapturedevent.a() instanceof AnnotatedMediabryo))
            {
                s = (new com.snapchat.android.model.Snapbryo.Builder()).a();
                h = true;
                getActivity().onBackPressed();
                return x;
            }
            s = (AnnotatedMediabryo)snapcapturedevent.a();
        }
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            x = layoutinflater.inflate(0x7f040080, viewgroup, false);
            return x;
        }
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (s != null)
        {
            s.H();
        }
        android.view.WindowManager.LayoutParams layoutparams = G().getAttributes();
        layoutparams.flags = 0x200 | layoutparams.flags;
        G().setAttributes(layoutparams);
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        if (!b.getCaptionView().j())
        {
            AnalyticsEvents.h();
        }
        if (c.getNumberOfStrokes() > 0)
        {
            AnalyticsEvents.b(c.getNumberOfStrokes());
        }
        if (T.a() + T.b() > 0)
        {
            AnalyticsEvents.a(s);
        }
        b.b();
        android.view.WindowManager.LayoutParams layoutparams = G().getAttributes();
        layoutparams.flags = 0x200 | layoutparams.flags;
        G().setAttributes(layoutparams);
    }

    public void onDrawingEvent(DrawingEvent drawingevent)
    {
        if (ae != null)
        {
            ae.a();
            ae = null;
        }
        if (drawingevent.a() == com.snapchat.android.util.eventbus.DrawingEvent.DrawingEventType.b)
        {
            ae = new HideButtonRunnable();
            ad.postDelayed(ae, 250L);
        } else
        if (drawingevent.a() == com.snapchat.android.util.eventbus.DrawingEvent.DrawingEventType.a)
        {
            T();
            m.setVisibility(0);
            D.setVisibility(0);
            D.setBackgroundColor(c.getLastColor());
            return;
        }
    }

    public void onEditCaptionEvent(EditCaptionEvent editcaptionevent)
    {
        F.setVisibility(8);
        e.setVisibility(0);
        l.setVisibility(4);
        UserPrefs.f(true);
        G.setVisibility(8);
        SnapCaptionView snapcaptionview = b.getCaptionView();
        i.setBackgroundResource(0x7f0201ec);
        Button button = i;
        byte byte0;
        if (g)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        button.setVisibility(byte0);
        if (editcaptionevent.a() && (snapcaptionview instanceof FatCaptionView))
        {
            c.setDrawingEnabled(false);
            k.setVisibility(4);
            e.setVisibility(4);
            m.setVisibility(8);
            D.setVisibility(8);
            l.setVisibility(0);
            i.setBackgroundResource(0x7f020098);
        }
    }

    public void onEnableFiltersEvent(EnableFiltersEvent enablefiltersevent)
    {
        if (ae != null)
        {
            ae.a();
            ae = null;
        }
        a(1.0F);
        if (F.getVisibility() != 0)
        {
            G.setVisibility(0);
        }
        b.setMediabryo(s);
    }

    public void onInChatSnapEvent(InChatSnapEvent inchatsnapevent)
    {
        I = inchatsnapevent;
        o();
        if (inchatsnapevent.b.length() > 0)
        {
            b.setCaptionText(inchatsnapevent.b);
            onEditCaptionEvent(new EditCaptionEvent(true));
        }
    }

    public void onNoFilterEvent(NoFilterEvent nofilterevent)
    {
        b.setMediabryo(s);
    }

    public void onPause()
    {
        super.onPause();
        if (!getActivity().isChangingConfigurations() && b.getCaptionView() != null)
        {
            b.getCaptionView().a(false);
        }
        if (c != null)
        {
            c.a();
        }
        V = b.a();
        b.c();
        int i1 = O.getVisibility();
        boolean flag = false;
        if (i1 == 0)
        {
            flag = true;
        }
        R = flag;
        BusProvider.a().b(b.getCaptionView());
    }

    public void onPostToStoriesUpdatedEvent(PostToStoriesUpdatedEvent posttostoriesupdatedevent)
    {
        if (a != null)
        {
            a.notifyDataSetChanged();
        }
    }

    public void onQuickSnapEvent(QuickSnapEvent quicksnapevent)
    {
        J = quicksnapevent;
        o();
        if (quicksnapevent.b.length() > 0)
        {
            b.setCaptionText(quicksnapevent.b);
            onEditCaptionEvent(new EditCaptionEvent(true));
        }
    }

    public void onResume()
    {
        super.onResume();
        BusProvider.a().c(b.getCaptionView());
        c.setDrawingEnabled(g);
        a(g);
    }

    public void onUserLoadedEvent(UserLoadedEvent userloadedevent)
    {
        U = userloadedevent.a;
    }

    protected void s_()
    {
        S.b("FIRST_MEDIA_OPENED");
        ab.c();
        p();
        L = false;
        if (q != ViewUtils.c(getActivity()) || V != null)
        {
            a_();
        }
        if (s != null)
        {
            o();
            n();
            s.C();
        }
        BusProvider.a().a(new TitleBarEvent(false));
        if (s != null && SnapUtils.a(s))
        {
            b.a((Snapbryo)s);
            SnapEditorView snapeditorview = b;
            boolean flag;
            if (!E.isChecked())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            snapeditorview.a(flag);
            return;
        } else
        {
            BusProvider.a().a(new ChangeOrientationEvent(-1));
            return;
        }
    }

    public boolean t_()
    {
        return true;
    }
}
