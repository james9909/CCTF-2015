// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.controller.SendSnapController;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.model:
//            AnnotatedMediabryo, PostToStory, StoryLibrary, StoryGroup

public class SnapWomb
{

    private static SnapWomb sInstance;
    private LinkedHashMap mFailedChatMediaSnapbryos;
    protected HashMap mFailedPostSnapbryoMaps;
    private LinkedHashMap mFailedSendSnapbryos;
    private HashMap mPostingSnapbryoMaps;
    private LinkedHashMap mSendingSnapbryos;

    protected SnapWomb()
    {
        mSendingSnapbryos = new LinkedHashMap();
        mFailedSendSnapbryos = new LinkedHashMap();
        mPostingSnapbryoMaps = new HashMap();
        mFailedPostSnapbryoMaps = new HashMap();
        mFailedChatMediaSnapbryos = new LinkedHashMap();
    }

    public static SnapWomb a()
    {
        com/snapchat/android/model/SnapWomb;
        JVM INSTR monitorenter ;
        SnapWomb snapwomb;
        if (sInstance == null)
        {
            sInstance = new SnapWomb();
        }
        snapwomb = sInstance;
        com/snapchat/android/model/SnapWomb;
        JVM INSTR monitorexit ;
        return snapwomb;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(HashMap hashmap, String s, AnnotatedMediabryo annotatedmediabryo)
    {
        LinkedHashMap linkedhashmap = (LinkedHashMap)hashmap.get(s);
        if (linkedhashmap == null)
        {
            linkedhashmap = new LinkedHashMap();
            hashmap.put(s, linkedhashmap);
        }
        linkedhashmap.put(annotatedmediabryo.N(), annotatedmediabryo);
    }

    private void a(HashMap hashmap, String s, String s1)
    {
        LinkedHashMap linkedhashmap = (LinkedHashMap)hashmap.get(s);
        if (linkedhashmap == null)
        {
            return;
        } else
        {
            linkedhashmap.remove(s1);
            return;
        }
    }

    public static void b()
    {
        com/snapchat/android/model/SnapWomb;
        JVM INSTR monitorenter ;
        sInstance = null;
        com/snapchat/android/model/SnapWomb;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void b(HashMap hashmap, String s, AnnotatedMediabryo annotatedmediabryo)
    {
        a(hashmap, s, annotatedmediabryo.N());
    }

    private LinkedHashMap e(List list)
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Collections.sort(list);
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            AnnotatedMediabryo annotatedmediabryo = (AnnotatedMediabryo)iterator.next();
            if (System.currentTimeMillis() - annotatedmediabryo.O().getTime() < 0x5265c00L && Caches.a.a(annotatedmediabryo.N()) != null)
            {
                linkedhashmap.put(annotatedmediabryo.N(), annotatedmediabryo);
            } else
            {
                d(annotatedmediabryo);
            }
        }

        return linkedhashmap;
    }

    public ArrayList a(LinkedHashMap linkedhashmap)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = linkedhashmap.values().iterator(); iterator.hasNext();)
        {
            AnnotatedMediabryo annotatedmediabryo = (AnnotatedMediabryo)iterator.next();
            if (System.currentTimeMillis() - annotatedmediabryo.O().getTime() < 0x5265c00L)
            {
                arraylist.add(annotatedmediabryo);
            } else
            {
                iterator.remove();
                d(annotatedmediabryo);
            }
        }

        return arraylist;
    }

    public LinkedHashMap a(String s)
    {
        LinkedHashMap linkedhashmap = (LinkedHashMap)mPostingSnapbryoMaps.get(s);
        if (linkedhashmap == null)
        {
            linkedhashmap = new LinkedHashMap();
        }
        return linkedhashmap;
    }

    public void a(AnnotatedMediabryo annotatedmediabryo)
    {
        Mediabryo.UploadStatus uploadstatus = annotatedmediabryo.J();
        static class _cls1
        {

            static final int $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[];
            static final int $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus[];
            static final int $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus[];

            static 
            {
                $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus = new int[Mediabryo.PostStatus.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[Mediabryo.PostStatus.POSTED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[Mediabryo.PostStatus.FAILED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[Mediabryo.PostStatus.POSTING.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[Mediabryo.PostStatus.WILL_POST_AFTER_SAVE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[Mediabryo.PostStatus.POSTING_ON_UPLOAD.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus = new int[Mediabryo.SendStatus.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus[Mediabryo.SendStatus.SENT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus[Mediabryo.SendStatus.FAILED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus[Mediabryo.SendStatus.SENDING.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus[Mediabryo.SendStatus.SENDING_ON_UPLOAD.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus = new int[Mediabryo.UploadStatus.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus[Mediabryo.UploadStatus.UPLOADED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus[Mediabryo.UploadStatus.UPLOADING.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus[Mediabryo.UploadStatus.WILL_UPLOAD_AFTER_SAVE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus[Mediabryo.UploadStatus.FAILED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror12)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.snapchat.android.model.Mediabryo.UploadStatus[uploadstatus.ordinal()];
        JVM INSTR tableswitch 1 4: default 44
    //                   1 45
    //                   2 45
    //                   3 45
    //                   4 65;
           goto _L1 _L2 _L2 _L2 _L3
_L1:
        return;
_L2:
        if (annotatedmediabryo.j())
        {
            mFailedChatMediaSnapbryos.remove(annotatedmediabryo.N());
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (annotatedmediabryo.j())
        {
            mFailedChatMediaSnapbryos.put(annotatedmediabryo.N(), annotatedmediabryo);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void a(String s, SendSnapController sendsnapcontroller)
    {
        Iterator iterator = mFailedPostSnapbryoMaps.values().iterator();
_L4:
        AnnotatedMediabryo annotatedmediabryo;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_86;
        }
        annotatedmediabryo = (AnnotatedMediabryo)((LinkedHashMap)iterator.next()).get(s);
        if (annotatedmediabryo == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        sendsnapcontroller.a(annotatedmediabryo, false, true);
        continue; /* Loop/switch isn't completed */
        Object obj;
        obj;
_L2:
        (new ErrorMetric(((Exception) (obj)).getMessage())).a(((Throwable) (obj))).c();
        continue; /* Loop/switch isn't completed */
        obj;
        if (true) goto _L2; else goto _L1
_L1:
        return;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(String s, String s1)
    {
        a(mPostingSnapbryoMaps, s, s1);
        a(mFailedPostSnapbryoMaps, s, s1);
    }

    public void a(List list)
    {
        ArrayList arraylist = new ArrayList(e(list).values());
        mFailedPostSnapbryoMaps.clear();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            AnnotatedMediabryo annotatedmediabryo = (AnnotatedMediabryo)iterator.next();
            Iterator iterator1 = annotatedmediabryo.l().iterator();
            while (iterator1.hasNext()) 
            {
                String s = ((PostToStory)iterator1.next()).c();
                LinkedHashMap linkedhashmap = (LinkedHashMap)mFailedPostSnapbryoMaps.get(s);
                if (linkedhashmap == null)
                {
                    linkedhashmap = new LinkedHashMap();
                    mFailedPostSnapbryoMaps.put(s, linkedhashmap);
                }
                linkedhashmap.put(annotatedmediabryo.N(), annotatedmediabryo);
            }
        }

    }

    public LinkedHashMap b(String s)
    {
        LinkedHashMap linkedhashmap = (LinkedHashMap)mFailedPostSnapbryoMaps.get(s);
        if (linkedhashmap == null)
        {
            linkedhashmap = new LinkedHashMap();
        }
        return linkedhashmap;
    }

    public void b(AnnotatedMediabryo annotatedmediabryo)
    {
        Mediabryo.SendStatus sendstatus = annotatedmediabryo.K();
        ConversationUtils.a(annotatedmediabryo);
        switch (_cls1..SwitchMap.com.snapchat.android.model.Mediabryo.SendStatus[sendstatus.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            mSendingSnapbryos.remove(annotatedmediabryo.N());
            return;

        case 2: // '\002'
            mSendingSnapbryos.remove(annotatedmediabryo.N());
            mFailedSendSnapbryos.put(annotatedmediabryo.N(), annotatedmediabryo);
            return;

        case 3: // '\003'
        case 4: // '\004'
            mFailedSendSnapbryos.remove(annotatedmediabryo.N());
            break;
        }
        mSendingSnapbryos.put(annotatedmediabryo.N(), annotatedmediabryo);
    }

    public void b(List list)
    {
        mFailedSendSnapbryos = e(list);
    }

    public HashMap c()
    {
        return mPostingSnapbryoMaps;
    }

    public void c(AnnotatedMediabryo annotatedmediabryo)
    {
        Mediabryo.PostStatus poststatus;
        Iterator iterator;
        ArrayList arraylist = annotatedmediabryo.l();
        poststatus = annotatedmediabryo.L();
        iterator = arraylist.iterator();
_L8:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        PostToStory posttostory;
        String s;
        AnnotatedMediabryo annotatedmediabryo1;
        posttostory = (PostToStory)iterator.next();
        s = posttostory.c();
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(posttostory);
        annotatedmediabryo1 = annotatedmediabryo.e();
        annotatedmediabryo1.a(arraylist1);
        _cls1..SwitchMap.com.snapchat.android.model.Mediabryo.PostStatus[poststatus.ordinal()];
        JVM INSTR tableswitch 1 5: default 116
    //                   1 163
    //                   2 178
    //                   3 205
    //                   4 205
    //                   5 205;
           goto _L3 _L4 _L5 _L6 _L6 _L6
_L3:
        Map map = StoryLibrary.a().l();
        if (!map.containsKey(s))
        {
            map.put(s, new StoryGroup(s, posttostory.i()));
        }
        continue; /* Loop/switch isn't completed */
_L4:
        b(mPostingSnapbryoMaps, s, annotatedmediabryo1);
        continue; /* Loop/switch isn't completed */
_L5:
        b(mPostingSnapbryoMaps, s, annotatedmediabryo1);
        a(mFailedPostSnapbryoMaps, s, annotatedmediabryo1);
        continue; /* Loop/switch isn't completed */
_L6:
        b(mFailedPostSnapbryoMaps, s, annotatedmediabryo1);
        a(mPostingSnapbryoMaps, s, annotatedmediabryo1);
        if (true) goto _L3; else goto _L2
_L2:
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void c(String s)
    {
        AnnotatedMediabryo annotatedmediabryo = (AnnotatedMediabryo)mSendingSnapbryos.remove(s);
        if (annotatedmediabryo != null)
        {
            mFailedSendSnapbryos.put(s, annotatedmediabryo);
        }
    }

    public void c(List list)
    {
        mFailedChatMediaSnapbryos = e(list);
    }

    public HashMap d()
    {
        return mFailedPostSnapbryoMaps;
    }

    public void d(AnnotatedMediabryo annotatedmediabryo)
    {
        String s = annotatedmediabryo.N();
        mSendingSnapbryos.remove(s);
        mFailedSendSnapbryos.remove(s);
        for (Iterator iterator = annotatedmediabryo.l().iterator(); iterator.hasNext(); a(((PostToStory)iterator.next()).c(), s)) { }
    }

    public void d(List list)
    {
        mSendingSnapbryos = e(list);
    }

    public ArrayList e()
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        for (Iterator iterator = mFailedPostSnapbryoMaps.values().iterator(); iterator.hasNext(); linkedhashmap.putAll((LinkedHashMap)iterator.next())) { }
        return a(linkedhashmap);
    }

    public void e(AnnotatedMediabryo annotatedmediabryo)
    {
        annotatedmediabryo.a(Mediabryo.PostStatus.FAILED);
        c(annotatedmediabryo);
    }

    public LinkedHashMap f()
    {
        return mSendingSnapbryos;
    }

    public LinkedHashMap g()
    {
        return mFailedSendSnapbryos;
    }

    public ArrayList h()
    {
        return a(mFailedSendSnapbryos);
    }

    public LinkedHashMap i()
    {
        return mFailedChatMediaSnapbryos;
    }

    public ArrayList j()
    {
        return a(mFailedChatMediaSnapbryos);
    }

    public ArrayList k()
    {
        return a(mSendingSnapbryos);
    }
}
