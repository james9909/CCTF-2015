// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.BounceInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ListView;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.feed.FeedAdapter;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.util.DateTimeUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.SnapListItemHandler;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.RetryFailedSnapEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Map;

// Referenced classes of package com.snapchat.android.ui.listeners:
//            SwipeableListItemTouchListener

public class FeedSwipeListViewTouchListener extends SwipeableListItemTouchListener
{
    public static interface FeedTouchInterface
        extends SwipeableListItemTouchListener.SwipeableListItemInterface
    {

        public abstract ChatConversation a(MotionEvent motionevent);

        public abstract boolean b();

        public abstract boolean b(MotionEvent motionevent);
    }


    private final FeedTouchInterface a;
    private final float h;
    private boolean i;
    private int j;
    private boolean k;
    private Context l;
    private FeedAdapter m;
    private FeedIconManager n;

    public FeedSwipeListViewTouchListener(ListView listview, SwipeableListItemTouchListener.SwipeDirection swipedirection, FeedTouchInterface feedtouchinterface, Context context, FeedAdapter feedadapter, FeedIconManager feediconmanager)
    {
        super(listview, swipedirection, feedtouchinterface);
        i = false;
        a = feedtouchinterface;
        h = ViewUtils.a(32F, context);
        l = context;
        m = feedadapter;
        n = feediconmanager;
    }

    static float a(FeedSwipeListViewTouchListener feedswipelistviewtouchlistener)
    {
        return feedswipelistviewtouchlistener.h;
    }

    private Animator a(com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder feedviewholder, ChatConversation chatconversation)
    {
        SnapchatApplication snapchatapplication = SnapchatApplication.e();
        float f = (float)ViewUtils.b(feedviewholder.b) / 2.0F;
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(feedviewholder.a, "translationY", new float[] {
            f
        });
        boolean flag;
        AnimatorSet animatorset;
        AnimatorSet animatorset1;
        ObjectAnimator objectanimator1;
        if (chatconversation.as() && chatconversation.ak())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        animatorset = new AnimatorSet();
        if (flag)
        {
            String s = a(((Context) (snapchatapplication)), DateTimeUtils.b(snapchatapplication, chatconversation.U()), snapchatapplication.getString(0x7f0c0209));
            ObjectAnimator objectanimator2 = ObjectAnimator.ofFloat(feedviewholder.b, "alpha", new float[] {
                1.0F
            });
            objectanimator2.setDuration(300L);
            objectanimator2.addListener(new android.animation.Animator.AnimatorListener(feedviewholder, s) {

                final com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder a;
                final String b;
                final FeedSwipeListViewTouchListener c;

                public void onAnimationCancel(Animator animator)
                {
                }

                public void onAnimationEnd(Animator animator)
                {
                }

                public void onAnimationRepeat(Animator animator)
                {
                }

                public void onAnimationStart(Animator animator)
                {
                    a.b.setText(b);
                }

            
            {
                c = FeedSwipeListViewTouchListener.this;
                a = feedviewholder;
                b = s;
                super();
            }
            });
            ObjectAnimator objectanimator3 = ObjectAnimator.ofFloat(feedviewholder.b, "alpha", new float[] {
                0.0F
            });
            objectanimator3.setDuration(300L);
            animatorset.addListener(new android.animation.Animator.AnimatorListener(feedviewholder, chatconversation) {

                boolean a;
                final com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder b;
                final ChatConversation c;
                final FeedSwipeListViewTouchListener d;

                public void onAnimationCancel(Animator animator)
                {
                    a = true;
                }

                public void onAnimationEnd(Animator animator)
                {
                    if (a) goto _L2; else goto _L1
_L1:
                    if (!FeedSwipeListViewTouchListener.d(d).b()) goto _L4; else goto _L3
_L3:
                    b.b.setAlpha(1.0F);
                    b.b.setText(c.c());
_L6:
                    return;
_L4:
                    b.b();
                    return;
_L2:
                    if (b.e)
                    {
                        b.b();
                        return;
                    }
                    if (true) goto _L6; else goto _L5
_L5:
                }

                public void onAnimationRepeat(Animator animator)
                {
                }

                public void onAnimationStart(Animator animator)
                {
                }

            
            {
                d = FeedSwipeListViewTouchListener.this;
                b = feedviewholder;
                c = chatconversation;
                super();
            }
            });
            animatorset.play(objectanimator2).before(objectanimator3);
            if (!a.b())
            {
                animatorset.play(objectanimator3).with(objectanimator);
            }
        }
        animatorset1 = new AnimatorSet();
        animatorset1.setStartDelay(3000L);
        objectanimator1 = ObjectAnimator.ofFloat(feedviewholder.b, "alpha", new float[] {
            0.0F
        });
        objectanimator1.setDuration(300L);
        animatorset1.addListener(new android.animation.Animator.AnimatorListener(animatorset, feedviewholder, chatconversation) {

            boolean a;
            final AnimatorSet b;
            final com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder c;
            final ChatConversation d;
            final FeedSwipeListViewTouchListener e;

            public void onAnimationCancel(Animator animator)
            {
                a = true;
            }

            public void onAnimationEnd(Animator animator)
            {
                if (a) goto _L2; else goto _L1
_L1:
                if (!b.getChildAnimations().isEmpty()) goto _L4; else goto _L3
_L3:
                if (!FeedSwipeListViewTouchListener.d(e).b()) goto _L6; else goto _L5
_L5:
                c.b.setAlpha(1.0F);
                c.b.setText(d.c());
_L8:
                return;
_L6:
                c.b();
                return;
_L4:
                c.d = b;
                b.start();
                return;
_L2:
                if (c.e)
                {
                    c.b();
                    return;
                }
                if (true) goto _L8; else goto _L7
_L7:
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                e = FeedSwipeListViewTouchListener.this;
                b = animatorset;
                c = feedviewholder;
                d = chatconversation;
                super();
            }
        });
        if (flag || a.b())
        {
            animatorset1.play(objectanimator1);
            return animatorset1;
        } else
        {
            animatorset1.play(objectanimator1).with(objectanimator);
            return animatorset1;
        }
    }

    static Animator a(FeedSwipeListViewTouchListener feedswipelistviewtouchlistener, com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder feedviewholder, ChatConversation chatconversation)
    {
        return feedswipelistviewtouchlistener.a(feedviewholder, chatconversation);
    }

    private static String a(Context context, String s, String s1)
    {
        boolean flag = TextUtils.isEmpty(s);
        boolean flag1 = TextUtils.isEmpty(s1);
        if (flag && flag1)
        {
            return "";
        }
        if (flag)
        {
            s = "";
        }
        return LocalizationUtils.a(0x7f0c00f5, new Object[] {
            s, s1
        });
    }

    private void a(View view, ChatConversation chatconversation)
    {
        com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder feedviewholder;
        if (view != null)
        {
            if ((feedviewholder = (com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder)view.getTag()) != null && chatconversation.ay() && !a.b())
            {
                ChatFeedItem chatfeeditem = chatconversation.aw();
                if (chatfeeditem == null)
                {
                    n.a(chatconversation, true);
                }
                SnapchatApplication snapchatapplication = SnapchatApplication.e();
                boolean flag;
                String s;
                String s1;
                String s2;
                String s3;
                if (chatconversation.as() && chatconversation.ak())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                s = DateTimeUtils.b(snapchatapplication, chatconversation.U());
                s1 = snapchatapplication.getString(0x7f0c0209);
                if (flag)
                {
                    s2 = snapchatapplication.getString(0x7f0c016e);
                } else
                if (chatfeeditem != null)
                {
                    s2 = chatfeeditem.a();
                } else
                {
                    s2 = s1;
                }
                s3 = a(((Context) (snapchatapplication)), s, s2);
                feedviewholder.b.setText(s3);
                feedviewholder.b.setTextColor(snapchatapplication.getResources().getColor(0x7f080042));
                if (feedviewholder.d != null && feedviewholder.d.isStarted())
                {
                    feedviewholder.e = false;
                    feedviewholder.d.cancel();
                    feedviewholder.a.clearAnimation();
                    feedviewholder.b.clearAnimation();
                    feedviewholder.a();
                    feedviewholder.b.setText(s3);
                    feedviewholder.d = a(feedviewholder, chatconversation);
                    a(chatconversation);
                    feedviewholder.d.start();
                    return;
                } else
                {
                    float f = (float)ViewUtils.b(feedviewholder.b) / 2.0F;
                    TextView textview = feedviewholder.a;
                    float af[] = new float[1];
                    af[0] = f * -1F;
                    ObjectAnimator objectanimator = ObjectAnimator.ofFloat(textview, "translationY", af);
                    objectanimator.setDuration(300L);
                    objectanimator.addListener(new android.animation.Animator.AnimatorListener(feedviewholder, chatconversation) {

                        boolean a;
                        final com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder b;
                        final ChatConversation c;
                        final FeedSwipeListViewTouchListener d;

                        public void onAnimationCancel(Animator animator)
                        {
                            a = true;
                        }

                        public void onAnimationEnd(Animator animator)
                        {
                            if (!a)
                            {
                                b.a();
                                Animator animator1 = FeedSwipeListViewTouchListener.a(d, b, c);
                                b.d = animator1;
                                animator1.start();
                            } else
                            if (b.e)
                            {
                                b.b();
                                return;
                            }
                        }

                        public void onAnimationRepeat(Animator animator)
                        {
                        }

                        public void onAnimationStart(Animator animator)
                        {
                            b.a.setGravity(16);
                        }

            
            {
                d = FeedSwipeListViewTouchListener.this;
                b = feedviewholder;
                c = chatconversation;
                super();
            }
                    });
                    feedviewholder.d = objectanimator;
                    a(chatconversation);
                    objectanimator.start();
                    return;
                }
            }
        }
    }

    private void a(ChatConversation chatconversation)
    {
        long l1 = 3300L + SystemClock.elapsedRealtime();
        m.a().put(chatconversation, Long.valueOf(l1));
    }

    private void b()
    {
        com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder feedviewholder;
        if (e != null)
        {
            feedviewholder = (com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder)e.getTag();
            break MISSING_BLOCK_LABEL_18;
        }
        do
        {
            return;
        } while (feedviewholder == null || !TextUtils.equals(feedviewholder.c.c(), "teamsnapchat"));
        e.clearAnimation();
        k = true;
        c();
    }

    static boolean b(FeedSwipeListViewTouchListener feedswipelistviewtouchlistener)
    {
        return feedswipelistviewtouchlistener.k;
    }

    private void c()
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(l).edit();
        editor.remove(SharedPreferenceKey.x.a());
        editor.apply();
    }

    static void c(FeedSwipeListViewTouchListener feedswipelistviewtouchlistener)
    {
        feedswipelistviewtouchlistener.c();
    }

    static FeedTouchInterface d(FeedSwipeListViewTouchListener feedswipelistviewtouchlistener)
    {
        return feedswipelistviewtouchlistener.a;
    }

    private void d()
    {
        View view;
        if (e != null)
        {
            if ((view = e.findViewById(0x7f0a01d7)) != null)
            {
                TranslateAnimation translateanimation = new TranslateAnimation(0.0F, h, 0.0F, 0.0F);
                translateanimation.setDuration(100L);
                translateanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener(view) {

                    final View a;
                    final FeedSwipeListViewTouchListener b;

                    public void onAnimationEnd(Animation animation)
                    {
                        TranslateAnimation translateanimation1 = new TranslateAnimation(FeedSwipeListViewTouchListener.a(b), 0.0F, 0.0F, 0.0F);
                        translateanimation1.setInterpolator(new BounceInterpolator());
                        translateanimation1.setDuration(400L);
                        a.startAnimation(translateanimation1);
                    }

                    public void onAnimationRepeat(Animation animation)
                    {
                    }

                    public void onAnimationStart(Animation animation)
                    {
                    }

            
            {
                b = FeedSwipeListViewTouchListener.this;
                a = view;
                super();
            }
                });
                view.startAnimation(translateanimation);
                return;
            }
        }
    }

    public void a(View view, int i1)
    {
        com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder feedviewholder;
        View view1;
        if (!k && view != null)
        {
            if ((feedviewholder = (com.snapchat.android.fragments.feed.FeedAdapter.FeedViewHolder)view.getTag()) != null && feedviewholder.c != null && TextUtils.equals(feedviewholder.c.c(), "teamsnapchat") && (view1 = view.findViewById(0x7f0a01d7)) != null)
            {
                TranslateAnimation translateanimation = new TranslateAnimation(0.0F, h, 0.0F, 0.0F);
                translateanimation.setDuration(100L);
                translateanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener(i1, view, view1) {

                    final int a;
                    final View b;
                    final View c;
                    final FeedSwipeListViewTouchListener d;

                    public void onAnimationEnd(Animation animation)
                    {
                        TranslateAnimation translateanimation1 = new TranslateAnimation(FeedSwipeListViewTouchListener.a(d), 0.0F, 0.0F, 0.0F);
                        translateanimation1.setInterpolator(new BounceInterpolator());
                        translateanimation1.setDuration(400L);
                        if (!FeedSwipeListViewTouchListener.b(d) && a > 0)
                        {
                            translateanimation1.setAnimationListener(new android.view.animation.Animation.AnimationListener(this) {

                                final _cls1 a;

                                public void onAnimationEnd(Animation animation)
                                {
                                    if (!FeedSwipeListViewTouchListener.b(a.d))
                                    {
                                        a.d.a(a.b, -1 + a.a);
                                    }
                                }

                                public void onAnimationRepeat(Animation animation)
                                {
                                }

                                public void onAnimationStart(Animation animation)
                                {
                                }

            
            {
                a = _pcls1;
                super();
            }
                            });
                        } else
                        {
                            FeedSwipeListViewTouchListener.c(d);
                        }
                        c.startAnimation(translateanimation1);
                    }

                    public void onAnimationRepeat(Animation animation)
                    {
                    }

                    public void onAnimationStart(Animation animation)
                    {
                    }

            
            {
                d = FeedSwipeListViewTouchListener.this;
                a = i1;
                b = view;
                c = view1;
                super();
            }
                });
                view1.startAnimation(translateanimation);
                a(view, feedviewholder.c);
                return;
            }
        }
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (!SnapListItemHandler.a().h()) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        ChatConversation chatconversation;
        boolean flag;
        int i1;
        chatconversation = a.a(motionevent);
        if (chatconversation == null || chatconversation.c() == null)
        {
            return super.onTouch(view, motionevent);
        }
        flag = ChatUtils.a(chatconversation);
        i1 = (int)motionevent.getY();
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 84
    //                   0 131
    //                   1 153
    //                   2 230;
           goto _L3 _L4 _L5 _L6
_L3:
        break; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_230;
_L7:
        boolean flag1 = super.onTouch(view, motionevent);
        switch (motionevent.getAction())
        {
        default:
            return flag1;

        case 1: // '\001'
            a(f, chatconversation);
            break;
        }
        return flag1;
_L4:
        i = false;
        j = i1;
        b();
        if (flag)
        {
            return true;
        }
          goto _L7
_L5:
        SnapListItemHandler.a().e();
        if (i || d || g) goto _L7; else goto _L8
_L8:
        if (!chatconversation.ao())
        {
            break; /* Loop/switch isn't completed */
        }
        SendingMailman.a().a(chatconversation);
        BusProvider.a().a(new RetryFailedSnapEvent());
        if (flag) goto _L1; else goto _L9
_L9:
        a.b(motionevent);
        d();
          goto _L7
        if (Math.abs(i1 - j) > b)
        {
            i = true;
        }
        j = i1;
        b();
          goto _L7
    }
}
