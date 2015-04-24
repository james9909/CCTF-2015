// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import com.snapchat.android.Timber;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.snapchat.android.discover.model:
//            DSnapPage, MediaState, DSnapPanel, ChannelPage

public class DiscoverMediaStateTracker
{

    private static final DiscoverMediaStateTracker a = new DiscoverMediaStateTracker();
    private final Map b = new ConcurrentHashMap();
    private final Map c = new ConcurrentHashMap();
    private final Map d = new ConcurrentHashMap();
    private final Map e = new ConcurrentHashMap();
    private final Map f = new ConcurrentHashMap();
    private final Map g = new ConcurrentHashMap();
    private final Map h = new ConcurrentHashMap();

    public DiscoverMediaStateTracker()
    {
    }

    public static DiscoverMediaStateTracker a()
    {
        return a;
    }

    public MediaState a(DSnapPage dsnappage)
    {
        MediaState mediastate;
        if (dsnappage.g() != null)
        {
            mediastate = (MediaState)f.get(dsnappage.g());
        } else
        {
            mediastate = null;
        }
        if (mediastate != null)
        {
            return mediastate;
        } else
        {
            return MediaState.a;
        }
    }

    public MediaState a(DSnapPanel dsnappanel)
    {
        MediaState mediastate = (MediaState)g.get(dsnappanel.b());
        if (mediastate != null)
        {
            return mediastate;
        } else
        {
            return MediaState.a;
        }
    }

    public boolean a(ChannelPage channelpage)
    {
        return !c(channelpage).a() && !d(channelpage).a() && !e(channelpage).a() && !f(channelpage).a();
    }

    public boolean a(ChannelPage channelpage, MediaState mediastate)
    {
        MediaState mediastate1 = (MediaState)b.put(channelpage.w(), mediastate);
        if (!mediastate.equals(mediastate1))
        {
            Object aobj[] = new Object[3];
            aobj[0] = channelpage.a();
            String s;
            if (mediastate1 != null)
            {
                s = mediastate1.name();
            } else
            {
                s = "NONE";
            }
            aobj[1] = s;
            aobj[2] = mediastate.name();
            Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated intro video loading state for %s from %s to %s", aobj);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean a(DSnapPage dsnappage, MediaState mediastate)
    {
        MediaState mediastate1 = (MediaState)f.put(dsnappage.g(), mediastate);
        if (!mediastate.equals(mediastate1))
        {
            Object aobj[] = new Object[3];
            aobj[0] = dsnappage.g();
            String s;
            if (mediastate1 != null)
            {
                s = mediastate1.name();
            } else
            {
                s = "NONE";
            }
            aobj[1] = s;
            aobj[2] = mediastate.name();
            Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated loading state for %s media from %s to %s", aobj);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean a(DSnapPanel dsnappanel, MediaState mediastate)
    {
        MediaState mediastate1 = (MediaState)g.put(dsnappanel.b(), mediastate);
        if (!mediastate.equals(mediastate1))
        {
            Object aobj[] = new Object[3];
            aobj[0] = dsnappanel;
            String s;
            if (mediastate1 != null)
            {
                s = mediastate1.name();
            } else
            {
                s = "NONE";
            }
            aobj[1] = s;
            aobj[2] = mediastate.name();
            Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated loading state for %s from %s to %s", aobj);
            return true;
        } else
        {
            return false;
        }
    }

    public MediaState b(DSnapPage dsnappage)
    {
        MediaState mediastate;
        if (dsnappage.i().intValue() == 0)
        {
            mediastate = MediaState.f;
        } else
        {
            mediastate = (MediaState)h.get(dsnappage.a());
            if (mediastate == null)
            {
                return MediaState.a;
            }
        }
        return mediastate;
    }

    public void b()
    {
        g.clear();
    }

    public boolean b(ChannelPage channelpage)
    {
        return c(channelpage) == MediaState.f && d(channelpage) == MediaState.f && e(channelpage) == MediaState.f && f(channelpage) == MediaState.f;
    }

    public boolean b(ChannelPage channelpage, MediaState mediastate)
    {
        MediaState mediastate1 = (MediaState)c.put(channelpage.w(), mediastate);
        if (!mediastate.equals(mediastate1))
        {
            Object aobj[] = new Object[3];
            aobj[0] = channelpage.a();
            String s;
            if (mediastate1 != null)
            {
                s = mediastate1.name();
            } else
            {
                s = "NONE";
            }
            aobj[1] = s;
            aobj[2] = mediastate.name();
            Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated filled icon loading state for %s from %s to %s", aobj);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean b(DSnapPage dsnappage, MediaState mediastate)
    {
        if (dsnappage.i().intValue() == 0)
        {
            return true;
        }
        MediaState mediastate1 = (MediaState)h.put(dsnappage.a(), mediastate);
        if (!mediastate.equals(mediastate1))
        {
            Object aobj[] = new Object[3];
            aobj[0] = dsnappage.a();
            String s;
            if (mediastate1 != null)
            {
                s = mediastate1.name();
            } else
            {
                s = "NONE";
            }
            aobj[1] = s;
            aobj[2] = mediastate.name();
            Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated loading state for %s placeholder from %s to %s", aobj);
            return true;
        } else
        {
            return false;
        }
    }

    public MediaState c(ChannelPage channelpage)
    {
        MediaState mediastate = (MediaState)b.get(channelpage.w());
        if (mediastate != null)
        {
            return mediastate;
        } else
        {
            return MediaState.a;
        }
    }

    public boolean c(ChannelPage channelpage, MediaState mediastate)
    {
        MediaState mediastate1 = (MediaState)d.put(channelpage.w(), mediastate);
        if (!mediastate.equals(mediastate1))
        {
            Object aobj[] = new Object[3];
            aobj[0] = channelpage.a();
            String s;
            if (mediastate1 != null)
            {
                s = mediastate1.name();
            } else
            {
                s = "NONE";
            }
            aobj[1] = s;
            aobj[2] = mediastate.name();
            Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated inverted icon loading state for %s from %s to %s", aobj);
            return true;
        } else
        {
            return false;
        }
    }

    public MediaState d(ChannelPage channelpage)
    {
        MediaState mediastate = (MediaState)c.get(channelpage.w());
        if (mediastate != null)
        {
            return mediastate;
        } else
        {
            return MediaState.a;
        }
    }

    public boolean d(ChannelPage channelpage, MediaState mediastate)
    {
        MediaState mediastate1 = (MediaState)e.put(channelpage.w(), mediastate);
        if (!mediastate.equals(mediastate1))
        {
            Object aobj[] = new Object[3];
            aobj[0] = channelpage.a();
            String s;
            if (mediastate1 != null)
            {
                s = mediastate1.name();
            } else
            {
                s = "NONE";
            }
            aobj[1] = s;
            aobj[2] = mediastate.name();
            Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated loading icon loading state for %s from %s to %s", aobj);
            return true;
        } else
        {
            return false;
        }
    }

    public MediaState e(ChannelPage channelpage)
    {
        MediaState mediastate = (MediaState)d.get(channelpage.w());
        if (mediastate != null)
        {
            return mediastate;
        } else
        {
            return MediaState.a;
        }
    }

    public MediaState f(ChannelPage channelpage)
    {
        MediaState mediastate = (MediaState)e.get(channelpage.w());
        if (mediastate != null)
        {
            return mediastate;
        } else
        {
            return MediaState.a;
        }
    }

}
