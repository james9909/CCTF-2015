// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import java.io.File;
import java.util.Random;

// Referenced classes of package com.snapchat.android.util.cache:
//            Storage, ExternalStorageUnavailableException

public final class CacheType extends Enum
{
    static final class FileType extends Enum
    {

        public static final FileType a;
        public static final FileType b;
        public static final FileType c;
        private static final FileType d[];

        public static FileType valueOf(String s1)
        {
            return (FileType)Enum.valueOf(com/snapchat/android/util/cache/CacheType$FileType, s1);
        }

        public static FileType[] values()
        {
            return (FileType[])d.clone();
        }

        static 
        {
            a = new FileType("VIDEO", 0);
            b = new FileType("IMAGE", 1);
            c = new FileType("DIRECTORY", 2);
            FileType afiletype[] = new FileType[3];
            afiletype[0] = a;
            afiletype[1] = b;
            afiletype[2] = c;
            d = afiletype;
        }

        private FileType(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    static final class StorageLocation extends Enum
    {

        public static final StorageLocation a;
        public static final StorageLocation b;
        public static final StorageLocation c;
        public static final StorageLocation d;
        private static final StorageLocation e[];

        public static StorageLocation valueOf(String s1)
        {
            return (StorageLocation)Enum.valueOf(com/snapchat/android/util/cache/CacheType$StorageLocation, s1);
        }

        public static StorageLocation[] values()
        {
            return (StorageLocation[])e.clone();
        }

        static 
        {
            a = new StorageLocation("EXTERNAL_ONLY", 0);
            b = new StorageLocation("EXTERNAL_PREFERRED", 1);
            c = new StorageLocation("INTERNAL", 2);
            d = new StorageLocation("INTERNAL_PREFERRED", 3);
            StorageLocation astoragelocation[] = new StorageLocation[4];
            astoragelocation[0] = a;
            astoragelocation[1] = b;
            astoragelocation[2] = c;
            astoragelocation[3] = d;
            e = astoragelocation;
        }

        private StorageLocation(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    public static final CacheType a;
    public static final CacheType b;
    public static final CacheType c;
    public static final CacheType d;
    public static final CacheType e;
    public static final CacheType f;
    public static final CacheType g;
    public static final CacheType h;
    public static final CacheType i;
    public static final CacheType j;
    public static final CacheType k;
    public static final CacheType l;
    public static final CacheType m;
    public static final CacheType n;
    public static final CacheType o;
    private static final CacheType s[];
    private final String p;
    private final StorageLocation q;
    private final FileType r;

    private CacheType(String s1, int i1, String s2, StorageLocation storagelocation, FileType filetype)
    {
        super(s1, i1);
        p = s2;
        q = storagelocation;
        r = filetype;
    }

    private File c()
    {
        if (q == StorageLocation.a)
        {
            if (Storage.b() == null)
            {
                throw new ExternalStorageUnavailableException("Well, this is awkward.");
            } else
            {
                return Storage.b();
            }
        }
        if (q == StorageLocation.b && Storage.b() != null || q == StorageLocation.d && Storage.a() == null)
        {
            return Storage.b();
        } else
        {
            return Storage.a();
        }
    }

    public static CacheType valueOf(String s1)
    {
        return (CacheType)Enum.valueOf(com/snapchat/android/util/cache/CacheType, s1);
    }

    public static CacheType[] values()
    {
        return (CacheType[])s.clone();
    }

    public String a()
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[FileType.values().length];
                try
                {
                    a[FileType.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[FileType.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[FileType.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[r.ordinal()])
        {
        default:
            return (new StringBuilder()).append("y78soep3m2n").append((new Random()).nextLong()).toString();

        case 1: // '\001'
            return (new StringBuilder()).append("sesrh_dlw21").append((new Random()).nextLong()).append(".mp4.nomedia").toString();

        case 2: // '\002'
            return (new StringBuilder()).append("h1a81hurcs00h").append((new Random()).nextLong()).append(".jpg.nomedia").toString();
        }
    }

    public File b()
    {
        File file = c();
        if (file == null)
        {
            throw new NullPointerException();
        } else
        {
            return new File((new StringBuilder()).append(file.getAbsolutePath()).append(p).toString());
        }
    }

    static 
    {
        a = new CacheType("STORIES_RECEIVED_THUMBNAIL", 0, "/stories/received/thumbnail/", StorageLocation.c, FileType.b);
        b = new CacheType("STORIES_RECEIVED_IMAGE", 1, "/stories/received/image/", StorageLocation.b, FileType.b);
        c = new CacheType("STORIES_RECEIVED_VIDEO", 2, "/stories/received/video/", StorageLocation.a, FileType.a);
        d = new CacheType("SNAPS_RECEIVED_IMAGE", 3, "/received_image_snaps/", StorageLocation.c, FileType.b);
        e = new CacheType("SNAPS_RECEIVED_VIDEO", 4, "/received_video_snaps/", StorageLocation.a, FileType.a);
        f = new CacheType("CHAT_MEDIA_RECEIVED_IMAGE", 5, "/chat/received/image/", StorageLocation.b, FileType.b);
        StorageLocation storagelocation;
        StorageLocation storagelocation1;
        CacheType acachetype[];
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            storagelocation = StorageLocation.a;
        } else
        {
            storagelocation = StorageLocation.c;
        }
        g = new CacheType("UNENCRYPTED_VIDEOS", 6, "/uv/", storagelocation, FileType.a);
        h = new CacheType("MY_MEDIA", 7, "/my_media/", StorageLocation.b, FileType.a);
        i = new CacheType("SNAPS_TO_SEND_IMAGE", 8, "/snaps/tosend/image/", StorageLocation.d, FileType.b);
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            storagelocation1 = StorageLocation.b;
        } else
        {
            storagelocation1 = StorageLocation.d;
        }
        j = new CacheType("SNAPS_TO_SEND_VIDEO", 9, "/snaps/tosend/video/", storagelocation1, FileType.a);
        k = new CacheType("GEOFILTERS_MEDIA", 10, "/geofilters/", StorageLocation.c, FileType.b);
        l = new CacheType("DISCOVER_INTRO_VIDEOS", 11, "/discover/intro_videos/", StorageLocation.a, FileType.a);
        m = new CacheType("DISCOVER_EDITIONS_CHUNKS", 12, "/discover/edition_chunks/", StorageLocation.a, FileType.c);
        n = new CacheType("DISCOVER_PUBLISHER_ICONS", 13, "/discover/icons/", StorageLocation.c, FileType.b);
        o = new CacheType("PROFILE_IMAGE", 14, "/profile/image/", StorageLocation.c, FileType.b);
        acachetype = new CacheType[15];
        acachetype[0] = a;
        acachetype[1] = b;
        acachetype[2] = c;
        acachetype[3] = d;
        acachetype[4] = e;
        acachetype[5] = f;
        acachetype[6] = g;
        acachetype[7] = h;
        acachetype[8] = i;
        acachetype[9] = j;
        acachetype[10] = k;
        acachetype[11] = l;
        acachetype[12] = m;
        acachetype[13] = n;
        acachetype[14] = o;
        s = acachetype;
    }
}
