// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.SortableMetadataField;
import com.google.android.gms.drive.metadata.internal.b;
import com.google.android.gms.drive.metadata.internal.g;
import com.google.android.gms.drive.metadata.internal.i;
import com.google.android.gms.drive.metadata.internal.j;
import com.google.android.gms.drive.metadata.internal.k;
import com.google.android.gms.drive.metadata.internal.l;
import com.google.android.gms.drive.metadata.internal.m;
import java.util.Collection;
import java.util.Collections;

// Referenced classes of package com.google.android.gms.internal:
//            mj, mh

public class mg
{
    public static class a extends mh
        implements SearchableMetadataField
    {

        public a(int i)
        {
            super(i);
        }
    }

    public static class b extends com.google.android.gms.drive.metadata.internal.b
        implements SearchableMetadataField
    {

        public b(String s, int i)
        {
            super(s, i);
        }
    }

    public static class c extends l
        implements SearchableMetadataField
    {

        public c(String s, int i)
        {
            super(s, i);
        }
    }

    public static class d extends i
        implements SearchableCollectionMetadataField
    {

        public d(String s, int j)
        {
            super(s, j);
        }
    }

    public static class e extends com.google.android.gms.drive.metadata.internal.g
        implements SortableMetadataField
    {

        public e(String s, int i)
        {
            super(s, i);
        }
    }

    public static class f extends com.google.android.gms.drive.metadata.internal.b
        implements SearchableMetadataField
    {

        public f(String s, int i)
        {
            super(s, i);
        }
    }

    public static class g extends l
        implements SearchableMetadataField, SortableMetadataField
    {

        public g(String s, int i)
        {
            super(s, i);
        }
    }

    public static class h extends com.google.android.gms.drive.metadata.internal.b
        implements SearchableMetadataField
    {

        protected Object c(DataHolder dataholder, int i, int j)
        {
            return e(dataholder, i, j);
        }

        protected Boolean e(DataHolder dataholder, int i, int j)
        {
            boolean flag;
            if (dataholder.b(getName(), i, j) != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return Boolean.valueOf(flag);
        }

        public h(String s, int i)
        {
            super(s, i);
        }
    }


    public static final MetadataField YA = new l("alternateLink", 0x419ce0);
    public static final a YB = new a(0x4c4b40);
    public static final MetadataField YC = new l("description", 0x419ce0);
    public static final MetadataField YD = new l("embedLink", 0x419ce0);
    public static final MetadataField YE = new l("fileExtension", 0x419ce0);
    public static final MetadataField YF = new com.google.android.gms.drive.metadata.internal.g("fileSize", 0x419ce0);
    public static final MetadataField YG = new com.google.android.gms.drive.metadata.internal.b("hasThumbnail", 0x419ce0);
    public static final MetadataField YH = new l("indexableText", 0x419ce0);
    public static final MetadataField YI = new com.google.android.gms.drive.metadata.internal.b("isAppData", 0x419ce0);
    public static final MetadataField YJ = new com.google.android.gms.drive.metadata.internal.b("isCopyable", 0x419ce0);
    public static final MetadataField YK = new com.google.android.gms.drive.metadata.internal.b("isEditable", 0x3e8fa0);
    public static final b YL = new b("isPinned", 0x3e8fa0);
    public static final MetadataField YM = new com.google.android.gms.drive.metadata.internal.b("isRestricted", 0x419ce0);
    public static final MetadataField YN = new com.google.android.gms.drive.metadata.internal.b("isShared", 0x419ce0);
    public static final MetadataField YO = new com.google.android.gms.drive.metadata.internal.b("isTrashable", 0x432380);
    public static final MetadataField YP = new com.google.android.gms.drive.metadata.internal.b("isViewed", 0x419ce0);
    public static final c YQ = new c("mimeType", 0x3e8fa0);
    public static final MetadataField YR = new l("originalFilename", 0x419ce0);
    public static final com.google.android.gms.drive.metadata.b YS = new k("ownerNames", 0x419ce0);
    public static final m YT = new m("lastModifyingUser", 0x5b8d80);
    public static final m YU = new m("sharingUser", 0x5b8d80);
    public static final d YV = new d("parents", 0x3e8fa0);
    public static final e YW = new e("quotaBytesUsed", 0x419ce0);
    public static final f YX = new f("starred", 0x3e8fa0);
    public static final MetadataField YY = new j("thumbnail", Collections.emptySet(), Collections.emptySet(), 0x432380) {

        protected Object c(DataHolder dataholder, int i, int i1)
        {
            return k(dataholder, i, i1);
        }

        protected com.google.android.gms.common.data.a k(DataHolder dataholder, int i, int i1)
        {
            throw new IllegalStateException("Thumbnail field is write only");
        }

    };
    public static final g YZ = new g("title", 0x3e8fa0);
    public static final MetadataField Yz;
    public static final h Za = new h("trashed", 0x3e8fa0);
    public static final MetadataField Zb = new l("webContentLink", 0x419ce0);
    public static final MetadataField Zc = new l("webViewLink", 0x419ce0);
    public static final MetadataField Zd = new l("uniqueIdentifier", 0x4c4b40);
    public static final com.google.android.gms.drive.metadata.internal.b Ze = new com.google.android.gms.drive.metadata.internal.b("writersCanShare", 0x5b8d80);
    public static final MetadataField Zf = new l("role", 0x5b8d80);

    static 
    {
        Yz = mj.Zl;
    }
}
