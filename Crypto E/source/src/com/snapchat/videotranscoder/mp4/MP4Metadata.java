// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.mp4;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.PropertyBoxParserImpl;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.ChunkOffsetBox;
import com.coremedia.iso.boxes.Container;
import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.boxes.StaticChunkOffsetBox;
import com.coremedia.iso.boxes.UserDataBox;
import com.googlecode.mp4parser.FileDataSourceImpl;
import com.googlecode.mp4parser.util.Path;
import com.snapchat.videotranscoder.utils.Utils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.snapchat.videotranscoder.mp4:
//            IsoParserProperties, SnapMetadataBox, SnapSegmentsBox, SnapSegments

public class MP4Metadata
{

    private final String a;

    public MP4Metadata(String s)
    {
        a(s);
        a = s;
    }

    private IsoFile a()
    {
        PropertyBoxParserImpl propertyboxparserimpl = new PropertyBoxParserImpl(IsoParserProperties.a());
        IsoFile isofile;
        try
        {
            isofile = new IsoFile(new FileDataSourceImpl(new File(a)), propertyboxparserimpl);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            throw new IllegalStateException("Mp4 file no longer exists", filenotfoundexception);
        }
        return isofile;
    }

    private void a(IsoFile isofile, long l)
    {
        Box box;
        LinkedList linkedlist;
        for (Iterator iterator = Path.b(isofile, "/moov[0]/trak/mdia[0]/minf[0]/stbl[0]/stco[0]").iterator(); iterator.hasNext(); box.e().a(linkedlist))
        {
            box = (Box)iterator.next();
            linkedlist = new LinkedList(box.e().a());
            linkedlist.remove(box);
            long al[] = ((ChunkOffsetBox)box).a();
            for (int i = 0; i < al.length; i++)
            {
                al[i] = l + al[i];
            }

            StaticChunkOffsetBox staticchunkoffsetbox = new StaticChunkOffsetBox();
            staticchunkoffsetbox.a(al);
            linkedlist.add(staticchunkoffsetbox);
        }

    }

    private void a(String s)
    {
        File file = new File(s);
        if (!file.exists())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("File ").append(s).append(" does not exist").toString());
        }
        if (!file.canWrite())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No write permissions to file ").append(s).toString());
        } else
        {
            return;
        }
    }

    private boolean a(IsoFile isofile)
    {
        for (Iterator iterator = isofile.a().iterator(); iterator.hasNext();)
        {
            Box box = (Box)iterator.next();
            if ("mdat".equals(box.g()))
            {
                return false;
            }
            if ("moov".equals(box.g()))
            {
                return true;
            }
        }

        throw new IllegalStateException("Missing top-level boxes");
    }

    public void a(SnapSegments snapsegments)
    {
        FileOutputStream fileoutputstream = null;
        IsoFile isofile1 = a();
        MovieBox moviebox = (MovieBox)Path.a(isofile1, "moov");
        if (moviebox != null) goto _L2; else goto _L1
_L1:
        long l1 = 0L;
        MovieBox moviebox2;
        moviebox2 = new MovieBox();
        isofile1.a(moviebox2);
        MovieBox moviebox1 = moviebox2;
_L5:
        UserDataBox userdatabox = (UserDataBox)Path.a(moviebox1, "udta");
        if (userdatabox != null)
        {
            break MISSING_BLOCK_LABEL_338;
        }
        UserDataBox userdatabox1;
        userdatabox1 = new UserDataBox();
        moviebox1.a(userdatabox1);
        UserDataBox userdatabox2 = userdatabox1;
_L8:
        SnapMetadataBox snapmetadatabox = (SnapMetadataBox)Path.a(userdatabox2, "smet");
        if (snapmetadatabox != null) goto _L4; else goto _L3
_L3:
        SnapMetadataBox snapmetadatabox1;
        snapmetadatabox1 = new SnapMetadataBox();
        userdatabox2.a(snapmetadatabox1);
        SnapMetadataBox snapmetadatabox2 = snapmetadatabox1;
_L7:
        SnapSegmentsBox snapsegmentsbox = (SnapSegmentsBox)Path.a(snapmetadatabox2, "sseg");
        if (snapsegmentsbox != null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        snapsegmentsbox = new SnapSegmentsBox();
        snapmetadatabox2.a(snapsegmentsbox);
        File file;
        FileOutputStream fileoutputstream1;
        snapsegmentsbox.a(snapsegments);
        long l2 = moviebox1.f();
        if (a(isofile1))
        {
            a(isofile1, l2 - l1);
        }
        file = File.createTempFile("modifiedMetadata", "");
        fileoutputstream1 = new FileOutputStream(file.getAbsolutePath());
        isofile1.a(fileoutputstream1.getChannel());
        fileoutputstream1.close();
        (new Utils()).b(file, new File(a));
        if (false)
        {
            null.close();
        }
        if (isofile1 != null)
        {
            isofile1.close();
        }
        return;
_L2:
        long l = moviebox.f();
        l1 = l;
        moviebox1 = moviebox;
          goto _L5
        Exception exception;
        exception;
        IsoFile isofile = null;
_L6:
        if (fileoutputstream != null)
        {
            fileoutputstream.close();
        }
        if (isofile != null)
        {
            isofile.close();
        }
        throw exception;
        exception;
        isofile = isofile1;
        fileoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        fileoutputstream = fileoutputstream1;
        isofile = isofile1;
        if (true) goto _L6; else goto _L4
_L4:
        snapmetadatabox2 = snapmetadatabox;
          goto _L7
        userdatabox2 = userdatabox;
          goto _L8
    }
}
