// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.discover.ui.DSnapIntroVideoView;
import com.snapchat.android.discover.ui.DSnapView;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            EditionViewerPager

public class EditionCursorPagerAdapter extends PagerAdapter
{
    public static interface EditionCursorPagerAdapterListener
    {

        public abstract void a(String s, int i, MediaState mediastate);
    }

    static class EditionItem
    {

        public final View a;
        public final String b;
        public boolean c;

        public EditionItem(View view, String s, boolean flag)
        {
            a = view;
            b = s;
            c = flag;
        }
    }


    private final DiscoverViewTrackingManager a;
    private final DiscoverRepository b;
    private final LayoutInflater c;
    private final EditionCursorPagerAdapterListener d;
    private final ChannelPage e;
    private boolean f;
    private ArrayList g;

    public EditionCursorPagerAdapter(Context context, ChannelPage channelpage, EditionCursorPagerAdapterListener editioncursorpageradapterlistener)
    {
        this(channelpage, editioncursorpageradapterlistener, (LayoutInflater)context.getSystemService("layout_inflater"), DiscoverViewTrackingManager.a(), DiscoverRepository.a());
    }

    protected EditionCursorPagerAdapter(ChannelPage channelpage, EditionCursorPagerAdapterListener editioncursorpageradapterlistener, LayoutInflater layoutinflater, DiscoverViewTrackingManager discoverviewtrackingmanager, DiscoverRepository discoverrepository)
    {
        f = false;
        g = new ArrayList();
        c = layoutinflater;
        e = channelpage;
        a = discoverviewtrackingmanager;
        b = discoverrepository;
        d = editioncursorpageradapterlistener;
    }

    private DSnapIntroVideoView a(EditionViewerPager editionviewerpager)
    {
        DSnapIntroVideoView dsnapintrovideoview = (DSnapIntroVideoView)c.inflate(0x7f040043, null);
        dsnapintrovideoview.a(e);
        boolean flag;
        if (a.a(e.f()) != -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        dsnapintrovideoview.setCanAdvance(flag);
        a(((DSnapView) (dsnapintrovideoview)), editionviewerpager);
        return dsnapintrovideoview;
    }

    private DSnapView a(EditionViewerPager editionviewerpager, int i)
    {
        DSnapPage dsnappage = (DSnapPage)g.get(i - 1);
        DSnapView dsnapview = (DSnapView)c.inflate(0x7f040046, null);
        dsnapview.b(e);
        boolean flag;
        if (dsnappage.c().intValue() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        dsnapview.setShouldDisplayOnboardingView(flag);
        dsnapview.a(g, dsnappage, i - 1);
        a(dsnapview, editionviewerpager);
        return dsnapview;
    }

    private String a(int i)
    {
        if (i == 0)
        {
            return "IntroVideo";
        } else
        {
            return ((DSnapPage)g.get(i - 1)).a();
        }
    }

    private void a(DSnapView dsnapview, EditionViewerPager editionviewerpager)
    {
        dsnapview.setAutoAdvanceListener(new com.snapchat.android.discover.ui.DSnapView.OnAutoAdvanceListener(editionviewerpager) {

            final EditionViewerPager a;
            final EditionCursorPagerAdapter b;

            public void a()
            {
                a.b();
            }

            
            {
                b = EditionCursorPagerAdapter.this;
                a = editionviewerpager;
                super();
            }
        });
    }

    public View a(ViewGroup viewgroup, int i)
    {
        if (i == 0)
        {
            return viewgroup.findViewWithTag("IntroVideo");
        }
        if (i < getCount())
        {
            return viewgroup.findViewWithTag(((DSnapPage)g.get(i - 1)).a());
        } else
        {
            return null;
        }
    }

    public void a(Cursor cursor)
    {
        if (cursor != null)
        {
            g = new ArrayList(cursor.getCount());
            int i = 0;
            if (cursor != null)
            {
                boolean flag = cursor.moveToFirst();
                i = 0;
                if (flag)
                {
                    int j = 0;
                    do
                    {
                        DSnapPage dsnappage = b.a(cursor);
                        if (dsnappage == null)
                        {
                            Timber.e("EditionCursorPagerAdapter", "Invalid DSnapPage found in the cursor adapter!", new Object[0]);
                        } else
                        {
                            if (dsnappage.r())
                            {
                                j++;
                            }
                            if (dsnappage.r() && dsnappage.k().b())
                            {
                                Timber.d("EditionCursorPagerAdapter", "Skipping DSnap %s because it is an ad and was not loaded.", new Object[] {
                                    dsnappage
                                });
                            } else
                            if (dsnappage.k() == MediaState.f && dsnappage.p() == 0)
                            {
                                Timber.e("EditionCursorPagerAdapter", "Skipping DSnap %s because it is successfully loaded but has no panels!", new Object[] {
                                    dsnappage
                                });
                            } else
                            if (dsnappage.l() == MediaState.h)
                            {
                                Timber.e("EditionCursorPagerAdapter", "Skipping DSnap %s because there was a content error loading it!", new Object[] {
                                    dsnappage
                                });
                            } else
                            {
                                g.add(dsnappage);
                            }
                        }
                    } while (cursor.moveToNext());
                    i = j;
                }
            }
            f = true;
            a.a(e.f(), 1 + cursor.getCount(), i);
        } else
        {
            g = new ArrayList();
        }
        notifyDataSetChanged();
    }

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
        EditionItem editionitem = (EditionItem)obj;
        ((DSnapView)editionitem.a).f();
        viewgroup.removeView(editionitem.a);
    }

    public int getCount()
    {
        if (!f)
        {
            return 0;
        } else
        {
            return 1 + g.size();
        }
    }

    public int getItemPosition(Object obj)
    {
        EditionItem editionitem = (EditionItem)obj;
        if (editionitem.c)
        {
            return -1;
        }
        Iterator iterator = g.iterator();
        int i = 1;
        do
        {
label0:
            {
                boolean flag = iterator.hasNext();
                DSnapPage dsnappage = null;
                if (flag)
                {
                    DSnapPage dsnappage1 = (DSnapPage)iterator.next();
                    if (!dsnappage1.a().equals(editionitem.b))
                    {
                        break label0;
                    }
                    dsnappage = dsnappage1;
                }
                if (dsnappage != null)
                {
                    ((DSnapView)editionitem.a).a(g, dsnappage, i - 1);
                    d.a(dsnappage.d(), 1 + dsnappage.c().intValue(), dsnappage.k());
                    return i;
                } else
                {
                    return -2;
                }
            }
            i++;
        } while (true);
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        EditionViewerPager editionviewerpager = (EditionViewerPager)viewgroup;
        boolean flag;
        Object obj;
        String s;
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            obj = a(editionviewerpager);
        } else
        {
            obj = a(editionviewerpager, i);
        }
        s = a(i);
        ((View) (obj)).setTag(s);
        editionviewerpager.addView(((View) (obj)), 0);
        return new EditionItem(((View) (obj)), s, flag);
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        EditionItem editionitem = (EditionItem)obj;
        return view.getTag().equals(editionitem.b);
    }
}
