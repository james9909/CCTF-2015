// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.text.TextUtils;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.fragments.stories.StoriesListItem;
import com.snapchat.android.fragments.stories.StoryGroupStoriesListItem;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.BroadcastSnap;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.RecentStoryCollection;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StoryViewRecord;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.data.gson.GenericSnap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.snapchat.android.util:
//            PrimitiveUtils

public class SnapUtils
{

    public SnapUtils()
    {
    }

    public static SentSnap a(User user, AnnotatedMediabryo annotatedmediabryo)
    {
        if (user != null && annotatedmediabryo != null)
        {
            String s = UserPrefs.k();
            String s1 = annotatedmediabryo.E();
            if (s != null && s1 != null)
            {
                ChatConversation chatconversation = ConversationUtils.a(ChatUtils.a(s, annotatedmediabryo.E()));
                if (chatconversation != null)
                {
                    return chatconversation.c(annotatedmediabryo.N());
                }
            }
        }
        return null;
    }

    private static com.snapchat.android.model.Snap.ClientSnapStatus a(int i)
    {
        switch (i)
        {
        default:
            return com.snapchat.android.model.Snap.ClientSnapStatus.RECEIVED_AND_VIEWED;

        case 0: // '\0'
        case 1: // '\001'
            return com.snapchat.android.model.Snap.ClientSnapStatus.UNVIEWED_AND_LOAD_STATE_TBD;
        }
    }

    public static Snap a(GenericSnap genericsnap)
    {
        String s;
        String s1;
        long l;
        long l1;
        int i;
        int j;
        String s3;
        boolean flag4;
        boolean flag5;
        s = genericsnap.q();
        s1 = a(genericsnap.n(), genericsnap.m());
        l = PrimitiveUtils.a(genericsnap.t());
        l1 = PrimitiveUtils.a(genericsnap.u());
        i = PrimitiveUtils.a(genericsnap.s());
        j = PrimitiveUtils.a(genericsnap.r());
        boolean flag = PrimitiveUtils.a(genericsnap.v());
        boolean flag1;
        String s2;
        double d;
        String s4;
        long l2;
        double d1;
        boolean flag2;
        String s5;
        String s6;
        String s7;
        boolean flag3;
        String s8;
        if (j == 3)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        s2 = genericsnap.a();
        s3 = genericsnap.m();
        if (genericsnap.c() != null)
        {
            d = genericsnap.c().doubleValue();
        } else
        if (genericsnap.b() != null)
        {
            d = genericsnap.b().intValue();
        } else
        {
            d = 0.0D;
        }
        s4 = genericsnap.d();
        l2 = PrimitiveUtils.a(genericsnap.f());
        d1 = PrimitiveUtils.a(genericsnap.e());
        if (PrimitiveUtils.a(genericsnap.g()) == 1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        s5 = genericsnap.h();
        s6 = genericsnap.j();
        s7 = genericsnap.i();
        flag3 = PrimitiveUtils.a(genericsnap.k());
        flag4 = PrimitiveUtils.a(genericsnap.p());
        flag5 = PrimitiveUtils.a(genericsnap.o());
        s8 = genericsnap.l();
        if (s2 != null)
        {
            com.snapchat.android.model.Snap.ClientSnapStatus clientsnapstatus2 = a(j);
            if (flag5 && clientsnapstatus2 == com.snapchat.android.model.Snap.ClientSnapStatus.RECEIVED_AND_VIEWED)
            {
                clientsnapstatus2 = com.snapchat.android.model.Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED;
            }
            if (flag2)
            {
                return new BroadcastSnap(s, l, l1, i, flag, clientsnapstatus2, s2, d, s4, l2, d1, s5, s6, s7, flag3, s8);
            } else
            {
                return new ReceivedSnap(s, l, l1, l, i, flag, clientsnapstatus2, s2, d, s4, flag1, l2, d1, s8);
            }
        }
        if (s3 == null) goto _L2; else goto _L1
_L1:
        com.snapchat.android.model.Snap.ClientSnapStatus clientsnapstatus = b(j);
        if (!flag4) goto _L4; else goto _L3
_L3:
        clientsnapstatus = com.snapchat.android.model.Snap.ClientSnapStatus.PENDING;
_L5:
        return new SentSnap(s, s1, l, l1, i, clientsnapstatus, s3);
_L4:
        if (flag5)
        {
            com.snapchat.android.model.Snap.ClientSnapStatus clientsnapstatus1 = com.snapchat.android.model.Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED;
            if (clientsnapstatus == clientsnapstatus1)
            {
                clientsnapstatus = com.snapchat.android.model.Snap.ClientSnapStatus.SENT_AND_REPLAYED_AND_SCREENSHOTTED;
            } else
            {
                clientsnapstatus = com.snapchat.android.model.Snap.ClientSnapStatus.SENT_AND_REPLAYED;
            }
        }
        if (true) goto _L5; else goto _L2
_L2:
        return null;
    }

    public static StoryCollection a(StoriesListItem storieslistitem)
    {
        if (storieslistitem instanceof RecentStoryCollection)
        {
            return (StoryCollection)storieslistitem;
        }
        if (storieslistitem instanceof Friend)
        {
            return StoryLibrary.a().c(storieslistitem.a());
        }
        if (storieslistitem instanceof StoryGroupStoriesListItem)
        {
            StoryGroupStoriesListItem storygroupstorieslistitem = (StoryGroupStoriesListItem)storieslistitem;
            return StoryLibrary.a().b(storygroupstorieslistitem.d());
        } else
        {
            return null;
        }
    }

    public static StorySnap a(String s)
    {
        if (User.c() == null)
        {
            return null;
        }
        Iterator iterator = StoryLibrary.a().m().iterator();
        StorySnap storysnap;
label0:
        do
        {
            if (iterator.hasNext())
            {
                Iterator iterator1 = ((StoryCollection)iterator.next()).m().iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        continue label0;
                    }
                    storysnap = (StorySnap)iterator1.next();
                } while (!storysnap.d().equals(s));
                break;
            } else
            {
                return null;
            }
        } while (true);
        return storysnap;
    }

    protected static String a(String s, String s1)
    {
        if (s != null && !TextUtils.isEmpty(s1) && s.endsWith(s1.toUpperCase(Locale.US)))
        {
            s = s.substring(0, s.lastIndexOf(s1.toUpperCase(Locale.US)));
        }
        return s;
    }

    public static ArrayList a(List list, String s)
    {
        ArrayList arraylist = new ArrayList(list.size());
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new StorySnapLogbook((AnnotatedMediabryo)iterator.next()))) { }
        return arraylist;
    }

    public static void a()
    {
        Iterator iterator = ChatConversationManager.a().d().iterator();
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        List list = ((ChatConversation)iterator.next()).t();
        list;
        JVM INSTR monitorenter ;
        Iterator iterator1 = list.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator1.next();
            if ((chatfeeditem instanceof ReceivedSnap) && ((ReceivedSnap)chatfeeditem).G() && (((ReceivedSnap)chatfeeditem).au() || ((ReceivedSnap)chatfeeditem).y()))
            {
                ((ReceivedSnap)chatfeeditem).r();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_120;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(ReceivedSnap receivedsnap)
    {
        Iterator iterator = ChatConversationManager.a().d().iterator();
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        List list = ((ChatConversation)iterator.next()).t();
        list;
        JVM INSTR monitorenter ;
        Iterator iterator1 = list.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator1.next();
            if (chatfeeditem instanceof ReceivedSnap)
            {
                ReceivedSnap receivedsnap1 = (ReceivedSnap)chatfeeditem;
                if (!TextUtils.equals(receivedsnap1.l(), receivedsnap.l()) && receivedsnap1.au() && receivedsnap1.F())
                {
                    receivedsnap1.r();
                }
            }
        } while (true);
        break MISSING_BLOCK_LABEL_125;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(StorySnap storysnap)
    {
        Map map = User.c().e();
        int i;
        if (storysnap.H())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        map.put(storysnap.d(), new StoryViewRecord(storysnap.d(), storysnap.L(), i));
    }

    public static void a(StoryViewRecord storyviewrecord)
    {
        User.c().e().put(storyviewrecord.a(), storyviewrecord);
    }

    public static boolean a(Mediabryo mediabryo)
    {
        int i = mediabryo.b();
        return i == 1 || i == 2;
    }

    public static int b(ReceivedSnap receivedsnap)
    {
        return 1000 * (int)(receivedsnap.M() - receivedsnap.N());
    }

    private static com.snapchat.android.model.Snap.ClientSnapStatus b(int i)
    {
        switch (i)
        {
        default:
            return com.snapchat.android.model.Snap.ClientSnapStatus.SENT_AND_OPENED;

        case 0: // '\0'
            return com.snapchat.android.model.Snap.ClientSnapStatus.SENT;

        case 1: // '\001'
            return com.snapchat.android.model.Snap.ClientSnapStatus.DELIVERED;

        case 2: // '\002'
            return com.snapchat.android.model.Snap.ClientSnapStatus.SENT_AND_OPENED;

        case 3: // '\003'
            return com.snapchat.android.model.Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED;
        }
    }

    public static String b(String s)
    {
        if (s.charAt(-1 + s.length()) == 'r' || s.charAt(-1 + s.length()) == 's')
        {
            s = s.substring(0, -1 + s.length());
        }
        return s;
    }

    public static void b()
    {
        Iterator iterator = ChatConversationManager.a().d().iterator();
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        List list = ((ChatConversation)iterator.next()).t();
        list;
        JVM INSTR monitorenter ;
        Iterator iterator1 = list.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator1.next();
            if ((chatfeeditem instanceof ReceivedSnap) && ((ReceivedSnap)chatfeeditem).au())
            {
                ((ReceivedSnap)chatfeeditem).r();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_98;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
