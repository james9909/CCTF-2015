// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api.DeleteStorySnapTask;
import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.api2.HideSharedStoryTask;
import com.snapchat.android.fragments.addfriends.SharedStorySearchResult;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.RecentStoryCollection;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.SponsoredStoryCollection;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapExtra;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.User;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.ui.ProgressiveSaveButton;
import com.snapchat.android.ui.dialog.ConfirmSaveStoryToGalleryDialog;
import com.snapchat.android.ui.dialog.TwoButtonDialog;
import com.snapchat.android.ui.listeners.RecentUpdatesStoriesListItemOnClickListener;
import com.snapchat.android.ui.listeners.SelectableListItemOnClickListener;
import com.snapchat.android.ui.listeners.StoriesListItemOnClickListener;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.EditNameDialog;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.NumberFormatUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.StoriesThumbnailCache;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.cache.SaveImageToGalleryTask;
import com.snapchat.android.util.cache.SaveVideoToGalleryTask;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.RecentStoryReplyEvent;
import com.snapchat.android.util.eventbus.SharedStoryButtonClickedEvent;
import com.snapchat.android.util.eventbus.SharedStoryFriendButtonClickedEvent;
import com.snapchat.android.util.eventbus.StoryListPressedEvent;
import com.snapchat.android.util.eventbus.StoryListTappedEvent;
import com.snapchat.android.util.eventbus.ToggleStoryEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            ExpandedStoriesListItemViewHolder, MyStoryIconsToHideWhenExpanded, StoriesSectionizer, StoriesListItem, 
//            MyStoryGroupStoriesListItem, StoryGroupStoriesListItem, StoriesListItemViewHolder, FriendStoriesListItemSelector, 
//            StoryViewersStoriesListItemSelector, StoriesFilter

public class StoriesAdapter extends ArrayAdapter
    implements Filterable, StickyListHeadersAdapter, StoriesListItemSelector.StoriesListItemSelectorInterface, com.snapchat.android.util.listview.ScFilter.ScFilterInterface
{
    class HeaderViewHolder
    {

        TextView a;
        final StoriesAdapter b;

        HeaderViewHolder()
        {
            b = StoriesAdapter.this;
            super();
        }
    }

    public static interface StoriesAdapterInterface
    {

        public abstract void a(StoriesListItem storieslistitem);

        public abstract void a(SponsoredStoryCollection sponsoredstorycollection);

        public abstract boolean a(Friend friend);

        public abstract boolean a(String s);

        public abstract Editable b();

        public abstract void c();

        public abstract com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext d();

        public abstract String g();

        public abstract boolean h();
    }

    class StoriesFriendActionTask extends FriendActionTask
    {

        private final StoriesListItemViewHolder a;
        final StoriesAdapter c;

        protected void a(ServerResponse serverresponse)
        {
            super.a(serverresponse);
            if (mFriend != null)
            {
                mFriend.a(FriendAction.NONE);
            }
        }

        protected void b(ServerResponse serverresponse)
        {
            super.b(serverresponse);
            c.a();
        }

        protected void onPostExecute(Object obj)
        {
            a((ServerResponse)obj);
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            if (mFriend != null)
            {
                mFriend.a(mAction);
            }
        }

        private StoriesFriendActionTask(FriendAction friendaction, Friend friend, String s, String s1, boolean flag, String s2, 
                StoriesListItemViewHolder storieslistitemviewholder)
        {
            c = StoriesAdapter.this;
            super(friendaction, friend, s, s1, flag, s2);
            a = storieslistitemviewholder;
        }

    }

    class StoryItemTouchListener
        implements android.view.View.OnTouchListener
    {

        final StoriesAdapter a;
        private StoriesListItem b;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            StoriesAdapter.b(a).hideSoftInputFromWindow(view.getWindowToken(), 0);
            switch (motionevent.getAction())
            {
            default:
                return false;

            case 0: // '\0'
                BusProvider.a().a(new StoryListPressedEvent(b));
                Timber.c("StoriesAdapter", "Touch down return false", new Object[0]);
                return false;

            case 1: // '\001'
                BusProvider.a().a(new StoryListTappedEvent(b));
                break;
            }
            Timber.c("StoriesAdapter", "Touch up return false", new Object[0]);
            return false;
        }

        public StoryItemTouchListener(int i1, StoriesListItem storieslistitem)
        {
            a = StoriesAdapter.this;
            super();
            b = storieslistitem;
        }
    }


    protected List a;
    protected ExceptionReporter b;
    private final Context c;
    private final SnapWomb d;
    private List e;
    private LayoutInflater f;
    private HashSet g;
    private final StoriesSectionizer h = new StoriesSectionizer();
    private Filter i;
    private final InputMethodManager j = (InputMethodManager)getContext().getSystemService("input_method");
    private final StoriesThumbnailCache k;
    private int l;
    private final ExpandedStoriesListItemViewHolder m = new ExpandedStoriesListItemViewHolder();
    private final MyStoryIconsToHideWhenExpanded n = new MyStoryIconsToHideWhenExpanded();
    private final StoriesAdapterInterface o;

    public StoriesAdapter(Context context, ArrayList arraylist, StoriesAdapterInterface storiesadapterinterface, SnapWomb snapwomb, StoriesThumbnailCache storiesthumbnailcache)
    {
        super(context, 0x7f04008c, arraylist);
        g = new HashSet();
        l = -1;
        SnapchatApplication.e().a(this);
        f = (LayoutInflater)context.getSystemService("layout_inflater");
        c = context;
        e = arraylist;
        a = arraylist;
        o = storiesadapterinterface;
        d = snapwomb;
        k = storiesthumbnailcache;
    }

    static int a(StoriesAdapter storiesadapter, int i1)
    {
        storiesadapter.l = i1;
        return i1;
    }

    private Bitmap a(Bitmap bitmap)
    {
        if (bitmap == null)
        {
            throw new NullPointerException();
        } else
        {
            Bitmap bitmap1 = Bitmap.createBitmap(102, 102, android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap1);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setShader(new BitmapShader(bitmap, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
            canvas.drawArc(new RectF(0.0F, 0.0F, bitmap1.getWidth(), bitmap1.getHeight()), 0.0F, 360F, true, paint);
            return bitmap1;
        }
    }

    private Bitmap a(StorySnapLogbook storysnaplogbook)
    {
        Bitmap bitmap = Caches.b.a(getContext(), storysnaplogbook.e().ay(), null, android.graphics.Bitmap.Config.RGB_565);
        if (bitmap == null)
        {
            return null;
        } else
        {
            Bitmap bitmap1 = a(bitmap);
            bitmap.recycle();
            k.a(storysnaplogbook.e(), bitmap1, a(((StoriesListItem) (storysnaplogbook))));
            return bitmap1;
        }
    }

    static StoriesAdapterInterface a(StoriesAdapter storiesadapter)
    {
        return storiesadapter.o;
    }

    private String a(StoriesListItem storieslistitem)
    {
        if (storieslistitem instanceof StorySnapLogbook)
        {
            String s = ((StorySnapLogbook)storieslistitem).e().ay();
            if (s == null)
            {
                s = "";
            }
            return s;
        }
        if (storieslistitem instanceof RecentStoryCollection)
        {
            return (new StringBuilder()).append(storieslistitem.a()).append("&recent").toString();
        }
        if (storieslistitem instanceof MyStoryGroupStoriesListItem)
        {
            return (new StringBuilder()).append(storieslistitem.a()).append("&myStoryGroup").toString();
        }
        if (storieslistitem instanceof StoryGroupStoriesListItem)
        {
            return (new StringBuilder()).append(storieslistitem.a()).append("&sharedStoryGroup").toString();
        } else
        {
            return storieslistitem.a();
        }
    }

    private void a(View view, SharedStorySearchResult sharedstorysearchresult)
    {
        StoriesListItemViewHolder storieslistitemviewholder = (StoriesListItemViewHolder)view.getTag();
        storieslistitemviewholder.a(sharedstorysearchresult.b());
        storieslistitemviewholder.m.setVisibility(8);
        storieslistitemviewholder.B.setOnClickListener(new android.view.View.OnClickListener(sharedstorysearchresult) {

            final SharedStorySearchResult a;
            final StoriesAdapter b;

            public void onClick(View view1)
            {
                String s = a.d();
                if (s == null)
                {
                    Object aobj[] = new Object[1];
                    aobj[0] = a.b();
                    s = LocalizationUtils.a(0x7f0c0018, aobj);
                }
                (new TwoButtonDialog(this, StoriesAdapter.c(b), s, LocalizationUtils.a(0x7f0c0142, new Object[0]), LocalizationUtils.a(0x7f0c0216, new Object[0])) {

                    final _cls11 a;

                    protected void a()
                    {
                        (new HideSharedStoryTask(a.a.a(), false)).g();
                    }

                    protected void b()
                    {
                    }

            
            {
                a = _pcls11;
                super(context, s, s1, s2);
            }
                }).show();
            }

            
            {
                b = StoriesAdapter.this;
                a = sharedstorysearchresult;
                super();
            }
        });
        storieslistitemviewholder.B.setVisibility(0);
    }

    private void a(View view, StoryGroupStoriesListItem storygroupstorieslistitem)
    {
        StoriesListItemViewHolder storieslistitemviewholder = (StoriesListItemViewHolder)view.getTag();
        StoryGroup storygroup = storygroupstorieslistitem.e();
        storygroup.a(storieslistitemviewholder);
        storieslistitemviewholder.b(o.a(storygroupstorieslistitem.d()));
        storieslistitemviewholder.v();
        if (!(storygroupstorieslistitem instanceof MyStoryGroupStoriesListItem))
        {
            storieslistitemviewholder.B.setVisibility(0);
            storieslistitemviewholder.B.setBackgroundResource(0x7f0201c3);
            storieslistitemviewholder.B.setOnClickListener(new android.view.View.OnClickListener(storygroupstorieslistitem) {

                final StoryGroupStoriesListItem a;
                final StoriesAdapter b;

                public void onClick(View view1)
                {
                    StoriesAdapter.b(b).hideSoftInputFromWindow(view1.getWindowToken(), 0);
                    BusProvider.a().a(new SharedStoryButtonClickedEvent(a.e()));
                }

            
            {
                b = StoriesAdapter.this;
                a = storygroupstorieslistitem;
                super();
            }
            });
        }
        view.setOnClickListener(new android.view.View.OnClickListener(storieslistitemviewholder, storygroupstorieslistitem) {

            final StoriesListItemViewHolder a;
            final StoryGroupStoriesListItem b;
            final StoriesAdapter c;

            public void onClick(View view1)
            {
                if (!a.w())
                {
                    StoriesAdapter.a(c, a.H);
                    if (!TextUtils.isEmpty(a.m.getText()))
                    {
                        if (StoriesAdapter.a(c).a(b.d()))
                        {
                            if (b.e().l().size() == 0)
                            {
                                a.d(true);
                            }
                        } else
                        {
                            a.c(true);
                        }
                    }
                    BusProvider.a().a(new ToggleStoryEvent(b.e()));
                }
                StoriesAdapter.b(c).hideSoftInputFromWindow(view1.getWindowToken(), 0);
            }

            
            {
                c = StoriesAdapter.this;
                a = storieslistitemviewholder;
                b = storygroupstorieslistitem;
                super();
            }
        });
        storieslistitemviewholder.y.setOnClickListener(new android.view.View.OnClickListener(storygroup) {

            final StoryGroup a;
            final StoriesAdapter b;

            public void onClick(View view1)
            {
                (new ConfirmSaveStoryToGalleryDialog(StoriesAdapter.c(b), a)).a();
            }

            
            {
                b = StoriesAdapter.this;
                a = storygroup;
                super();
            }
        });
    }

    private void a(View view, Friend friend)
    {
        StoriesListItemViewHolder storieslistitemviewholder = (StoriesListItemViewHolder)view.getTag();
        storieslistitemviewholder.z.setOnClickListener(new android.view.View.OnClickListener(friend, storieslistitemviewholder) {

            final Friend a;
            final StoriesListItemViewHolder b;
            final StoriesAdapter c;

            public void onClick(View view1)
            {
                StoriesAdapter.b(c).hideSoftInputFromWindow(view1.getWindowToken(), 0);
                StoriesAdapter.a(c, a, b);
            }

            
            {
                c = StoriesAdapter.this;
                a = friend;
                b = storieslistitemviewholder;
                super();
            }
        });
        storieslistitemviewholder.B.setOnClickListener(new android.view.View.OnClickListener(friend) {

            final Friend a;
            final StoriesAdapter b;

            public void onClick(View view1)
            {
                StoriesAdapter.b(b).hideSoftInputFromWindow(view1.getWindowToken(), 0);
                BusProvider.a().a(new SharedStoryFriendButtonClickedEvent(a));
            }

            
            {
                b = StoriesAdapter.this;
                a = friend;
                super();
            }
        });
        if (storieslistitemviewholder.H == l)
        {
            if (!friend.H())
            {
                storieslistitemviewholder.b(true);
            }
        } else
        {
            storieslistitemviewholder.b(false);
        }
        if (friend.H())
        {
            storieslistitemviewholder.B.setBackgroundResource(0x7f0201c4);
            storieslistitemviewholder.B.setVisibility(0);
            storieslistitemviewholder.b(c.getResources().getColor(0x7f080037));
            return;
        }
        if (!friend.E())
        {
            if (!friend.g())
            {
                storieslistitemviewholder.a(friend, o, g);
                storieslistitemviewholder.z();
            }
            view.setOnClickListener(new StoriesListItemOnClickListener(new FriendStoriesListItemSelector(storieslistitemviewholder, friend, this, o), o, friend));
            return;
        } else
        {
            storieslistitemviewholder.a(friend, o, g);
            return;
        }
    }

    private void a(View view, RecentStoryCollection recentstorycollection)
    {
        StoriesListItemViewHolder storieslistitemviewholder = (StoriesListItemViewHolder)view.getTag();
        List list = recentstorycollection.z();
        Friend friend = FriendUtils.a(recentstorycollection.a(), User.c());
        if (friend.H())
        {
            storieslistitemviewholder.b(c.getResources().getColor(0x7f080037));
            storieslistitemviewholder.B.setBackgroundResource(0x7f0201c4);
            storieslistitemviewholder.B.setVisibility(0);
        }
        storieslistitemviewholder.B.setOnClickListener(new android.view.View.OnClickListener(friend) {

            final Friend a;
            final StoriesAdapter b;

            public void onClick(View view1)
            {
                StoriesAdapter.b(b).hideSoftInputFromWindow(view1.getWindowToken(), 0);
                BusProvider.a().a(new SharedStoryFriendButtonClickedEvent(a));
            }

            
            {
                b = StoriesAdapter.this;
                a = friend;
                super();
            }
        });
        if (!list.isEmpty())
        {
            view.setOnClickListener(new RecentUpdatesStoriesListItemOnClickListener(storieslistitemviewholder, o, recentstorycollection));
            return;
        } else
        {
            view.setOnClickListener(new android.view.View.OnClickListener(recentstorycollection) {

                final RecentStoryCollection a;
                final StoriesAdapter b;

                public void onClick(View view1)
                {
                    StoriesAdapter.a(b).a(a);
                }

            
            {
                b = StoriesAdapter.this;
                a = recentstorycollection;
                super();
            }
            });
            return;
        }
    }

    private void a(View view, StorySnapLogbook storysnaplogbook)
    {
        StoriesListItemViewHolder storieslistitemviewholder = (StoriesListItemViewHolder)view.getTag();
        StorySnap storysnap = storysnaplogbook.e();
        boolean flag;
        if (storieslistitemviewholder.H == l)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(storieslistitemviewholder, storysnaplogbook, flag);
        storieslistitemviewholder.v.setOnClickListener(new android.view.View.OnClickListener(storysnaplogbook, storieslistitemviewholder) {

            final StorySnapLogbook a;
            final StoriesListItemViewHolder b;
            final StoriesAdapter c;

            public void onClick(View view1)
            {
                StoriesAdapter.b(c).hideSoftInputFromWindow(view1.getWindowToken(), 0);
                StoriesAdapter.b(c, a, b);
            }

            
            {
                c = StoriesAdapter.this;
                a = storysnaplogbook;
                b = storieslistitemviewholder;
                super();
            }
        });
        storieslistitemviewholder.s.setOnClickListener(new android.view.View.OnClickListener(storysnaplogbook, storieslistitemviewholder) {

            final StorySnapLogbook a;
            final StoriesListItemViewHolder b;
            final StoriesAdapter c;

            public void onClick(View view1)
            {
                StoriesAdapter.b(c).hideSoftInputFromWindow(view1.getWindowToken(), 0);
                StoriesAdapter.c(c, a, b);
            }

            
            {
                c = StoriesAdapter.this;
                a = storysnaplogbook;
                b = storieslistitemviewholder;
                super();
            }
        });
        if (storieslistitemviewholder.H == l)
        {
            storieslistitemviewholder.b(true);
            if (storieslistitemviewholder.E == null)
            {
                storieslistitemviewholder.y();
            }
            storieslistitemviewholder.a(storysnaplogbook, f, c);
            storieslistitemviewholder.E.setVisibility(0);
            if (n.a())
            {
                n.a(false);
            }
        } else
        {
            if (storieslistitemviewholder.E != null)
            {
                storieslistitemviewholder.E.setVisibility(8);
            }
            storieslistitemviewholder.b(false);
        }
        if (storysnap.aE())
        {
            view.setOnClickListener(new android.view.View.OnClickListener(storysnaplogbook) {

                final StorySnapLogbook a;
                final StoriesAdapter b;

                public void onClick(View view1)
                {
                    StoriesAdapter.b(b).hideSoftInputFromWindow(view1.getWindowToken(), 0);
                    StoriesAdapter.a(b).a(a);
                }

            
            {
                b = StoriesAdapter.this;
                a = storysnaplogbook;
                super();
            }
            });
            return;
        } else
        {
            view.setOnClickListener(new SelectableListItemOnClickListener((int)ViewUtils.a(120F, c), new StoryViewersStoriesListItemSelector(storieslistitemviewholder, storysnaplogbook, this, f, c)));
            return;
        }
    }

    static void a(StoriesAdapter storiesadapter, StoriesListItemViewHolder storieslistitemviewholder, boolean flag)
    {
        storiesadapter.b(storieslistitemviewholder, flag);
    }

    static void a(StoriesAdapter storiesadapter, Friend friend, StoriesListItemViewHolder storieslistitemviewholder)
    {
        storiesadapter.a(friend, storieslistitemviewholder);
    }

    static void a(StoriesAdapter storiesadapter, StorySnapLogbook storysnaplogbook, StoriesListItemViewHolder storieslistitemviewholder)
    {
        storiesadapter.b(storysnaplogbook, storieslistitemviewholder);
    }

    private void a(StoriesListItemViewHolder storieslistitemviewholder, StorySnapLogbook storysnaplogbook, boolean flag)
    {
        storysnaplogbook.a(storieslistitemviewholder);
        if (storysnaplogbook.e().aF())
        {
            flag = true;
        }
        if (storysnaplogbook.i() != null)
        {
            int i1 = storysnaplogbook.i().a();
            int j1 = storysnaplogbook.i().b();
            if (i1 > 0)
            {
                storieslistitemviewholder.n.setVisibility(0);
                storieslistitemviewholder.o.setVisibility(0);
                storieslistitemviewholder.o.setText(NumberFormatUtils.a(i1));
            } else
            {
                storieslistitemviewholder.n.setVisibility(8);
                storieslistitemviewholder.o.setVisibility(8);
            }
            if (j1 > 0)
            {
                storieslistitemviewholder.p.setVisibility(0);
                storieslistitemviewholder.q.setVisibility(0);
                storieslistitemviewholder.q.setText(NumberFormatUtils.a(j1));
            } else
            {
                storieslistitemviewholder.p.setVisibility(8);
                storieslistitemviewholder.q.setVisibility(8);
            }
        }
        if (flag)
        {
            storieslistitemviewholder.n.setVisibility(8);
            storieslistitemviewholder.o.setVisibility(8);
            storieslistitemviewholder.p.setVisibility(8);
            storieslistitemviewholder.q.setVisibility(8);
        }
    }

    private void a(StoriesListItemViewHolder storieslistitemviewholder, boolean flag)
    {
        ProgressBar progressbar = storieslistitemviewholder.j;
        int i1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 8;
        }
        progressbar.setVisibility(i1);
        b(storieslistitemviewholder, flag);
    }

    private void a(Friend friend, StoriesListItemViewHolder storieslistitemviewholder)
    {
        User user = User.c();
        if (user == null)
        {
            return;
        }
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(c);
        String s = friend.a();
        if (friend.r_())
        {
            s = (new StringBuilder()).append(friend.b()).append(" (").append(friend.a()).append(")").toString();
        }
        builder.setTitle(s);
        if (FriendUtils.e(friend.a(), user))
        {
            CharSequence acharsequence[] = new CharSequence[3];
            acharsequence[0] = c.getString(0x7f0c00fe);
            acharsequence[1] = c.getString(0x7f0c00be);
            acharsequence[2] = c.getString(0x7f0c00fd);
            builder.setItems(acharsequence, new android.content.DialogInterface.OnClickListener(friend, storieslistitemviewholder) {

                final Friend a;
                final StoriesListItemViewHolder b;
                final StoriesAdapter c;

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    switch (i1)
                    {
                    default:
                        return;

                    case 0: // '\0'
                        StoriesAdapter.b(c, a, b);
                        return;

                    case 1: // '\001'
                        StoriesAdapter.c(c, a, b);
                        return;

                    case 2: // '\002'
                        StoriesAdapter.d(c, a, b);
                        break;
                    }
                }

            
            {
                c = StoriesAdapter.this;
                a = friend;
                b = storieslistitemviewholder;
                super();
            }
            });
        }
        builder.create().show();
    }

    private void a(StorySnapLogbook storysnaplogbook, StoriesListItemViewHolder storieslistitemviewholder)
    {
        Resources resources = SnapchatApplication.e().getResources();
        String s = resources.getString(0x7f0c00bf);
        String s1 = resources.getString(0x7f0c022a);
        String s2 = resources.getString(0x7f0c003d);
        (new TwoButtonDialog(c, s, s1, s2, storysnaplogbook, storieslistitemviewholder) {

            final StorySnapLogbook a;
            final StoriesListItemViewHolder b;
            final StoriesAdapter c;

            protected void a()
            {
            }

            protected void b()
            {
                StoriesAdapter.a(c, a, b);
            }

            
            {
                c = StoriesAdapter.this;
                a = storysnaplogbook;
                b = storieslistitemviewholder;
                super(context, s, s1, s2);
            }
        }).show();
    }

    static InputMethodManager b(StoriesAdapter storiesadapter)
    {
        return storiesadapter.j;
    }

    static void b(StoriesAdapter storiesadapter, Friend friend, StoriesListItemViewHolder storieslistitemviewholder)
    {
        storiesadapter.d(friend, storieslistitemviewholder);
    }

    static void b(StoriesAdapter storiesadapter, StorySnapLogbook storysnaplogbook, StoriesListItemViewHolder storieslistitemviewholder)
    {
        storiesadapter.c(storysnaplogbook, storieslistitemviewholder);
    }

    private void b(StoriesListItemViewHolder storieslistitemviewholder, boolean flag)
    {
        ImageView imageview = storieslistitemviewholder.i;
        float f1;
        if (flag)
        {
            f1 = 0.7F;
        } else
        {
            f1 = 1.0F;
        }
        imageview.setAlpha(f1);
    }

    private void b(Friend friend, StoriesListItemViewHolder storieslistitemviewholder)
    {
        (new StoriesFriendActionTask(FriendAction.BLOCK, friend, friend.a(), null, false, null, storieslistitemviewholder)).executeOnExecutor(ScExecutors.b, new String[0]);
    }

    private void b(StorySnapLogbook storysnaplogbook, StoriesListItemViewHolder storieslistitemviewholder)
    {
        if (storysnaplogbook.e().aE())
        {
            String s = storysnaplogbook.e().ay();
            d.a(storysnaplogbook.d(), s);
            o.c();
        } else
        {
            (new DeleteStorySnapTask(storysnaplogbook, c, storysnaplogbook, storieslistitemviewholder) {

                final StorySnapLogbook a;
                final StoriesListItemViewHolder b;
                final StoriesAdapter c;

                protected void a(ServerResponse serverresponse)
                {
                    super.a(serverresponse);
                    StoriesAdapter.a(c, b, false);
                }

                protected void a(String s1, int i1)
                {
                    super.a(s1, i1);
                    a.a(com.snapchat.android.model.StorySnapLogbook.ActionState.READY);
                }

                protected void b(ServerResponse serverresponse)
                {
                    super.b(serverresponse);
                    a.a(com.snapchat.android.model.StorySnapLogbook.ActionState.DELETED);
                    StoriesAdapter.a(c).c();
                    c.a();
                }

                protected void onPostExecute(Object obj)
                {
                    a((ServerResponse)obj);
                }

                protected void onPreExecute()
                {
                    super.onPreExecute();
                    a.a(com.snapchat.android.model.StorySnapLogbook.ActionState.DELETING);
                    StoriesAdapter.a(c, b, true);
                }

            
            {
                c = StoriesAdapter.this;
                a = storysnaplogbook1;
                b = storieslistitemviewholder;
                super(storysnaplogbook, context);
            }
            }).executeOnExecutor(ScExecutors.b, new String[0]);
        }
        AnalyticsEvents.c(storysnaplogbook.e().ay());
    }

    static Context c(StoriesAdapter storiesadapter)
    {
        return storiesadapter.c;
    }

    static void c(StoriesAdapter storiesadapter, Friend friend, StoriesListItemViewHolder storieslistitemviewholder)
    {
        storiesadapter.c(friend, storieslistitemviewholder);
    }

    static void c(StoriesAdapter storiesadapter, StorySnapLogbook storysnaplogbook, StoriesListItemViewHolder storieslistitemviewholder)
    {
        storiesadapter.a(storysnaplogbook, storieslistitemviewholder);
    }

    private void c(Friend friend, StoriesListItemViewHolder storieslistitemviewholder)
    {
        (new StoriesFriendActionTask(FriendAction.DELETE, friend, friend.a(), null, false, null, storieslistitemviewholder)).executeOnExecutor(ScExecutors.b, new String[0]);
    }

    private void c(StorySnapLogbook storysnaplogbook, StoriesListItemViewHolder storieslistitemviewholder)
    {
        StorySnap storysnap = storysnaplogbook.e();
        if (storysnap.ao() == 0)
        {
            Bitmap bitmap = storysnap.a(c);
            if (bitmap == null)
            {
                AlertDialogUtils.a(0x7f0c016f, c);
            } else
            {
                (new SaveImageToGalleryTask(c, bitmap, storysnaplogbook) {

                    final StorySnapLogbook a;
                    final StoriesAdapter b;

                    protected void a()
                    {
                        super.a();
                        a.a(com.snapchat.android.model.StorySnapLogbook.ActionState.SAVED);
                    }

                    protected void b()
                    {
                        super.b();
                        a.a(com.snapchat.android.model.StorySnapLogbook.ActionState.READY);
                    }

                    protected void onPreExecute()
                    {
                        super.onPreExecute();
                        a.a(com.snapchat.android.model.StorySnapLogbook.ActionState.SAVING);
                    }

            
            {
                b = StoriesAdapter.this;
                a = storysnaplogbook;
                super(context, bitmap);
            }
                }).executeOnExecutor(ScExecutors.c, new Void[0]);
            }
        } else
        {
            String s = storysnap.P();
            (new SaveVideoToGalleryTask(c, s, storysnaplogbook) {

                final StorySnapLogbook a;
                final StoriesAdapter b;

                protected void a()
                {
                    super.a();
                    a.a(com.snapchat.android.model.StorySnapLogbook.ActionState.SAVED);
                }

                protected void b()
                {
                    super.b();
                    a.a(com.snapchat.android.model.StorySnapLogbook.ActionState.READY);
                }

                protected void onPreExecute()
                {
                    super.onPreExecute();
                    a.a(com.snapchat.android.model.StorySnapLogbook.ActionState.SAVING);
                }

            
            {
                b = StoriesAdapter.this;
                a = storysnaplogbook;
                super(context, s);
            }
            }).executeOnExecutor(ScExecutors.c, new Void[0]);
        }
        AnalyticsEvents.a(storysnap);
    }

    static void d(StoriesAdapter storiesadapter, Friend friend, StoriesListItemViewHolder storieslistitemviewholder)
    {
        storiesadapter.b(friend, storieslistitemviewholder);
    }

    private void d(Friend friend, StoriesListItemViewHolder storieslistitemviewholder)
    {
        EditNameDialog editnamedialog = new EditNameDialog(c, friend, friend, storieslistitemviewholder) {

            final Friend a;
            final StoriesListItemViewHolder b;
            final StoriesAdapter c;

            protected void a(String s)
            {
                (new StoriesFriendActionTask(this, FriendAction.SET_DISPLAY_NAME, a, a.a(), s, false, a.b(), b, s) {

                    final String a;
                    final _cls17 b;

                    protected void b(ServerResponse serverresponse)
                    {
                        super.b(serverresponse);
                        b.a.d(a);
                        b.c.a();
                    }

            
            {
                b = _pcls17;
                a = s3;
                _pcls17.c. super(friendaction, friend, s, s1, flag, s2, storieslistitemviewholder);
            }
                }).executeOnExecutor(ScExecutors.b, new String[0]);
            }

            
            {
                c = StoriesAdapter.this;
                a = friend1;
                b = storieslistitemviewholder;
                super(context, friend);
            }
        };
        editnamedialog.show();
        editnamedialog.getWindow().setSoftInputMode(32);
    }

    public void a()
    {
        boolean flag;
        if (l != -1 || m.b() || n.a())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = -1;
        m.a();
        n.b();
        if (flag)
        {
            notifyDataSetChanged();
        }
    }

    public void a(int i1)
    {
        l = i1;
    }

    public void a(StoriesListItem storieslistitem, StoriesListItemViewHolder storieslistitemviewholder)
    {
        storieslistitemviewholder.i.setVisibility(0);
        String s = a(storieslistitem);
        Bitmap bitmap = k.a(s);
        storieslistitemviewholder.i.setAlpha(1.0F);
        RecentStoryCollection recentstorycollection;
        if (bitmap == null)
        {
            storieslistitemviewholder.i.setImageResource(0x7f0201e4);
        } else
        {
            storieslistitemviewholder.i.setImageBitmap(bitmap);
        }
        if ((storieslistitem instanceof StorySnapLogbook) && bitmap == null)
        {
            StorySnap storysnap1 = ((StorySnapLogbook)storieslistitem).e();
            if (storysnap1.aF() || storysnap1.aE())
            {
                Bitmap bitmap1 = a((StorySnapLogbook)storieslistitem);
                if (bitmap1 != null)
                {
                    storieslistitemviewholder.i.setImageBitmap(bitmap1);
                }
            }
        }
        k.a(getContext(), storieslistitem, s);
        if (!(storieslistitem instanceof RecentStoryCollection)) goto _L2; else goto _L1
_L1:
        recentstorycollection = (RecentStoryCollection)storieslistitem;
        a(storieslistitemviewholder, recentstorycollection.p());
        if (!recentstorycollection.y().isEmpty()) goto _L4; else goto _L3
_L3:
        storieslistitemviewholder.i.setVisibility(8);
        if (recentstorycollection.N()) goto _L4; else goto _L5
_L5:
        storieslistitemviewholder.k.setVisibility(0);
        if (!(recentstorycollection instanceof SponsoredStoryCollection)) goto _L7; else goto _L6
_L6:
        storieslistitemviewholder.k.setImageResource(0x7f0201e5);
        storieslistitemviewholder.k.setOnClickListener(new android.view.View.OnClickListener(recentstorycollection) {

            final RecentStoryCollection a;
            final StoriesAdapter b;

            public void onClick(View view)
            {
                ((SponsoredStoryCollection)a).s();
                b.notifyDataSetChanged();
            }

            
            {
                b = StoriesAdapter.this;
                a = recentstorycollection;
                super();
            }
        });
_L4:
        return;
_L7:
        storieslistitemviewholder.k.setImageResource(0x7f0200c4);
        storieslistitemviewholder.k.setOnClickListener(new android.view.View.OnClickListener(storieslistitem) {

            final StoriesListItem a;
            final StoriesAdapter b;

            public void onClick(View view)
            {
                BusProvider.a().a(new RecentStoryReplyEvent(a.a()));
                b.a();
            }

            
            {
                b = StoriesAdapter.this;
                a = storieslistitem;
                super();
            }
        });
        return;
_L2:
        if (!(storieslistitem instanceof StorySnapLogbook))
        {
            continue; /* Loop/switch isn't completed */
        }
        StorySnap storysnap = ((StorySnapLogbook)storieslistitem).e();
        boolean flag;
        if (storysnap.aF() || storysnap.Z())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(storieslistitemviewholder, flag);
        if (storysnap.aE())
        {
            storieslistitemviewholder.i.setAlpha(0.7F);
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (!(storieslistitem instanceof Friend)) goto _L4; else goto _L8
_L8:
        StoryCollection storycollection = StoryLibrary.a().c(storieslistitem.a());
        if (storycollection != null)
        {
            a(storieslistitemviewholder, storycollection.p());
            return;
        }
        if (true) goto _L4; else goto _L9
_L9:
    }

    public void a(StoriesListItemViewHolder storieslistitemviewholder, StoriesListItem storieslistitem)
    {
        if (TextUtils.isEmpty(o.b())) goto _L2; else goto _L1
_L1:
        if (!storieslistitem.r_()) goto _L4; else goto _L3
_L3:
        storieslistitemviewholder.a(storieslistitem.b());
        storieslistitemviewholder.m.setText(storieslistitem.a());
        storieslistitemviewholder.m.setVisibility(0);
_L10:
        return;
_L4:
        storieslistitemviewholder.a(storieslistitem.a());
        storieslistitemviewholder.m.setText("");
        storieslistitemviewholder.m.setVisibility(8);
        return;
_L2:
        storieslistitemviewholder.m.setAlpha(1.0F);
        if (storieslistitemviewholder.w()) goto _L6; else goto _L5
_L5:
        if (l == storieslistitemviewholder.H)
        {
            storieslistitemviewholder.m.setVisibility(0);
            storieslistitemviewholder.b(true);
        } else
        {
            storieslistitemviewholder.m.setVisibility(8);
            storieslistitemviewholder.b(false);
        }
_L8:
        storieslistitemviewholder.a(storieslistitem.b());
        storieslistitemviewholder.m.setText(storieslistitem.a());
        if (storieslistitem instanceof StoryGroupStoriesListItem)
        {
            StoryGroupStoriesListItem storygroupstorieslistitem = (StoryGroupStoriesListItem)storieslistitem;
            if (o.a(storygroupstorieslistitem.d()) && !storieslistitemviewholder.w())
            {
                storieslistitemviewholder.m.setVisibility(0);
            }
            storieslistitemviewholder.a(storygroupstorieslistitem, true);
            return;
        }
        break; /* Loop/switch isn't completed */
_L6:
        if (l == -1)
        {
            storieslistitemviewholder.x();
            storieslistitemviewholder.m.setVisibility(8);
        }
        if (true) goto _L8; else goto _L7
_L7:
        RecentStoryCollection recentstorycollection;
        List list;
        if (storieslistitem instanceof StorySnapLogbook)
        {
            StorySnapLogbook storysnaplogbook = (StorySnapLogbook)storieslistitem;
            storieslistitemviewholder.m.setVisibility(0);
            storieslistitemviewholder.a(storysnaplogbook);
            storieslistitemviewholder.b(storysnaplogbook);
            return;
        }
        if (!(storieslistitem instanceof RecentStoryCollection))
        {
            continue; /* Loop/switch isn't completed */
        }
        recentstorycollection = (RecentStoryCollection)storieslistitem;
        list = recentstorycollection.z();
        if (recentstorycollection instanceof SponsoredStoryCollection)
        {
            storieslistitemviewholder.a(recentstorycollection);
            storieslistitemviewholder.b(getContext().getResources().getColor(0x7f080037));
            storieslistitemviewholder.m.setVisibility(0);
            o.a((SponsoredStoryCollection)recentstorycollection);
        }
        if (list.isEmpty()) goto _L10; else goto _L9
_L9:
        storieslistitemviewholder.a(recentstorycollection);
        if (recentstorycollection.o() || recentstorycollection.p()) goto _L10; else goto _L11
_L11:
        storieslistitemviewholder.m.setVisibility(0);
        return;
        if (!(storieslistitem instanceof Friend)) goto _L10; else goto _L12
_L12:
        Friend friend = (Friend)storieslistitem;
        storieslistitemviewholder.a(friend);
        storieslistitemviewholder.a(friend, true);
        return;
    }

    public void a(String s, ImageView imageview)
    {
        Bitmap bitmap = k.a(s);
        if (bitmap == null)
        {
            return;
        } else
        {
            imageview.setImageBitmap(bitmap);
            AnimationSet animationset = new AnimationSet(true);
            ScaleAnimation scaleanimation = new ScaleAnimation(0.5F, 1.0F, 0.5F, 1.0F, 0.5F, 0.5F);
            scaleanimation.setDuration(200L);
            scaleanimation.setFillAfter(true);
            TranslateAnimation translateanimation = new TranslateAnimation(1, 0.25F, 1, 0.0F, 1, 0.25F, 1, 0.0F);
            translateanimation.setDuration(200L);
            RotateAnimation rotateanimation = new RotateAnimation(90F, 0.0F, 1, 0.5F, 1, 0.5F);
            rotateanimation.setDuration(200L);
            AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
            alphaanimation.setDuration(230L);
            animationset.addAnimation(scaleanimation);
            animationset.addAnimation(translateanimation);
            animationset.addAnimation(rotateanimation);
            animationset.addAnimation(alphaanimation);
            imageview.startAnimation(animationset);
            return;
        }
    }

    public void a(List list)
    {
        if (list == null)
        {
            a = e;
        } else
        {
            a = list;
        }
        notifyDataSetChanged();
    }

    public ExpandedStoriesListItemViewHolder b()
    {
        return m;
    }

    public MyStoryIconsToHideWhenExpanded c()
    {
        return n;
    }

    public int getCount()
    {
        return a.size();
    }

    public Filter getFilter()
    {
        if (i == null)
        {
            i = new StoriesFilter(e, b, this, o);
        }
        return i;
    }

    public long getHeaderId(int i1)
    {
        StoriesListItem storieslistitem = (StoriesListItem)a.get(i1);
        return (long)h.a(h.a(storieslistitem, i1, o.h()), storieslistitem, c).hashCode();
    }

    public View getHeaderView(int i1, View view, ViewGroup viewgroup)
    {
        HeaderViewHolder headerviewholder;
        StoriesListItem storieslistitem;
        com.snapchat.android.util.FriendSectionizer.FriendSection friendsection;
        String s;
        if (view == null)
        {
            headerviewholder = new HeaderViewHolder();
            view = f.inflate(0x7f040070, viewgroup, false);
            headerviewholder.a = (TextView)view.findViewById(0x7f0a006d);
            view.setTag(headerviewholder);
        } else
        {
            headerviewholder = (HeaderViewHolder)view.getTag();
        }
        storieslistitem = (StoriesListItem)a.get(i1);
        friendsection = h.a(storieslistitem, i1, o.h());
        s = h.a(friendsection, storieslistitem, c);
        headerviewholder.a.setText(s);
        view.findViewById(0x7f0a006d).setVisibility(0);
        view.findViewById(0x7f0a006e).setVisibility(0);
        ((TextView)view.findViewById(0x7f0a006d)).setTextColor(c.getResources().getColor(0x7f080037));
        if (friendsection == com.snapchat.android.util.FriendSectionizer.FriendSection.ME)
        {
            view.findViewById(0x7f0a006d).setVisibility(8);
            view.findViewById(0x7f0a006e).setVisibility(8);
        }
        return view;
    }

    public View getView(int i1, View view, ViewGroup viewgroup)
    {
        StoriesListItem storieslistitem;
        StoriesListItemViewHolder storieslistitemviewholder1;
        storieslistitem = (StoriesListItem)a.get(i1);
        if (view == null)
        {
            view = f.inflate(0x7f04008c, viewgroup, false);
            StoriesListItemViewHolder storieslistitemviewholder2 = new StoriesListItemViewHolder(view);
            view.setTag(storieslistitemviewholder2);
            storieslistitemviewholder1 = storieslistitemviewholder2;
        } else
        {
            StoriesListItemViewHolder storieslistitemviewholder = (StoriesListItemViewHolder)view.getTag();
            if (!storieslistitem.equals(storieslistitemviewholder.G))
            {
                storieslistitemviewholder.j.setVisibility(8);
            }
            storieslistitemviewholder.t();
            view.setOnClickListener(null);
            view.setOnTouchListener(null);
            storieslistitemviewholder1 = storieslistitemviewholder;
        }
        if (!storieslistitem.equals(storieslistitemviewholder1.G))
        {
            storieslistitemviewholder1.x();
        }
        storieslistitemviewholder1.G = storieslistitem;
        storieslistitemviewholder1.H = i1;
        storieslistitemviewholder1.i.clearAnimation();
        storieslistitemviewholder1.i.setTag(a(storieslistitem));
        if (storieslistitemviewholder1.E != null)
        {
            storieslistitemviewholder1.E.setVisibility(8);
        }
        a(storieslistitemviewholder1, storieslistitem);
        a(storieslistitem, storieslistitemviewholder1);
        view.setOnTouchListener(new StoryItemTouchListener(i1, storieslistitem));
        if (i1 != l || !(storieslistitem instanceof StorySnapLogbook)) goto _L2; else goto _L1
_L1:
        m.a(storieslistitemviewholder1.E, storieslistitemviewholder1, storieslistitem);
        n.a((StorySnapLogbook)storieslistitem, storieslistitemviewholder1);
_L8:
        if (!(storieslistitem instanceof StorySnapLogbook)) goto _L4; else goto _L3
_L3:
        a(view, (StorySnapLogbook)storieslistitem);
_L6:
        return view;
_L2:
        if (storieslistitemviewholder1.E == m.b)
        {
            m.a();
            n.b();
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (storieslistitem instanceof StoryGroupStoriesListItem)
        {
            a(view, (StoryGroupStoriesListItem)storieslistitem);
            return view;
        }
        if (storieslistitem instanceof SharedStorySearchResult)
        {
            a(view, (SharedStorySearchResult)storieslistitem);
            return view;
        }
        if (storieslistitem instanceof RecentStoryCollection)
        {
            a(view, (RecentStoryCollection)storieslistitem);
            return view;
        }
        if (!(storieslistitem instanceof Friend)) goto _L6; else goto _L5
_L5:
        a(view, (Friend)storieslistitem);
        return view;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
